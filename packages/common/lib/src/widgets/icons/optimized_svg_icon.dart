import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:kib_core/kib_core.dart';

class OptimizedNetworkSvgIcon extends StatelessWidget {
  final String url;
  final Color? color;
  final double size;
  final bool fromCache;

  const OptimizedNetworkSvgIcon(
      {super.key,
      required this.url,
      this.size = 24,
      this.color,
      this.fromCache = true});

  @override
  Widget build(BuildContext context) {
    final cacheManager = getIt<CacheManager>();
    return fromCache
        ? FutureBuilder<FileInfo?>(
            future: cacheManager.getFileFromCache(url),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SvgPicture.file(
                  snapshot.data!.file,
                  width: size,
                  height: size,
                  colorFilter: color != null
                      ? ColorFilter.mode(color!, BlendMode.srcIn)
                      : null,
                );
              } else {
                return _DownloadedSvgWidget(url: url, color: color, size: size);
              }
            },
          )
        : _DownloadedSvgWidget(url: url, color: color, size: size);
  }
}

class _DownloadedSvgWidget extends StatelessWidget {
  final String url;
  final Color? color;
  final double size;

  const _DownloadedSvgWidget(
      {required this.url, this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    final cacheManager = getIt<CacheManager>();

    return FutureBuilder(
      future: cacheManager.downloadFile(url),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SvgPicture.file(
            snapshot.data!.file,
            width: size,
            height: size,
            colorFilter: color != null
                ? ColorFilter.mode(color!, BlendMode.srcIn)
                : null,
          );
        } else {
          return SizedBox(
              width: size, height: size, child: CircularProgressIndicator());
        }
      },
    );
  }
}
