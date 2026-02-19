#!/bin/bash
# =============================================================================
#
# @package    RPi5 netmonitor containers
# @container  netmonitor
# @name       bash_into_this_container.sh
# @purpose    Shell into container
# @version    v0.0.1  2026-02-19
# @author     pierre@amultis.dev
# @copyright  (C) Pierre Veelen
#
# =============================================================================
docker compose exec netmonitor_soc bash
