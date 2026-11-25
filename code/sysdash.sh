
#!/bin/bash

# ==========================================
# SYSDASH - System Dashboard
# Author: Saif Eddine
# ==========================================
# System Monitoring function
system_monitoring()
{
    echo "========== SYSTEM MONITORING =========="

    echo ""
    echo "--- SYSTEM UPTIME ---"
    uptime

    echo ""
    echo "--- MEMORY USAGE ---"
    free -h

    echo ""
    echo "--- DISK USAGE ---"
    df -h /

    echo ""
    echo "--- TOP 5 PROCESSES ---"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
}
# Main menu

while true
do
    clear

    echo "======================================"
    echo "          SYSDASH DASHBOARD"
    echo "======================================"
    echo "1. System Monitoring"
    echo "2. Log Analysis"
    echo "3. Security Audit"
    echo "0. Exit"
    echo "======================================"

    read -p "Choose an option: " choice

    case "$choice" in
        1)
            system_monitoring
            ;;
        2)
            echo "Log Analysis selected"
            ;;
        3)
            echo "Security Audit selected"
            ;;
        0)
            echo "Exiting SYSDASH..."
            exit 0
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac

    read -p "Press Enter to continue..."
done
