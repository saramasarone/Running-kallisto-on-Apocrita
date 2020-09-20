#!/bin/bash

my_DIR="/data/WHRI-Bioinformatics/globus/MRC_Trauma/X204SC20031847-Z01-F001-Data/raw_data/"

kallisto quant -i *.idx -o "output/$1" $(ls $my_DIR$1/*.gz)
