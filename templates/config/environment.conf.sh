## Use this file to setup features to improve 
## the usability and user experience of the 
## bp framework. Example: colorful terminal,
## improved error messages, etc.


TRUE=0
RESET=0
TXT_RED=31
TXT_BLUE=34
TXT_GREEN=32
TXT_YELLOW=33
ESCAPE="\033["
COLOR_BACKGROUND=$RESET


function red() {
  COLOR_TEXT=$TXT_RED
  echo -ne "${ESCAPE}${RESET}m"
  echo -ne "${ESCAPE}${COLOR_BACKGROUND};${COLOR_TEXT}m${@}"
  echo -ne "${ESCAPE}${RESET}m"
}


function blue() {
  COLOR_TEXT=$TXT_BLUE
  echo -ne "${ESCAPE}${RESET}m"
  echo -ne "${ESCAPE}${COLOR_BACKGROUND};${COLOR_TEXT}m${@}"
  echo -ne "${ESCAPE}${RESET}m"
}


function green() {
  COLOR_TEXT=$TXT_GREEN
  echo -ne "${ESCAPE}${RESET}m"
  echo -ne "${ESCAPE}${COLOR_BACKGROUND};${COLOR_TEXT}m${@}"
  echo -ne "${ESCAPE}${RESET}m"
}


function yellow() {
  COLOR_TEXT=$TXT_YELLOW
  echo -ne "${ESCAPE}${RESET}m"
  echo -ne "${ESCAPE}${COLOR_BACKGROUND};${COLOR_TEXT}m${@}"
  echo -ne "${ESCAPE}${RESET}m"
}

