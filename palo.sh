#!/bin/bash

usage() {
  bold=$(tput bold)
  italic=$(tput sitm)
  reset=$(tput sgr0)

  cat <<EOM
  $(basename $0) - creates one or more files or directories

  $(basename $0) [-dfh] [-c ${italic}count${reset}] ${bold}-n|--name${reset} ${italic}name${reset}

  ${bold}OPTIONS${reset}
  -c ${italic}count${reset}
      Select count. Default is 1.
  -d  Create a directory.
  -f  Create a file. Default type.
  -h, --help
      Display this usage.
  -n, --name ${italic}name${reset}
      Sets the name of the file or directory.


  ${bold}EXAMPLES${reset}

  Create a file called subor1
  # $(basename $0) -n subor

  Create 3 directories called mydir1 to mydir3
  # $(basename $0) -c 3 -d -n mydir

EOM
}

OPTS=$(getopt -q -o c:dfhn: -l help,name: -- "$@")

if [ $? -ne 0 ]; then
  echo "Bad options...";
  usage;
  exit 1
fi

eval set -- "$OPTS"

# nejake defaultne hodnoty
COUNT=1
COMMAND=touch

while true; do
    case "$1" in
    -c) 
        shift;
        COUNT=$1
        ;;
    -d)
        COMMAND=mkdir
        ;;
    -f) 
        COMMAND=touch
        ;;
    -h | --help )
        usage;
        exit 0;
        ;;
    -n | --name)
        shift;
        NAME=$1;
        ;;
    --)
        shift;
        break;
        ;;
    esac
    shift;
done


if [ -z "$NAME" ]; then
  echo "No name given...";
  echo
  usage
  exit 1;
else
  for i in `seq 1 $COUNT`;
  do 
    $COMMAND $NAME$i 
  done
fi
