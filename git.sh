#!/bin/bash

docker run --rm -ti -e EDITOR=vi -v $(pwd):/fontes/ -v $HOME/.ssh/:/root/.ssh/ meugit $@
