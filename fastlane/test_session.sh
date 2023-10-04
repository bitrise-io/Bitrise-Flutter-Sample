#!/bin/env bash
if [ -z "$FASTLANE_SESSION" ]; then
    echo "FASTLANE_SESSION not set"
    exit 1
fi
echo "FASTLANE_SESSION set"
