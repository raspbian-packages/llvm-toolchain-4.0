list(FIND LLVM_TARGETS_TO_BUILD "AArch64" LLVM_IS_AArch64_TARGET_TO_BUILD)
if (LLVM_IS_AArch64_TARGET_TO_BUILD GREATER -1)
  add_lldb_unittest(InstEmulationTests TestArm64InstEmulation.cpp)
endif()
