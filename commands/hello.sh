#!/bin/bash


# Configs
source /home/mibudin/Workspaces/ncu_computer_org_project_2/commands/config.sh

# Hello
TASK="hello"
EXC="${GEM5_PATH}tests/test-progs/hello/bin/x86/linux/hello"
CMD="${GEM5_PATH}build/X86/gem5.opt ${GEM5_PATH}configs/example/se.py \
	-c ${EXC} \
	--cpu-type=TimingSimpleCPU --caches --l2cache --l3cache \
	--l3_assoc=2 \
	--l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB \
	--mem-type=NVMainMemory --nvmain-config=${NVMAIN_PATH}Config/PCM_ISSCC_2012_4GB.config"
(cd ${GEM5_PATH} && ${CMD} > ${OUTPUTS_PATH}${TASK}/outputs 2> ${OUTPUTS_PATH}${TASK}/errors)
echo "${CMD}" > ${OUTPUTS_PATH}${TASK}/commands
cp ${GEM5_PATH}m5out/stats.txt ${OUTPUTS_PATH}${TASK}/stats.txt
