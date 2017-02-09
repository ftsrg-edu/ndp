#!/bin/bash

xelatex -interaction=batchmode ndp
bibtex ndp
xelatex -interaction=batchmode ndp
xelatex -interaction=batchmode ndp
