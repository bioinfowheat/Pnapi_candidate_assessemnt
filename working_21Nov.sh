#

# overview
# we started with a search of NCBI to find the ultraspiracle of Bmori in the protein set
# once we found that we copied its fasta file of the protein sequence
>NP_001037470.1 protein ultraspiracle homolog [Bombyx mori]
MSSVAKKDKRTMSVTALINRAWPMTPSPQQQQQMVPSTQHSNFLHAMATPSTTPNVE--LDIQWLNIESGFMSPMSPPEMKPDTAMLD-GFRDDSTPPPPFKNYPPNHPLSGSKHLCSICGDRASGKHYGVYSCEGCKGFFKRTVRKDLTYACREDKNCIIDKRQRNRCQYCRYQKCLACGMKREAVQEERQRAARRTEDAHPSSSVQELSIERLLELEALVADSAEELQILRVGPESGVPAKYRAPVSSLCQIGNKQIAALIVWARDIPHFGQLEIDDQILLIKGSWNELLLFAIAWRSMEFLNDERENVD-SRNTAPPQLICLMPGMTLHRNSALQAGVGQIFDRVLSELSLKMRSLRMDQAECVALKAIILLNPDVKGLKNKQEVDVLREKMFLCLDEYCRRSRGGEEGRFAALLLRLPALRSISLKSFEHLYLFHLVAEGSVSSYIRDALCNHAPPIDTN-IM


# then we tried to see if we could find something like this protein up on Lepbase
# and the best hit, as determined by full length protein and high amino acid identity was for Danaus plexippus
# what we also saw is that there were many other hits, in many species, that were not full length, and kinda strange

>danaus_plexippus_v3_core_32_85_1__protein__DPOGS214137-PA Retinoic acid receptor RXR-alpha OS=Xenopus laevis GN=rxra PE=1 SV=1 [Source:UniProtKB/TrEMBL;Acc:P51128]
MSSVAKKDKPTMSVTALINWARPAPPGPQQQLAQAVPVSSTALLQSLGTSSNIPNVDCSIDMQWLNIESGFMSPMSPPEMKPDTAMLD-GMREDATSPSAMRNYPPNHPLSGSKHLCSICGDRASGKHYGVYSCEGCKGFFKRTVRKDLTYACREERNCIIDKRQRNRCQYCRYQKCLACGMKREAVQEERQRAARGAEDVHPSSSVQELSIERLLEMESLVADPNEEFQFLRVGPDSNVPPRYRAPVSSLCQIGNKQIAALVVWARDIPHFSQLELEDQVILIKASWNELMLFAIAWRSMEYLEDERENLDGTRTAPPPQLMCLMPGMTLHRNSALQAGVGQIFDRVLSELSLKMRALRMDQAEYVALKAIVLLNPDIKGLKNRQDVDVLREKMFSCLDEYCRRAHSSEEGRFASLLLRLPALRSISLKSFEHLFFFHLIAEGTIGTYIRDALRSHAPTIDTNSIM

# and that even the annotation for this protein, which is very, very similar to Bmori, is not named ultraspiricale, but something entirely different ... meaning
# we can't trust the annotations for things that come of the web, we need to do some manual curration

######
# manual curation
#
# this involves amino acid level comparison, starting with a KNOWN protein seuqence, so that we start with our feet on the ground, with certainty
# then we use that protein sequence to find things increasingly closer to our focal speices, or even in our focal species
# and judge how well what we find matches to our expectations.

# what are out expectations? well, most of the genes you are looking for, which you find in a moth and then search for in a butterfly, that's about 100 Million years of divergence
# and for highly conserved genes that natural seleciton acts to keep the same function, there shouldn't be much amino acid change. So about > 70% identity and similar length
# is what you expect.

# When we went to  ultraspiracle
# Darwin tree of life datasets on ENSEMBLE
https://projects.ensembl.org/darwin-tree-of-life/
# and used one of the protein sequences above to search in napi protein set, for anything looking like a good match
# among the top hits, there were two that had near full length, and very high identity. Those seemed like good candidates
# and when we went to look at them, they were isoforms of the same gene. I then took the longest isoform and pasted this together with the othe rproteins in Aliview
# and aligned them, and they look very much like the same locus.

>ENSPNPT00005028354.2 peptide: ENSPNPP00005021332 pep:protein_coding
MSSVAKKDKPTMSVTALMQWARPGAPGPPATPTPAP---------MLQSPCTPTNVDFSIDMQWLNLEPGFMSPMSPPEMKPDTAMLDGGMRDDATSPPALRSYPPNHPLSGSKHLCSICGDRASGKHYGVYSCEGCKGFFKRTVRKDLTYACREERNCIIDKRQRNRCQFCRYQKCLACGMKREAVQEERQRAARGAEDAHPSSSVQELSIERLLEMESLVADPSEEFQFLRVGPDTNVPPRYRAPVSSLCQIGNKQIAALVVWARDIPHFSQLEMEDQVLLIKSSWNELLLFAIAWRSIEYLEDERENMDGTRTASPPQLMCLMPGMTLHRNSALQAGVGQIFDRVLSELSLKMRALRMDQAEYVALKAIVLLNPDVKGLKNRQEVDLLREKIFSCLDEYCRRSHSTEEGRFASLILRLPALRSISLKSFEHLFFFHLVAEGSISSFIREALRMHAPPIDANSMM


########
# places we visited.

# Napi hits via blast
https://rapid.ensembl.org/Pieris_napi_GCA_905231885.1/Transcript/Sequence_Protein?db=core;g=ENSPNPG00005015065;r=10:5370583-5400195;t=ENSPNPT00005028354;tl=2bicMAlkQSixL9O5-8747217-888782111

# M brassicae on NCBI
https://www.ncbi.nlm.nih.gov/protein/482680061

# bombyx on ncbi
https://www.ncbi.nlm.nih.gov/protein/P17219.1

# Dmel on the GENE page of NCBI
https://www.ncbi.nlm.nih.gov/gene/31165
