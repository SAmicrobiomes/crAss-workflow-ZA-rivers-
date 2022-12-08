## Genome comparisons of crAss-like phages

<img src="https://user-images.githubusercontent.com/63568880/206448659-1f3f8143-0632-48cc-8a4b-a30e25b6dbb5.svg" width="700">


## About

This repo contains the HMMs for hallmarks genes (MCP, Portal, and TerL) used for the detection of crAss-like phages. This also has basic bash script (crAss.sh) that allows users to search through metagenomes/contigs for putative crAssphages using these profiles. The script will be updated on a regular basis and will soon be provided in the form of a nextflow pipeline.

The following document describes each field of hmm_meta.txt and sys_meta.txt, and how you can use your own HMMs and system models with PADLOC.
1. Retrieved Cressdnaviricota and Phixvirota protein sequences from [GenBank](https://www.ncbi.nlm.nih.gov/protein/?term=single+stranded+DNA+viruses);
2. Clustered these at ```95%``` amino acid identity over ```90%```of the shortest sequence using [CD-HIT](https://www.bioinformatics.org/cd-hit/);
3. Compared representative sequences using all-vs-all blastp with evalue ```1e-5```;
4. The blastp results were further clustered using [MCL - Markov Clustering Algorithm](https://micans.org/mcl/) with the inflation ```1.5```;
5. Clusters with proteins >= 10 representing replication initiator (Rep) and major capsid (VP1) were aligned using [mafft](https://mafft.cbrc.jp/alignment/software/) with the ```--auto``` parameter;
6. Alignments were then used to create HMM profiles using [hmmer](http://hmmer.org/) 
7. HMM profiles for both Circular Rep-Containing Single Stranded (CRESS.hmms) and Phixviricota (Phix.hmms) viruses are in the ssDNA HMM files directory

