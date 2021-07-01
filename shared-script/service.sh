#!/usr/bin/env bash
set -e

echo "Starting httpd..."
if [ -x "$(command -v systemctl)" ]; then
  echo "using systemctl"
  sudo systemctl enable httpd.service
  sudo systemctl start httpd
else
  echo "using upstart"
  sudo start httpd
fi
