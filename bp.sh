function bp_help() {
  cat <<-EOF
  
  Welcome to BP, the Bash Project. BP is a simple set of scripts
  made to help you develop your own shell scripts.
  Using BP you can enjoy BDD - Behavior Driven Development,
  creating tests for your methods, resulting on a high
  level of quality.


  Usage:

  bp new <project_name> 
  Use this to create a new bash project.
  Avoid special chars and spaces.
  Example: bp new backup_script
  This will create a folder named backup_script
  and all the necessary structure inside.
  
  bp run
  Use this to execute your shell script.
  You must be in the root directory of your project.
  
  bp run_tests
  Use this to execute your shell script's tests.
  You must be in the root directory of your project.

  bp reload
  Use this to reload all variables necessary
  to execute your scripts. This is useful when
  you mannualy overwrite the variables and
  need to get back the old values.

  Developed by Wesley Rodrigues da Silva <wesley.it at gmail.com>
  Under license GPL 3.0. Contribute: http://github.com/wesleyit/bashproject/

EOF
}


function bp_new_project() {
  echo -e "\nCreating the project structure..."
  mkdir -vp "$1"/{bin,config,include,lib,test}
  echo -e "\nPlacing templates and helpers scripts..."
  cp -v ~/.bp/templates/bin/app.sh "$1"/bin/
  cp -v ~/.bp/templates/config/environment.conf.sh "$1"/config/
  cp -v ~/.bp/templates/config/app.conf.sh "$1"/config/"$1".conf.sh
  cp -v ~/.bp/templates/include/includes.inc.sh "$1"/include/
  cp -v ~/.bp/templates/include/test_helper.inc.sh "$1"/include/
  cp -v ~/.bp/templates/lib/app.lib.sh "$1"/lib/"$1".lib.sh
  cp -v ~/.bp/templates/test/app.test.sh "$1"/test/"$1".test.sh
  cd "$1"
  echo -e '\nThe main structures has been created, enjoy!\n'
}


function bp_run_app() {
  [ -x ./bin/app.sh ] && ./bin/app.sh || echo "Must be in your project home."
}


function bp_run_tests() {
  [ -x ./test/*.test.sh ] && ./test/*.test.sh || echo "Must be in your project home."
  bp_tests
}


function bp_reload() {
  [ -x ./include/includes.inc.sh ] && source ./include/includes.inc.sh || echo "Must be in your project home."
}


function bp() {
  case $1 in
    new) bp_new_project $2;;
    run) bp_reload && bp_run_app;;
    run_tests) bp_reload && bp_run_tests;;
    reload) bp_reload;;
    *) bp_help;;
  esac
}

