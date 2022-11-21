# settting things up
cd /mnt/griffin/phisue/
mkdir genome
cd genome

# genome files
cp /mnt/griffin/racste/P_napi/refs/Pieris_napi-GCA_905231885.1-softmasked.fa /mnt/griffin/phisue/genome/Pieris_napi-GCA_905231885.1-softmasked.fa
cp /mnt/griffin/racste/P_napi/refs/braker2/merge_annot/Pieris_napi_brakerProt_rename_agat.gff .

grep -c '>' Pieris_napi-GCA_905231885.1-softmasked.fa

/data/programs/scripts/AsmQC Pieris_napi-GCA_905231885.1-softmasked.fa
-------------------------------
    AssemblyQC Result
-------------------------------
Contigs Generated :           48
Maximum Contig Length : 15,058,180
Minimum Contig Length :   11,883
Average Contig Length : 6,666,442.8 ± 6,512,765.1
Median Contig Length :  9,183,711.0
Total Contigs Length :  319,989,255
Total Number of Non-ATGC Characters :      6,531
Percentage of Non-ATGC Characters :        0.002
Contigs >= 100 bp :           48
Contigs >= 200 bp :           48
Contigs >= 500 bp :           48
Contigs >= 1 Kbp :            48
Contigs >= 10 Kbp :           48
Contigs >= 1 Mbp :            25
N50 value :     12,982,002
Generated using /mnt/griffin/phisue/genome/Pieris_napi-GCA_905231885.1-softmasked.fa

# annotation file

# example script
# extract CDS and protein
reference=Pieris_napi-GCA_905231885.1-softmasked.fa
gff_file=Pieris_napi_brakerProt_rename_agat.gff
outname_root=Pieris_napi-GCA_905231885.1-softmasked.Pieris_napi_brakerProt_rename_agat
# -yJ flag (I believe) only prints converted amino acid sequence of any mRNAs with no in exon stop codons, and with existing start and stop codon.
/data/programs/cufflinks-2.2.1.Linux_x86_64/gffread "$gff_file" -g "$reference" -J -x "$outname_root"_cds.fa -y "$outname_root"_prot.fa

grep -c '>' *fa
Pieris_napi-GCA_905231885.1-softmasked.fa:48
Pieris_napi-GCA_905231885.1-softmasked.Pieris_napi_brakerProt_rename_agat_cds.fa:17853
Pieris_napi-GCA_905231885.1-softmasked.Pieris_napi_brakerProt_rename_agat_prot.fa:17853



# head


# once you have this protein file from the genome and annotation file of RS, so that it connects to the
# readcount table of her RNAseq work

# then you want search that protein set for your proteins of interest, to connect eg. ultraspiracle with some ID in the RNAseq results

# make the database to search
/data/programs/diamond_v0.9.24/diamond makedb --in protein_file.fa -d database_name

# make a fasta file
# open an editor in bash
nano

# save a file called test.fa or whatever

# blasting
query=test.fa
db_name=database_name
/data/programs/diamond_v0.9.24/diamond blastp -d "$db_path$db_name" -q "$query" --sensitive -o "$query"_v_"$db_name".m8

# then have a look at the output
more *.m8
