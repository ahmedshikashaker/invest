import 'package:common_dependencies/common_dependencies.dart';
import 'package:notification/src/config/end_points/notification_end_points.dart';
import 'package:notification/src/features/data/models/notification_response.dart';
import 'package:notification/src/features/data/models/notification_status_request.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_service.g.dart';

@RestApi()
@injectable
abstract class NotificationService {
  @factoryMethod
  factory NotificationService(Dio dio) = _NotificationService;

  @GET(NotificationEndPoints.notificationMessages)
  Future<NotificationsResponse> getNotificationData(
    @Query("pageNumber") int? pageNumber,
    @Query("pageSize") int? pageSize,
  );

  @PATCH(NotificationEndPoints.updateNotificationsStatusEndPoint)
  Future<void> updateNotificationStatus(
    @Body() NotificationStatusRequest request,
    @Path("id") String id,
  );
}
