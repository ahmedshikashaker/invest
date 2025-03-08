import 'package:common_dependencies/common_dependencies.dart';
import 'package:notification/src/features/data/models/notification_response.dart';

part 'notification_status_request.g.dart';

@JsonSerializable(createFactory: false)
class NotificationStatusRequest {
  Status status;

  NotificationStatusRequest({this.status = Status.read});

  Map<String, dynamic> toJson() => _$NotificationStatusRequestToJson(this);
}
