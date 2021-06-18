#!/bin/bash


# Paths
NVMAIN_PATH="/home/mibudin/Workspaces/NVmain/"
GEM5_PATH="/home/mibudin/Workspaces/gem5/"

# Compile gem5 with NVmain
(cd ${GEM5_PATH} && scons EXTRAS=${NVMAIN_PATH}../NVmain build/X86/gem5.opt)

