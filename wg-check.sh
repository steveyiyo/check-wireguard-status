#!/bin/bash
ping -c1 192.168.201.1 > /dev/null
if [ $? -eq 0 ]
  then 
    exit 0
  else
    wg-quick down wg0;
    wg-quick up wg0;
fi