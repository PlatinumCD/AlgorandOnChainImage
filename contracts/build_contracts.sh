#!/bin/bash

ACCOUNT_ONE="YOUR_FIRST_ACCOUNT_HERE"
ACCOUNT_TWO="YOUR_SECOND_ACCOUNT_HERE"

echo "Building contracts 1-10 with $ACCOUNT_ONE"
for i in {1..10}
do
    goal app create --creator=$ACCOUNT_ONE --approval-prog=contract_$i.teal --clear-prog=clear.teal --global-byteslices=50 --global-ints=0 --local-byteslices=0 --local-ints=0 --out=create_$i.txn
done

echo "Building contracts 11-20 with $ACCOUNT_TWO"
for i in {11..20}
do
    goal app create --creator=$ACCOUNT_TWO --approval-prog=contract_$i.teal --clear-prog=clear.teal --global-byteslices=50 --global-ints=0 --local-byteslices=0 --local-ints=0 --out=create_$i.txn
done

cat *.txn > deploy_contracts.txn
rm create*
