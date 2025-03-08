import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/widgets/uploader/file_uploader_v2.dart';
import 'package:kib_core/kib_core.dart';

import 'heading_widget.dart';

@immutable
class KIUploadCard extends StatelessWidget {
  KIUploadCard({
    this.fileBorder,
    this.cardBorder,
    this.spacingDetails,
    this.iconSize,
    this.backgroundColor,
    this.iconColor,
    this.icon,
    this.iconWidget,
    this.padding,
    this.titleStyle,
    this.descriptionStyle,
    this.cardTitle,
    this.cardDescription,
    this.fileTitle,
    this.fileInfo,
    required this.uploadMessage,
    this.fileUploaderColor,
    required this.mimeDescripation,
    this.pickFileDrawerTitle,
    this.type = FileUploaderV2Type.small,
    this.allowedExtensions = allowedFile,
    required this.menuCameraTitle,
    required this.menuPhotoGalleryTitle,
    required this.menufilesTitle,
    this.infoWidget,
    this.maxFileSize,
    this.actions,
    this.preview,
    this.showCloseIcon = true,
    this.camerPermissionNotGrantedMessage,
    this.photoPermissionNotGrantedMessage,
    required this.onPickFile,
    this.onConfirmDeleting,
    this.uploadCardPadding,
    this.sectionPadding,
    this.filePadding,
    this.cardPadding,
    this.infoPadding,
    this.borderRadius,
    this.errorMessageFileMaxSize,
    this.errorMessageFileExtension,
  });

  /// The file border of the UploadCard.
  final Border? fileBorder;

  /// The card border of the UploadCard.
  final Border? cardBorder;

  /// The size value of the UploadCard icon.
  final double? iconSize;

  /// The color of the UploadCard icon.
  final Color? iconColor;

  /// The icon path of the UploadCard icon.
  final SvgGenImage? icon;

  /// The icon widget of the UploadCard icon.
  final Widget? iconWidget;

  /// The padding of the UploadCard.
  final EdgeInsetsGeometry? padding;

  /// The title style of the UploadCard.
  final AppTextStyle? titleStyle;

  /// The description style of the UploadCard.
  final AppTextStyle? descriptionStyle;

  /// The title of the UploadCard.
  final String? cardTitle;

  /// The description of the UploadCard.
  final String? cardDescription;

  final String? fileTitle;
  final FileInfo? fileInfo;
  final String uploadMessage;
  final Color? fileUploaderColor;
  final Color? backgroundColor;
  final String mimeDescripation;
  final String? pickFileDrawerTitle;
  final FileUploaderV2Type type;
  final List<String>? allowedExtensions;
  final String menuCameraTitle;
  final String menuPhotoGalleryTitle;
  final String menufilesTitle;
  final Widget? infoWidget;
  final int? maxFileSize;
  final Widget? actions;
  final Widget? preview;
  final bool? showCloseIcon;
  final String? camerPermissionNotGrantedMessage;
  final String? photoPermissionNotGrantedMessage;
  final Function(FilePickerResult? fileResult) onPickFile;
  final Function()? onConfirmDeleting;
  final AppEdgeInsets? sectionPadding;
  final AppEdgeInsets? uploadCardPadding;
  final AppEdgeInsets? filePadding;
  final AppEdgeInsets? cardPadding;
  final AppEdgeInsets? infoPadding;
  final String? errorMessageFileMaxSize;
  final String? errorMessageFileExtension;
  final double? spacingDetails;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    final Border? effectiveFileBorder =
        fileBorder ?? context.uploadCardTheme.properties.fileBorder;

    final Border? effectiveCardBorder =
        cardBorder ?? context.uploadCardTheme.properties.cardBorder;

    final double effectiveSpacing =
        spacingDetails ?? context.uploadCardTheme.properties.spacing;

    final Color effectiveFileUploaderColor =
        fileUploaderColor ?? context.uploadCardTheme.tokens.colors.surface;

    final Color effectiveBackgroundColor =
        backgroundColor ?? context.uploadCardTheme.colors.backgroundColor;

    final bool effectiveShowCloseIcon =
        showCloseIcon ?? context.uploadCardTheme.properties.showCloseIcon;

    final AppEdgeInsets effectiveSectionPadding =
        sectionPadding ?? context.uploadCardTheme.properties.sectionPadding;

    final AppEdgeInsets effectiveUploadCardPadding = uploadCardPadding ??
        context.uploadCardTheme.properties.uploadCardPadding;

    final AppEdgeInsets effectiveFilePadding =
        filePadding ?? context.uploadCardTheme.properties.filePadding;

    final AppEdgeInsets effectiveCardPadding =
        cardPadding ?? context.uploadCardTheme.properties.cardPadding;

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? context.uploadCardTheme.properties.borderRadius;

    return AppContainer(
      padding: effectiveUploadCardPadding,
      decoration: BoxDecoration(
        color: effectiveBackgroundColor,
        borderRadius: effectiveBorderRadius,
        border: effectiveCardBorder,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: effectiveSpacing,
        children: [
          HeadingWidget(
            cardTitle: cardTitle,
            cardDescription: cardDescription,
            iconColor: iconColor,
            iconWidget: iconWidget,
            icon: icon,
            titleStyle: titleStyle,
            descriptionStyle: descriptionStyle,
          ),
          AppContainer(
            decoration: BoxDecoration(
              color: effectiveBackgroundColor,
              border: effectiveFileBorder,
              borderRadius: effectiveBorderRadius,
            ),
            padding: effectiveCardPadding,
            child: AppFileUploaderV2(
              title: fileTitle,
              fileInfo: fileInfo,
              uploadMessage: uploadMessage,
              fileUploaderColor: effectiveFileUploaderColor,
              mimeDescripation: mimeDescripation,
              pickFileDrawerTitle: pickFileDrawerTitle,
              type: type,
              allowedExtensions: allowedExtensions,
              menuCameraTitle: menuCameraTitle,
              menuPhotoGalleryTitle: menuPhotoGalleryTitle,
              menufilesTitle: menufilesTitle,
              maxFileSize: maxFileSize,
              actions: actions,
              preview: preview,
              showCloseIcon: effectiveShowCloseIcon,
              border: effectiveFileBorder,
              camerPermissionNotGrantedMessage:
                  camerPermissionNotGrantedMessage,
              photoPermissionNotGrantedMessage:
                  photoPermissionNotGrantedMessage,
              onPickFile: onPickFile,
              sectionPadding: effectiveSectionPadding,
              filePadding: effectiveFilePadding,
              errorMessageFileMaxSize: errorMessageFileMaxSize,
              errorMessageFileExtension: errorMessageFileExtension,
              onConfirmDeleting: onConfirmDeleting != null
                  ? () async => await onConfirmDeleting!()
                  : null,
            ),
          ),
          if (infoWidget != null) infoWidget!,
        ],
      ),
    );
  }
}
