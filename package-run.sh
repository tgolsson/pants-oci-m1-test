#!/usr/bin/env bash

echo "Running package-run.sh"


echo "Running with Pants run:"
pants run src/python/main.py

echo "Packaging as an image"
pants package src/python:image

#if we pass false on the command line we will not run the image
if [ "$1" = "false" ]; then
  echo "Skipping running the image"
  exit 0
fi

echo "Running the image"
podman run --rm oci:dist/src.python/image.d
