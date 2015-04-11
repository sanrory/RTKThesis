#!/bin/bash
rm igu.sp3.Z latest.sp3
wget ftp://cddis.gsfc.nasa.gov/gps/products/latest/ultra/igu.sp3.Z
cp igu.sp3.Z latest.sp3.Z
uncompress latest.sp3.Z
