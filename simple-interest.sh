What is simple-interest.sh?

It’s just a shell script that calculates Simple Interest (SI) using the formula:

𝑆
𝐼
=
𝑃
×
𝑅
×
𝑇
100
SI=
100
P×R×T
	​


where

P = Principal amount

R = Rate of interest

T = Time (years)

Steps to do:

In your repository → Click Add file → Create new file.

Name it: simple-interest.sh.

Paste only ONE version of the script (interactive OR arguments).

Commit changes.

✅ Script Option 1: Interactive version (asks user for input)
#!/bin/bash

# Simple Interest Calculator (interactive)

echo "Enter Principal:"
read P

echo "Enter Rate of Interest:"
read R

echo "Enter Time (in years):"
read T

SI=$((P * R * T / 100))

echo "Simple Interest = $SI"

✅ Script Option 2: Command-line arguments (takes input from arguments)
#!/bin/bash

# Simple Interest Calculator (arguments)

# Usage: ./simple-interest.sh <Principal> <Rate> <Time>

if [ $# -ne 3 ]; then
  echo "Usage: $0 <Principal> <Rate> <Time>"
  exit 1
fi

P=$1
R=$2
T=$3

SI=$((P * R * T / 100))

echo "Simple Interest = $SI"
