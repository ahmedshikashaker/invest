import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';
import 'package:onboarding/src/features/data/extensions/file_name_extensions.dart';
import 'package:onboarding/src/features/data/extensions/file_value_extensions.dart';

import '../models/get_step_details_request.dart';
import '../models/step.dart';
import '../remote/sources/step_remote_data_source.dart';
import 'step_repository.dart';
import 'package:kib_design_system/kib_design_system.dart';

@Injectable(as: StepRepository)
class StepRepositoryImpl extends StepRepository {
  final StepRemoteDataSource _remoteDataSource;

  StepRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<Either<AppExceptions, Step>> getStepDetails({

    required GetStepDetailsRequest getStepDetailsRequest,
  }) async {
    try {
      final result = await _remoteDataSource.getStepDetails(
          getStepDetailsRequest: getStepDetailsRequest);
      final jsonResult= {
        "id": "STEP_FINANCIAL_PROFILE",
        "stepLabel": "Step 2/6",
        "title": "Financial profile",
        "currentSectionId": "section-wealth-info",
        "sections": [
          {
            "id": "section-wealth-info",
            "title": "Net worth and wealth information",
            "progressBar": {
              "percentage": 20,
              "label": "1 of 5"
            },
            "groups": [
              {
                "id": "group-id",
                "title": "What is your average net worth value ?",
                "fields": [
                  {
                    "id": "average-net-worth-value",
                    "type": "RADIO_GROUP",
                    "options": [
                      {
                        "value": "below-100k",
                        "label": "Below than KD 100K"
                      },
                      {
                        "value": "100k-500k",
                        "label": "KD 100K - KD 500K"
                      },
                      {
                        "value": "500k-1m",
                        "label": "KD 500K - KD 1M"
                      },
                      {
                        "value": "1m-5m",
                        "label": "KD 1M - KD 5M"
                      },
                      {
                        "value": "above-5m",
                        "label": "More than KD 5 million"
                      }
                    ],
                    "value": "below-100k"
                  }
                ]
              },
              {
                "id": "group-id",
                "title": "What is your source of wealth?",
                "fields": [
                  {
                    "id": "source-of-wealth",
                    "type": "CHECKBOX_GROUP",
                    "options": [
                      {
                        "value": "savings",
                        "label": "Savings"
                      },
                      {
                        "value": "investment",
                        "label": "Investment"
                      },
                      {
                        "value": "inheritance",
                        "label": "Inheritance"
                      },
                      {
                        "value": "other",
                        "label": "Other",
                        "fields": [
                          {
                            "id": "other-source-of-wealth",
                            "type": "TEXT",
                            "placeholder": "Enter other source of wealth",
                            "value": "business"
                          }
                        ]
                      }
                    ],
                    "value": []
                  }
                ]
              }
            ]
          },

        ]
      };
      final Step fixedStep = Step.fromJson(jsonResult);
      return right(result.data);
    } on Exception catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<AppExceptions, FileInfo>> uploadFile(
      {required FilePickerResult file, required String fileName}) async {
    try {
      final bytes = await file.xFiles.first.readAsBytes();
      final result = await _remoteDataSource.uploadFile(
          file: bytes, filename: "$fileName.${file.getFileExtension()}");
      return right(result.data.getFileInfo());
    } on Exception catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
