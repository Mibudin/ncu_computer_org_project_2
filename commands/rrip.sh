#!/bin/bash


# Configs
source /home/mibudin/Workspaces/ncu_computer_org_project_2/commands/config.sh


# LRU replacement policy
${COMMANDS_PATH}rrip-lru.sh

# RRIP replacement policy
${COMMANDS_PATH}rrip-rrip.sh
