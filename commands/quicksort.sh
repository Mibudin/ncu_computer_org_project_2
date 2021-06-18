#!/bin/bash


# Paths
NVMAIN_PATH="/home/mibudin/Workspaces/NVmain/"
GEM5_PATH="/home/mibudin/Workspaces/gem5/"
BENCHMARK_PATH="/home/mibudin/Workspaces/ncu_computer_org_project_2/benchmark/"
OUTPUTS_PATH="/home/mibudin/Workspaces/ncu_computer_org_project_2/outputs/"

# 2-way associative cache
CMD="${GEM5_PATH}./build/X86/gem5.opt ${GEM5_PATH}configs/example/se.py \
	-c ${BENCHMARK_PATH}./quicksort \
	--cpu-type=TimingSimpleCPU --caches --l2cache --l3cache \
	--l3_assoc=2 \
	--l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB \
	--mem-type=NVMainMemory --nvmain-config=${NVMAIN_PATH}../NVmain/Config/PCM_ISSCC_2012_4GB.config"
${CMD} > ${OUTPUTS_PATH}quicksort-2-way/outputs 2> ${OUTPUTS_PATH}quicksort-2-way/errors
echo "${CMD}" > ${OUTPUTS_PATH}quicksort-2-way/commands
cp ${GEM5_PATH}m5out/stats.txt ${OUTPUTS_PATH}quicksort-2-way/stats.txt

# Full-way associative cache
CMD="${GEM5_PATH}./build/X86/gem5.opt ${GEM5_PATH}configs/example/se.py \
        -c ${BENCHMARK_PATH}./quicksort \
        --cpu-type=TimingSimpleCPU --caches --l2cache --l3cache \
        --l3_assoc=1 \
        --l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB \
	--mem-type=NVMainMemory --nvmain-config=${NVMAIN_PATH}../NVmain/Config/PCM_ISSCC_2012_4GB.config"
${CMD} > ${OUTPUTS_PATH}quicksort-full-way/outputs 2> ${OUTPUTS_PATH}quicksort-full-way/errors
echo "${CMD}" > ${OUTPUTS_PATH}quicksort-full-way/commands
cp ${GEM5_PATH}m5out/stats.txt ${OUTPUTS_PATH}quicksort-full-way/stats.txt

