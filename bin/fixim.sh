#!/usr/bin/env bash

if grep -qF "super displayLayer" node_modules/react-native/Libraries/Image/RCTUIImageViewAnimated.m; then
    echo "Fix images"
    echo "Done"
else
    echo "Fix images"
    HUYDEV="_currentFrame.CGImage;"
    HUYFIX="_currentFrame.CGImage ;} else { [super displayLayer:layer];"
    sed -ie "s/${HUYDEV}/${HUYFIX}/" node_modules/react-native/Libraries/Image/RCTUIImageViewAnimated.m
    echo "Done"
fi
