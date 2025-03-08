import 'dart:async';

import 'package:collection/collection.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:notification/src/features/data/models/notification_pagination.dart';
import 'package:notification/src/features/data/models/notification_response.dart';
import 'package:notification/src/features/domain/notification_status_usecase.dart';
import 'package:notification/src/features/domain/notification_usecase.dart';
import 'package:notification/src/features/presentation/notifications_list/cubit/notification_state.dart';

@injectable
class NotificationCubit extends Cubit<NotificationState>
    with InitiateListenerDelayMixin {
  NotificationCubit(
    this._notificationUseCase,
    this._notificationStatusUseCase,
  ) : super(const NotificationState.initial());

  // ******************** Use cases ********************
  final NotificationUseCase _notificationUseCase;
  final NotificationStatusUseCase _notificationStatusUseCase;

  // ******************** Variables  ********************
  List<NotificationModel> _notifications = [];
  NotificationPagination _query = const NotificationPagination();

  // ******************** Getters ********************
  List<NotificationModel> get notifications => _notifications;
  NotificationPagination get paging => _query;
  // ******************** Helpers ********************
  bool get isLoadingMoreNotifications =>
      state.maybeMap(loadMoreNotifications: (_) => true, orElse: () => false);

  bool get isLoadingNotifications =>
      state.maybeMap(loading: (_) => true, orElse: () => false);

  void _setupNotificationsQuery(bool paging) => _query = _query.copyWith(
        pageNumber: paging ? _query.pageNumber + 1 : 1,
      );

  Future<void> _emitNotificationsLoading(bool paging, bool isRefresh) async {
    if (isRefresh) {
      emit(const NotificationState.refreshLoading());
    } else {
      if (paging) {
        emit(const NotificationState.loadMoreNotifications());
      } else {
        await listenerDelay;
        emit(const NotificationState.loading());
      }
    }
  }

  // ******************** API Call ********************

  Future<void> getNotifications({
    bool isRefresh = false,
    bool paging = false,
  }) async {
    if (isLoadingMoreNotifications) return;
    _setupNotificationsQuery(paging);
    await _emitNotificationsLoading(paging, isRefresh);
    final response = await _notificationUseCase(_query);
    response.fold(
      (appExceptions) => paging
          ? emit(NotificationState.minorError(appExceptions))
          : emit(NotificationState.error(appExceptions.message ?? '')),
      (response) {
        _notifications = paging
            ? [..._notifications, ...response.data ?? []]
            : response.data ?? [];
        _query = _query.copyWith(
          totalPages: response.totalPages,
        );
        emit(NotificationState.notificationsLoaded(_notifications));
      },
    );
  }

  Future<void> updateNotificationStatus(String? id) async {
    emit(const NotificationState.overlayLoading());
    final response = await _notificationStatusUseCase(id ?? '');
    response.fold(
      (appExceptions) =>
          emit(NotificationState.error(appExceptions.message ?? '')),
      (response) {
        _notifications
            .firstWhereOrNull((notification) => notification.id == id)
            ?.status = Status.read;
        emit(const NotificationState.notificationStatusUpdated());
      },
    );
  }
}
