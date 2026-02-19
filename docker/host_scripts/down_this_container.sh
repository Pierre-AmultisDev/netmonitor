#!/bin/bash
# =============================================================================
#
# @package    RPi5 netmonitor containers
# @container  netmonitor
# @name       down_this_container.sh
# @purpose    Shell script to start building all containers/services defined in dockercompose.yml
# @version    v0.0.1  2026-02-19
# @author     pierre@amultis.dev
# @copyright  (C) Pierre Veelen
#
# =============================================================================
docker compose down netmonitor_soc
