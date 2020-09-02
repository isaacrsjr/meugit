#!/bin/bash

docker run --rm -v $(pwd):/fontes/ -v $HOME/.ssh/:/root/.ssh/ meugit $@
