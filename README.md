# OomyceteDB_QIIME2

## qiime_taxa.sh

# DESCRIPTION
## Convert the last release of oomyceteDB from http://www.oomycetedb.org/search.html into the two files : 
1. Reference sequences with the id "oomycetedb.fna"
2. Taxonomic classification "taxonomy_db.txt"
# The two elements are required for training the classifier in QIIME2

# USAGE

```
chmod +x qiime_taxa.sh
```

```
./qiime_taxa.sh [OomyceteDB_lastrelease]
```
