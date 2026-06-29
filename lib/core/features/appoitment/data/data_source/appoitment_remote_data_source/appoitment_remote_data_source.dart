import 'package:doc_doc/core/features/appoitment/data/models/appointment_reponse.dart';
import 'package:doc_doc/core/features/appoitment/data/models/appointment_request_body.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/api_constants.dart';

class AppoitmentRemoteDataSource {
  final ApiConcumer apiConcumer;

  AppoitmentRemoteDataSource({required this.apiConcumer});

  Future<AppointmentResponse> bookAppointment(
    AppointmentRequestBody appointmentRequestBody,
  ) async {
    final res = await apiConcumer.post(
      ApiConstants.storeAppointment,
      data: appointmentRequestBody.toJson(),
    );
    return AppointmentResponse.fromJson(res);
  }
}
