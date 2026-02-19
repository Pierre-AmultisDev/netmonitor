#!/bin/bash
# =============================================================================
#
# @package    RPi5 netmonitor containers
# @container  netmonitor
# @name       start_this_container_interactive.sh
# @purpose    Shell script to start building tcp container/service defined in dockercompose.yml
# @version    v0.0.1  2026-02-19
# @author     pierre@amultis.dev
# @copyright  (C) Pierre Veelen
#
# =============================================================================

# always rebuild
docker compose build netmonitor_soc

# create interactive container and cleanup afterwards
#
# -it
#    -i flag: Keeps the standard input (stdin) open, allowing you to send commands to the container.
#    -t flag: Allocates a pseudo-terminal (tty), providing a terminal interface for executing commands interactively.
#
# --rm removes container after running
docker compose run --rm -it netmonitor_soc sh
