# Bashproject (BP)
Welcome to BP, the Bash Project. It is a simple set of scripts 
made to help you develop your own shell scripts.

Using BP you can enjoy BDD - Behavior Driven Development,
creating tests for your methods, resulting on a high
level of quality.

## Setup:
The installation process is very easy, but you will need to have curl and git installed.
If you already have them, open a terminal and type:

`curl -s https://raw.githubusercontent.com/wesleyit/bashproject/master/bp_setup.sh | bash`

The code will be downloaded and you will be able to start using BP. Pretty easy, not?


## Usage:
Type the following commands in your bash prompt using your favorite terminal application.

### bp new <project_name> 
Use this to create a new bash project.
Avoid special chars and spaces.
Example: bp new backup_script
This will create a folder named backup_script
and all the necessary structure inside.


### bp run
Use this to execute your shell script.
You must be in the root directory of your project.


### bp run_tests
Use this to execute your shell script's tests.
You must be in the root directory of your project.


### bp reload
Use this to reload all variables necessary
to execute your scripts. This is useful when
you mannualy overwrite the variables and
need to get back the old values.


_Developed by Wesley Rodrigues da Silva <wesley.it at gmail.com>, 
under license GPL 3.0. Contribute: http://github.com/wesleyit/bashproject/_
