# Thank you for your feedback and time!
I will write here every single one of those amazing dudes and gals that have contributed to my growth as a developer, I'm speechless. 

- 504830046465163265
  ./1.sh the inner elif and else that you indented are part of the same if block and there can't be more than one else in an if
  also exit inside a function will exit the script so echo "Loading.."  wont run and -eq only compares numbers, not strings
  
- sshaw_
  https://www.shellcheck.net/
  
  - ladrm 
  What you are doing wrong is craving human attention every time the script is run.
  Ideally scripts are non-interactive and should not require any interaction in form of "Do you want abc (y/n/maybe)". Especially on stdin - it should be used for     data input, command line arguments are used to modify behavior of the scritpt.
  Also questions of "do you really wanna do this" are sort of useless, since operator is saying to you that he wants to perform the action at the time the script is 
  started, or we use something like -f/--force (or -n/--dry-run) arguments where it makes sense.
  Also in "content failed to start" you probably want to have some form of error raised (return 1/exit 1). And error/warning messages should go to stderr.

- dctec
  I always use double brackets. https://mywiki.wooledge.org/BashFAQ/031
  Use == for comparing strings. '-eq' is for comparing numbers ( $ help test )
  .. your file_count function is not really counting, I'm guessing you are just using this as example. Anyway, here's a shorter version to accomplish a count after   a prompt:
  
  ```bash
  #!/bin/bash
  read -p "Do you wish to count all files? [y/n]?" myvar
  [[ $myvar == "y" ]] && find ./ -type f -maxdepth 1 |wc -l || echo "content failed to start\!"
  ```
