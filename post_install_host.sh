#!/bin/bash
# set -e

mkdir lib
cd lib
git clone git@github.com:JKBehrens/imitrob_calib_data_collector.git
pip install -e ./lib/imitrob_calib_data_collector
