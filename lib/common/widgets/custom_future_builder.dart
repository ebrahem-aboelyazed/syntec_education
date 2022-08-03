import 'package:education/common/widgets/empty_view.dart';
import 'package:education/common/widgets/loading_views.dart';
import 'package:flutter/material.dart';

class CustomFutureBuilder<T> extends StatelessWidget {
  const CustomFutureBuilder({
    required this.future,
    required this.onSuccess,
    this.onLoading,
    this.onEmpty,
    this.onError,
    super.key,
  });

  final Future<T> future;
  final Widget Function(AsyncSnapshot<T> snapshot) onSuccess;
  final Widget Function(String? error)? onError;
  final Widget? onLoading;
  final Widget? onEmpty;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return onError != null
                ? onError!(snapshot.error.toString())
                : Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.hasData) {
            if (snapshot.data is List) {
              if ((snapshot.data as List?)!.isNotEmpty) {
                return onSuccess(snapshot);
              } else {
                return onEmpty != null ? onEmpty! : const EmptyView();
              }
            } else {
              return onSuccess(snapshot);
            }
          } else {
            return onEmpty != null ? onEmpty! : const EmptyView();
          }
        } else {
          return onLoading != null ? onLoading! : const FoldingCubeLoading();
        }
      },
    );
  }
}
