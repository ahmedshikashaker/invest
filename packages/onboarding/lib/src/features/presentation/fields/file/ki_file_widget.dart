import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/data/extensions/file_field_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';

import '../../../../config/end_points/onboarding_steps_end_points.dart';

class KiFileWidget extends StatelessWidget {
  final FileField field;

  const KiFileWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    return ValueListenableBuilder<({dynamic answer, String? error})>(
      valueListenable: cubit.selectFieldState(field.id),
      builder: (context, value, child) {
        print(value.answer.toString());
        return KIUploadCard(
          cardTitle: field.title,
          cardDescription: field.description,
          iconWidget: field.icon != null
              ? OptimizedNetworkSvgIcon(
                  url:
                      "${OnboardingStepsEndpoints.getIconEndPoint}${field.icon?.id}",
                  color: AppColorsData.azure[500]!,
                  size: 19,
                )
              : null,
          backgroundColor: context.colors.kiWhite,
          cardPadding: AppEdgeInsets.none(),
          uploadCardPadding:
              field.title != null ? AppEdgeInsets.m() : AppEdgeInsets.xs(),
          sectionPadding: value.answer == null
              ? null
              : field.title != null
                  ? AppEdgeInsets.only(top: AppGapSize.xs)
                  : AppEdgeInsets.none(),
          fileBorder: value.answer == null
              ? Border.all(color: context.colors.kiBackground, width: 1)
              : null,
          cardBorder: Border.all(color: context.colors.kiBackground, width: 2),
          allowedExtensions: field.getValidationMimeType(),
          errorMessageFileExtension: value.error,
          errorMessageFileMaxSize: value.error,
          maxFileSize: field.getValidationMaxSize(),
          uploadMessage: context.boardingLocal.uploadTheFile,
          mimeDescripation: field.getMimeTypeDescriptions() +
              " / " +
              field.getMaxSizeDescriptions(context),
          menuPhotoGalleryTitle:
              context.boardingLocal.uploadComponentOptionGallery,
          menuCameraTitle: context.boardingLocal.uploadComponentOptionCamera,
          menufilesTitle: context.boardingLocal.uploadComponentOptionFile,
          photoPermissionNotGrantedMessage:
              context.boardingLocal.pleaseEnablePhotoPermission,
          camerPermissionNotGrantedMessage:
              context.boardingLocal.pleaseEnableCameraPermission,
          fileInfo: value.answer,
          onPickFile: (FilePickerResult? fileResult) {
            if (fileResult != null) {
              cubit.uploadFile(field.id, fileResult);
            } else {
              cubit.updateAnswer(field.id, null);
            }
          },
        );
      },
    );
  }
}
