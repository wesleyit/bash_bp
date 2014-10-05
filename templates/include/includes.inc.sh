## This file will read all definitions and
## functions from your entire project and
## reload the environment.


[ -x "./include/test_helper.inc.sh" ] &&
  export BASEDIR=$(pwd) ||
  echo "Must be in your project home."


## Include definitions from config file.
export CONFDIR="$BASEDIR/config"
for file in "$CONFDIR"/*.conf.sh
do
  source "$file"
done


## Include the lib files.
export LIBDIR="$BASEDIR/lib"
for file in "$LIBDIR"/*.lib.sh
do
  source "$file"
done


## include the tests definitions
source "$BASEDIR/include/test_helper.inc.sh"
export TESTDIR="$BASEDIR/test"
for file in "$TESTDIR"/*.test.sh
do
  source "$file"
done
