#!/bin/bash

if [[ $(xinput list-props 'SynPS/2 Synaptics TouchPad' | grep 'Device Enabled' | cut -d ':' -f 2) = *0* ]]
then
  switch=1
else
  switch=0
fi

xinput --set-prop 'SynPS/2 Synaptics TouchPad' "Device Enabled" $switch
