#!/bin/bash

xelatex -interaction=batchmode -shell-escape ndp
bibtex ndp
xelatex -interaction=batchmode -shell-escape ndp
xelatex -interaction=batchmode -shell-escape ndp
