// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for `src/fllama.h`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class FllamaBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FllamaBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FllamaBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void fllama_inference(
    fllama_inference_request request,
    fllama_inference_callback callback,
  ) {
    return _fllama_inference(
      request,
      callback,
    );
  }

  late final _fllama_inferencePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(fllama_inference_request,
              fllama_inference_callback)>>('fllama_inference');
  late final _fllama_inference = _fllama_inferencePtr.asFunction<
      void Function(fllama_inference_request, fllama_inference_callback)>();

  void fllama_tokenize(
    fllama_tokenize_request request,
    fllama_tokenize_callback callback,
  ) {
    return _fllama_tokenize(
      request,
      callback,
    );
  }

  late final _fllama_tokenizePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(fllama_tokenize_request,
              fllama_tokenize_callback)>>('fllama_tokenize');
  late final _fllama_tokenize = _fllama_tokenizePtr.asFunction<
      void Function(fllama_tokenize_request, fllama_tokenize_callback)>();

  ffi.Pointer<ffi.Char> fflama_get_chat_template(
    ffi.Pointer<ffi.Char> fname,
  ) {
    return _fflama_get_chat_template(
      fname,
    );
  }

  late final _fflama_get_chat_templatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>)>>('fflama_get_chat_template');
  late final _fflama_get_chat_template = _fflama_get_chat_templatePtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> fflama_get_eos_token(
    ffi.Pointer<ffi.Char> fname,
  ) {
    return _fflama_get_eos_token(
      fname,
    );
  }

  late final _fflama_get_eos_tokenPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>)>>('fflama_get_eos_token');
  late final _fflama_get_eos_token = _fflama_get_eos_tokenPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();
}

final class fllama_inference_request extends ffi.Struct {
  /// Required: context size
  @ffi.Int()
  external int context_size;

  /// Required: input text
  external ffi.Pointer<ffi.Char> input;

  /// Required: max tokens to generate
  @ffi.Int()
  external int max_tokens;

  /// Required: .ggml model file path
  external ffi.Pointer<ffi.Char> model_path;

  /// Optional: .mmproj file for multimodal models.
  external ffi.Pointer<ffi.Char> model_mmproj_path;

  /// Required: number of GPU layers. 0 for CPU only. 99 for all layers. Automatically 0 on iOS simulator.
  @ffi.Int()
  external int num_gpu_layers;

  /// Optional: temperature. Defaults to 0. (llama.cpp behavior)
  @ffi.Float()
  external double temperature;

  /// Optional: 0 < top_p <= 1. Defaults to 1. (llama.cpp behavior)
  @ffi.Float()
  external double top_p;

  /// Optional: 0 <= penalty_freq <= 1. Defaults to 0.0, which means disabled. (llama.cpp behavior)
  @ffi.Float()
  external double penalty_freq;

  /// Optional: 0 <= penalty_repeat <= 1. Defaults to 1.0, which means disabled. (llama.cpp behavior)
  @ffi.Float()
  external double penalty_repeat;

  /// Optional: BNF-like grammar to constrain sampling. Defaults to "" (llama.cpp behavior). See https://github.com/ggerganov/llama.cpp/blob/master/grammars/README.md
  external ffi.Pointer<ffi.Char> grammar;
}

final class fllama_tokenize_request extends ffi.Struct {
  /// Required: input text
  external ffi.Pointer<ffi.Char> input;

  /// Required: .ggml model file path
  external ffi.Pointer<ffi.Char> model_path;
}

typedef fllama_inference_callback = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Void Function(ffi.Pointer<ffi.Char> response, ffi.Uint8 done)>>;
typedef fllama_tokenize_callback
    = ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Int count)>>;
