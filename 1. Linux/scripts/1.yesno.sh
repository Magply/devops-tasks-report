#!/bin/bash
USER=$(whoami)
if [ ${USER} = root ]
then
echo "yes, user is root"
else
echo "no, user not root"
fi

