#!/bin/bash
# =============================================================================
#
# @package    RPi5 netmonitor containers
# @container  netmonitor
# @name       start_this_container.sh
# @purpose    Shell script to start building tcp container/service defined in dockercompose.yml
# @version    v0.0.1  2026-02-19
# @author     pierre@amultis.dev
# @copyright  (C) Pierre Veelen
#
# =============================================================================

# https://kodekloud.com/blog/keep-docker-container-running/
docker compose run --detach netmonitor_soc tail -f /dev/null
