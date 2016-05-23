#!/bin/bash

xelatex -interaction=batchmode -shell-escape -8bit ndp
bibtex ndp
xelatex -interaction=batchmode -shell-escape -8bit ndp
xelatex -interaction=batchmode -shell-escape -8bit ndp
