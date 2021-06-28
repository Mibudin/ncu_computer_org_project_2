#!/bin/bash


# Configs
source /home/mibudin/Workspaces/ncu_computer_org_project_2/commands/config.sh

# Compile gem5 with NVmain
(cd ${GEM5_PATH} && scons EXTRAS=${NVMAIN_PATH} ${GEM5_PATH}build/X86/gem5.opt -j 4)

