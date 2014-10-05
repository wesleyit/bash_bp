#!/usr/bin/env bash

## Here is where you will write your tests.
## Use the functions exported on your lib 
## file. The tests must be placed inside 
## the tests() function.

bp_tests() {
  
    testname "The country Brazil is being read from config file."
    assert "say_hello_to Wesley"  print_string "Brazil"

    testname "The name is being read and displayed."
    assert "say_hello_to Wesley" print_string "Wesley"

    testname "The 'Administrator' text is being displayed."
    assert "say_hello_to Wesley" print_string "Administrator"

    testname "The code is returning 0 (running without errors)."
    assert "say_hello_to Wesley" returns_code 0

    testname "The code is returning 99."
    assert "say_hello_to Wesley" returns_code 99

    show_report
}


