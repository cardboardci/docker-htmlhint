#!/bin/bash
set -e

# Update package status
apt-get update

# Emit the current versions
echo "Current versions"
cat provision/pkglist

mv provision/pkglist provision/pkglist.bak
touch provision/pkglist
while read line; do
    echo "Working with ${line}"
    input=(${line//=/ })
    echo "Determining version for ${input}"
    version=$(apt-cache policy ${input} | grep 'Candidate: ' | awk -F"[ ',]+" '/Candidate:/{print $3}')
    echo "Found version as ${version}"
    echo "${input}=${version}" >> provision/pkglist
done <provision/pkglist.bak

#
rm provision/pkglist.bak
cat provision/pkglist