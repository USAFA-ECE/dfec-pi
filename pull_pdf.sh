#!/bin/bash

#Navigate to repository

cd ~ || exit

rm -rf dfec-pi
#Pull repo

#Clone only the most recent file from the github
git clone --depth 1  https://github.com/USAFA-ECE/dfec-pi.git
