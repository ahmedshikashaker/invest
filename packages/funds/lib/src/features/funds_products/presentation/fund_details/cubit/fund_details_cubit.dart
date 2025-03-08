import 'package:funds/src/features/funds_products/data/models/fund_details_response.dart';
import 'package:funds/src/features/funds_products/domain/get_fund_details_usecase.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'fund_details_state.dart';

@injectable
class FundDetailsCubit extends Cubit<FundDetailsState> {
  final GetFundDetailsUseCase _fundDetailsUseCase;

  FundDetailsCubit(this._fundDetailsUseCase)
      : super(const FundDetailsState.initial());

  FundDetailsResponse? _fundDetailsResponse;

  FundDetailsResponse? get fundDetailsResponse => _fundDetailsResponse;

  void setFundDetailsResponse(FundDetailsResponse fundDetailsResponse) =>
      _fundDetailsResponse = fundDetailsResponse;

  Future<void> getFundDetails(String id) async {

    await Future.delayed(Duration(microseconds: 10));
    emit(FundDetailsState.loading());
    final response = await _fundDetailsUseCase.call(id);
    response.fold(
      (error) => emit(FundDetailsState.error(error)),
      (details) {
        _fundDetailsResponse = details?.data;
        emit(FundDetailsState.detailsLoaded());
      },
    );
  }
}
