## Genome comparisons of crAss-like phages

<img src="https://user-images.githubusercontent.com/63568880/206448659-1f3f8143-0632-48cc-8a4b-a30e25b6dbb5.svg" width="700">


## About

This repo contains the HMMs for hallmarks genes (MCP, Portal, and TerL) used for the detection of crAss-like phages. This also has basic bash script (crAss.sh) that allows users to search through metagenomes/contigs for putative crAssphages using these profiles. The script will be updated on a regular basis and will soon be provided in the form of a nextflow pipeline.

## Usage

For the script to run successfully users need to install both [Prodigal](https://github.com/hyattpd/Prodigal) and [HMMER](http://hmmer.org/) beforehand.

To test if the depencies were installed and are in the same path, users may test the script using a contig (with .fasta extension) provided in the test directory. The script, contig file, as well as the HMM profiles need to be in the same directory. The HMM profiles require to get converted to binary compressed datafiles using hmmpress, using the following command:

```
hmmpress *.HMM
```

This will create a set of files with extensions: <hmmfile>.h3m <hmmfile>.h3i <hmmfile>.h3f and <hmmfile>.h3p



Once done users may execute the crAssZA.sh script as follows: 

```
(crAss)[user@machine007]$ ./crAss.sh
```

## Output

Once executed, the script will run for a few seconds and set of output files will be generated. These will have extentions *faa and *hmmout that may require further manual inspection.


