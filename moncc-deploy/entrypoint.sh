#!/bin/sh -l

monccd -s /var/run/monccd.sock --cluster-only --hypervised &

MNCC="mncc --nofancy -s /var/run/monccd.sock"
sleep 10
$MNCC login --email $MONCC_USER --password $MONCC_PASS
$MNCC cluster switch -m $MONCCODE
$MNCC load template.yaml
$MNCC update my-namespace/my-runnable
