import 'package:flutter/foundation.dart';

extension ValueNotifierSelector<T> on ValueNotifier<T> {
  ValueListenable<R> select<R>(R Function(T) selector) {
    return _SelectorValueNotifier<T, R>(this, selector);
  }
}

class _SelectorValueNotifier<T, R> extends ValueListenable<R> {
  final ValueListenable<T> _source;
  final R Function(T) _selector;
  late R _lastValue;
  final _listeners = <VoidCallback>{};

  _SelectorValueNotifier(this._source, this._selector) {
    _lastValue = _selector(_source.value);
    _source.addListener(_checkForUpdates);
  }

  void _checkForUpdates() {
    final newValue = _selector(_source.value);
    if (newValue != _lastValue) {
      _lastValue = newValue;
      for (final listener in _listeners.toList()) {
        listener();
      }
    }
  }

  @override
  R get value => _lastValue;

  @override
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  void dispose() {
    _source.removeListener(_checkForUpdates);
    _listeners.clear();
  }
}

class MergedValueListenable<T> extends ValueListenable<T> {
  final List<ValueListenable> listenables;
  final T Function() selector;

  MergedValueListenable(this.listenables, this.selector);

  @override
  T get value => selector();

  @override
  void addListener(VoidCallback listener) {
    for (final listenable in listenables) {
      listenable.addListener(listener);
    }
  }

  @override
  void removeListener(VoidCallback listener) {
    for (final listenable in listenables) {
      listenable.removeListener(listener);
    }
  }
}

extension MergedValueListenableSelector<T> on MergedValueListenable<T> {
  ValueListenable<R> select<R>(R Function(T) selector) {
    return _SelectorValueNotifier<T, R>(this, selector);
  }
}