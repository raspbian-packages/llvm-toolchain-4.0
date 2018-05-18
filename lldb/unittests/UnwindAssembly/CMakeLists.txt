list(FIND LLVM_TARGETS_TO_BUILD "X86" LLVM_IS_X86_TARGET_TO_BUILD)
if (LLVM_IS_X86_TARGET_TO_BUILD GREATER -1)
  add_subdirectory(x86)
endif()

add_subdirectory(InstEmulation)
