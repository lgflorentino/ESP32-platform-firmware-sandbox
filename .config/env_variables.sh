###############################################################################
# This file depends on the following variables and they need to exist in the executing shell environment
# PRJ_ROOT, desc=The variable should contain a path to the project root directory
# CONF_D, desc=The variable should contains a path to the directory this file 
#       was originally placed in 
###############################################################################
NAME="ESP32-platform-firmware"
PRJ_NAME="$NAME-sandbox"
DESC="This is a docker environment to build $NAME"

HELP_TEXT="
\thelp, -h\t\tPrint this help text
Examples:
\$$(basename $0) run
\$DEVMODE=true $(basename $0) run
\$$(basename $0) clean
\$$(basename $0) build

"

DEPS_D="$PRJ_ROOT/deps"

TARGET_SRC_D="$DEPS_D/$NAME"

DOCKERFILE="$CONF_D/docker/Dockerfile"
DOCKER_IMG_NAME="$PRJ_NAME-img"
DOCKER_CONT_NAME="$PRJ_NAME-cont"
