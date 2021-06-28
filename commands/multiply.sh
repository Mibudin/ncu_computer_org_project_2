#!/bin/bash


# Configs
source /home/mibudin/Workspaces/ncu_computer_org_project_2/commands/config.sh


# Write-back cache
${COMMANDS_PATH}multiply-write-back.sh

# Write-through cache
${COMMANDS_PATH}multiply-write-through.sh
