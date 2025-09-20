#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#191919"           # HOST
export COLOR_02="#bf091d"           # SYNTAX_STRING
export COLOR_03="#3d9751"           # COMMAND
export COLOR_04="#f6bb34"           # COMMAND_COLOR2
export COLOR_05="#17b2e0"           # PATH
export COLOR_06="#7830b0"           # SYNTAX_VAR
export COLOR_07="#8bd2ed"           # PROMP
export COLOR_08="#ffffff"           #

export COLOR_09="#191919"           #
export COLOR_10="#bf091d"           # COMMAND_ERROR
export COLOR_11="#3d9751"           # EXEC
export COLOR_12="#f6bb34"           #
export COLOR_13="#17b2e0"           # FOLDER
export COLOR_14="#7830b0"           #
export COLOR_15="#8bd2ed"           #
export COLOR_16="#ffffff"           #

export BACKGROUND_COLOR="#262c35"   # Background Color
export FOREGROUND_COLOR="#ebebeb"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="DotGov"
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
