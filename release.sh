#!/bin/bash

git restore --staged images/reference/architecture-in-brief.svg
git restore images/reference/architecture-in-brief.svg

echo "$(date +"%H:%M") Cleanup images.. done."

cd -

echo "$(date +"%H:%M") Update configuration pages for CE:"
  python3 generate_config_pages.py ce ../ce3

echo "$(date +"%H:%M") Update configuration pages for PE:"
  python3 generate_config_pages.py pe ../pe3

echo "$(date +"%H:%M") Please review changes and commit. "
