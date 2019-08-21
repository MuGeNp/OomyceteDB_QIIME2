#!/bin/bash


# The oomycete database from http://oomycetedb.cgrb.oregonstate.edu/search.html 

INFILE=$1


# Extraction of taxonomic hierarchy from the fasta header "taxonomy="


awk -F '[/^>|,]' 'NF>1{print ">"$6} {print $1}' $INFILE | awk NF  > taxa1

awk '{gsub("taxonomy=", "");print}' taxa1 > taxa2

awk -F '[| ]' '/^>/ { print $1}' taxa2 > taxa3

awk '{gsub(">", "");print}' taxa3 > taxa4

# Extraction of the ID number from the fasta header "id="

awk -F '[/^>|,]' 'NF>1{print ">"$2} {print $1}' $INFILE | awk NF  > id1

awk '{gsub("id=", "");print}' id1 > oomycetedb.fna

awk -F '[| ]' '/^>/ { print $1}' oomycetedb.fna > id3

awk '{gsub(">", "");print}' id3 > id4

# Merging the taxa file and the id file

paste  id4 taxa4 > taxonomy.txt

# Deleting all the useless files

rm taxa1 taxa2 taxa3 taxa4 id1 id3 id4
