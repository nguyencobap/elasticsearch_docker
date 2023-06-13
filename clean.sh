#!/bin/sh
ask_yes_no() {
  local answer=""
  while [ "$answer" != "y" ] && [ "$answer" != "n" ]
  do
    echo "$1 (y/n)"
    read answer
    if [ "$answer" = "y" ]; then
      return 0
    elif [ "$answer" = "n" ]; then
      return 1
    else
      echo "Invalid input. Please enter either 'y' or 'n'."
    fi
  done
}
if ask_yes_no " Do you really want to clean all data in folder elasticsearch_data/ and kibana_data/" ; then
    rm -rf elasticsearch_data/*
    rm -rf kibana_data/*
fi

