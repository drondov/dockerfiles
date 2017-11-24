#! /bin/bash


echo "wait for start postgres..."
sleep 10;

stellar-core --newdb --forcescp --conf /conf/stellar-core.cfg
stellar-core --forcescp --conf=/conf/stellar-core.cfg
# stellar-core --newdb --conf /conf/stellar-core.cfg
stellar-core --conf=/conf/stellar-core.cfg
