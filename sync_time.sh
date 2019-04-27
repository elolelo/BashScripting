#!/bin/bash
PATH=$PATH:/sbin/

`hwclock -su`
echo "Clock synced at" `date`
