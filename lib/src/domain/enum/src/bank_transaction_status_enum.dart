import 'package:json_annotation/json_annotation.dart';

enum BankTransactionStatusEnum {
  @JsonValue(0)
  success,
  @JsonValue(1)
  pending,
  @JsonValue(2)
  verifyOtp,
  @JsonValue(3)
  verifyOtpFail,
  @JsonValue(4)
  cancelled;
}
