import 'package:common_dependencies/common_dependencies.dart';
import 'package:funds/src/features/funds_products/data/models/fund_model_response.dart';
import 'package:funds/src/features/funds_products/domain/get_funds_list_usecase.dart';
import 'funds_list_state.dart';
import 'package:invest_common/common.dart';


@injectable
class FundsListCubit extends Cubit<FundsListState> {
  final GetFundsListUseCase _getFundsListUseCase;

  FundsListCubit(this._getFundsListUseCase)
      : super(const FundsListState.initial());

  List<FundModelResponse>? fundsList;

  PagingModel? metaInfo;

  Future<void> getFundList({bool isScrolling = false}) async {

    if (isScrolling) {
      if (metaInfo?.hasNextPage == false) return;

      // Emit the state indicating that the list is being loaded for scrolling.
      emit(FundsListState.loadMore());
    } else {
      // Emit the state indicating that the list is being loaded.
      emit(FundsListState.loading());
    }

    final response = await _getFundsListUseCase(page: isScrolling ? metaInfo!.page!.toInt() + 1 : 1,size:  metaInfo?.perPage.toInt() ?? 10,);
    response.fold(
      (error) => emit(FundsListState.error(error)),
      (funds) {
        fundsList = isScrolling? [...fundsList??[], ...funds?.data??[]] : funds?.data??[];
        metaInfo = funds?.meta;
        emit(const FundsListState.fundsListLoaded());
      },
    );
  }
}

