#!/bin/bash
#Author: Chaluka Wanniarachchi
#Last Updated: 2026/03/16 V1.1.1
#lib/logger.sh handles all log writing for sysmonitor

#Creating log directory and files if they don't exist
init_logs(){
	mkdir -p "$LOG_DIR"
	touch "$MAIN_LOG" "$ALERT_LOG"
}

#Writing a timestamped info line to main log file
log_info(){
	local message="$1"
	echo "[$(date '+%Y-%m-%d %H:%M:%S')] [INFO] [$PROJECT_NAME] $message" >> "$MAIN_LOG"
}

#Writing a timestamped warning line to the main log
log_warnings(){
	local message="$1"
	echo "[$(date '+%Y-%m-%d %H:%M:%S')] [WARNING] [$PROJECT_NAME] $message" >> "$MAIN_LOG"
}

#Writing a timestamped alert line to both logs
log_alert(){
	local message="$1"
	local entry="[$date '+%Y-%m-%d %H:%M:%S')] [ALERT] [$PROJECT_NAME] $message"
	echo "$entry" >> "$MAIN_LOG"
}
