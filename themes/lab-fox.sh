#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#2e2e2e"           # HOST
export COLOR_02="#fc6d26"           # SYNTAX_STRING
export COLOR_03="#3eb383"           # COMMAND
export COLOR_04="#fca121"           # COMMAND_COLOR2
export COLOR_05="#db3b21"           # PATH
export COLOR_06="#380d75"           # SYNTAX_VAR
export COLOR_07="#6e49cb"           # PROMP
export COLOR_08="#ffffff"           #

export COLOR_09="#464646"           #
export COLOR_10="#ff6517"           # COMMAND_ERROR
export COLOR_11="#53eaa8"           # EXEC
export COLOR_12="#fca013"           #
export COLOR_13="#db501f"           # FOLDER
export COLOR_14="#441090"           #
export COLOR_15="#7d53e7"           #
export COLOR_16="#ffffff"           #

export BACKGROUND_COLOR="#2e2e2e"   # Background Color
export FOREGROUND_COLOR="#ffffff"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Lab Fox"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
