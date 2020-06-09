#!/bin/bash

cp -f $GITHUB_WORKSPACE/MSG1500-NAND.config /opt/rt-n56u/trunk/configs/templates/MSG1500-NAND.config
cp -f $GITHUB_WORKSPACE/MSG1500-SPI.config /opt/rt-n56u/trunk/configs/templates/MSG1500-SPI.config
cp -r -f $GITHUB_WORKSPACE/MSG1500-NAND /opt/rt-n56u/trunk/configs/boards/MSG1500-NAND
cp -r -f $GITHUB_WORKSPACE/MSG1500-SPI /opt/rt-n56u/trunk/configs/boards/MSG1500-SPI
