#!/bin/bash
#send email to bezuidt@gmail.com to help debug


###### Prodigal Gene Calling ##########
for contigsFNA in $(ls *.fasta | sed -e 's/.fasta//' | sort -u)
do
        #conda init bash
        #conda activate prodigal
        prodigal -i $contigsFNA\.fasta -a $contigsFNA\.faa -p meta &> /dev/null 1>&2
        #conda deactivate
done


######## Search for putative crAss-like phages using hallmark genes ########maod
for contigsFAA in $(ls *.faa | sed -e 's/.faa//' | sort -u)
do
        #conda init bash
        #conda activate hmmer
        for profiles in $(ls *.HMM | sed -e 's/.HMM//' | sort -u)
        do
                hmmscan --tblout $contigsFAA.vs.$profiles\.hmmout -T 50 --cpu 4 $profiles\.HMM $contigsFAA\.faa &> /dev/null 1>&2
        done
        #conda deactivate
done

######### Print outputs #########
echo ""
echo "hmmscan done, check *hmmout files for detailed recults"
echo ""

for hmmoutfiles in *hmmout
do
        awk '/^[^#]/{print $1 "\t" $3}' $hmmoutfiles | sort -k2
done
