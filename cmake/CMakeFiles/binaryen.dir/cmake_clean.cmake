file(REMOVE_RECURSE
  "CMakeFiles/binaryen"
  "CMakeFiles/binaryen-complete"
  "deps/src/binaryen-stamp/binaryen-install"
  "deps/src/binaryen-stamp/binaryen-mkdir"
  "deps/src/binaryen-stamp/binaryen-download"
  "deps/src/binaryen-stamp/binaryen-update"
  "deps/src/binaryen-stamp/binaryen-patch"
  "deps/src/binaryen-stamp/binaryen-configure"
  "deps/src/binaryen-stamp/binaryen-build"
  "deps/lib/libbinaryen.a"
  "deps/src/binaryen-build/lib/libwasm.a"
  "deps/src/binaryen-build/lib/libasmjs.a"
  "deps/src/binaryen-build/lib/libpasses.a"
  "deps/src/binaryen-build/lib/libcfg.a"
  "deps/src/binaryen-build/lib/libir.a"
  "deps/src/binaryen-build/lib/libemscripten-optimizer.a"
  "deps/src/binaryen-build/lib/libsupport.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/binaryen.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
