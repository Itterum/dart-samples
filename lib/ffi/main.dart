import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as pkg_ffi;

void main() {
  final ptr = pkg_ffi.calloc<ffi.Int32>();

  try {
    ptr.value = 42;

    print(ptr.value);
  } finally {
    pkg_ffi.calloc.free(ptr);
  }
}
