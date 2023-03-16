#!/bin/bash

# Define target URL
target_url="https://example.com"

# Run subdomain enumeration using subfinder
subdomains=$(subfinder -d $target_url)

# Run directory enumeration using dirsearch
dirsearch -u $target_url -e php -t 100 -r -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt

# Run port scanning using nmap
nmap -sS -T4 -p- -v $target_url

# Run vulnerability scanning using vulners
vulners -u $target_url -n -w

# Extract JavaScript files using GetJS
getJS -u $target_url

# Extract links using GoLinkFinder
gofinder $target_url

# Extract all URLs using getallurls
getallurls $target_url

# Extract archived URLs using WayBackUrls
waybackurls $target_url

# Extract robots.txt from archived URLs using WayBackRobots
waybackrobots $target_url

# Resolve subdomains using MassDNS
massdns -r /usr/share/massdns/lists/resolvers.txt -t A -o S -w resolved.txt subdomains.txt

# Run subdomain enumeration using Sublist3r
sublist3r -d $target_url

# Run fuzzing using FFuF
ffuf -c -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -u $target_url/FUZZ -t 100 -r

# Find XSS vulnerabilities using XSSHunter
xsshunter -u $target_url

# Test for SQL injection vulnerabilities using SQLMap
sqlmap -u $target_url

# Test for XXE vulnerabilities using XXEInjector
xxeinjector $target_url

# Detect SSRF vulnerabilities using SSRFDetector
ssrfdetector $target_url

# Scan for Git repositories using GitTools
gitdumper $target_url

# Find secrets in Git repositories using gitallsecrets
gitallsecrets -u $target_url

# Test for race conditions using RaceTheWeb
racetheweb $target_url

# Test for CORS vulnerabilities using CORStest
corstest $target_url

# Capture screenshots using EyeWitness
eyewitness -f urls.txt --no-prompt

# Test for parameter tampering vulnerabilities using parameth
parameth -u $target_url
