## This script exports the tunctions needed
## to execute tests.


export FAILED=0
export PASSED=0
export TOTAL=0


function testname() {
  yellow '\n------------------------------------------------\n'
  yellow "$@\n"
}


function bp_test_success() {
  green "Expected: $1 / Got: $2\n"
  green "The test passed!\n"
  let "PASSED++"
  return 0
}


function bp_test_failed() {
  red "Expected: $1 / Got: $2\n"
  red "the test failed!\n"
  let "FAILED++"
  return 1
}


function assert() {
  testing="$1"  ## this is the resource being tested
  verb="$2"  ## this will define the method used to compare values
  expected="$3"  ## this is the expected response

  yellow "running ${testing}...\n"
  let "TOTAL++"

  case $verb in
    returns_code) 
      eval $testing &> /dev/null
      got="$?"
      if [ "$got" -eq "$expected" ] 
      then 
        bp_test_success "$expected" "$got" 
      else
        bp_test_failed "$expected" "$got"
      fi
    ;;
    print_string) 
      got="$(eval $testing)"
      echo "$got" | grep -q "$expected"  
      if [ "$?" -eq "0" ] 
      then 
        bp_test_success "$expected" "$got" 
      else
        bp_test_failed "$expected" "$got"
      fi
    ;;
    *) red "The verb $verb is not implemented yet."
       bp_test_failed;;
  esac

}


function show_report() {
  echo '------------------------------------------------'
  red   "$FAILED/$TOTAL tests failed.\n"
  green "$PASSED/$TOTAL tests passed.\n\n"
}

