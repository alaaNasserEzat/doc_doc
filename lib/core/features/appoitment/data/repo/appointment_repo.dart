import 'package:dart_either/dart_either.dart';
import 'package:doc_doc/core/features/appoitment/data/data_source/appoitment_remote_data_source/appoitment_remote_data_source.dart';
import 'package:doc_doc/core/features/appoitment/data/models/appointment_reponse.dart';
import 'package:doc_doc/core/features/appoitment/data/models/appointment_request_body.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';
import 'package:doc_doc/core/networking/errors/server_exception.dart';

class AppointmentRepo {
  final AppoitmentRemoteDataSource appoitmentRemoteDataSource;

  AppointmentRepo({required this.appoitmentRemoteDataSource});

  Future<Either<ErrorModel, AppointmentResponse>> bookAppointment(
    AppointmentRequestBody appointmentRequestBody,
  ) async {
    try {
      final res = await appoitmentRemoteDataSource.bookAppointment(
        appointmentRequestBody,
      );
      return Right(res);
    } on ServerException catch (e) {
      return Left(getErrorModel(e.errorModel));
    }
  }
}
