# WormBase genome annotations R package

## Installation

```{r}
if (!require("devtools")) install.packages("devtools")
devtools::install_github('przemol/WB.WS259', build_vignettes=FALSE)
```

## Usage

- Load packageL
```{r}
library(WB.WS259)
```

- List data:
```{r}
data(package = 'WB.WS259')
```

- Load data:
```{r}
data(wb.enhancer)
wb.enhancer
```

- Extract metadata:
```{r}
data(wb.gene)
elementMetadata(wb.gene)
```

- Save as BED (UCSC chromosome names, e.g. chrII):
```{r}
getBED('wb.rRNA')
```

- Save as BED (WB/Ensembl chromosome names, e.g. II):
```{r}
getBED('wb.rRNA', chromosomes = 'Ensembl')
```

## Available data 

|feature                                |count   |length_bp  |genome_pct |memory   |metadata_columns                                                                                   |
|:--------------------------------------|:-------|:----------|:----------|:--------|:--------------------------------------------------------------------------------------------------|
|wb.antisense_RNA                       |104     |99164      |0.0946     |51.5 Kb  |source;type;ID;Name;Parent                                                                         |
|wb.assembly_component                  |6541    |306303393  |100        |551.7 Kb |source;type;genbank;Name                                                                           |
|wb.base_call_error_correction          |1553    |5385       |0.00537    |145.4 Kb |source;type;Name                                                                                   |
|wb.binding_site                        |93185   |2539659    |1.8        |4.5 Mb   |source;type;score;Name;tf_id;tf_name                                                               |
|wb.biological_region                   |37      |272364964  |90.5       |27.5 Kb  |source;type;balancer;balancer_type                                                                 |
|wb.CDS                                 |2720054 |514846890  |36.5       |223.6 Mb |source;type;phase;ID;Name;locus;wormpep;prediction_status                                          |
|wb.complex_substitution                |50691   |11556816   |4.93       |10.3 Mb  |source;type;variation;public_name;polymorphism;consequence;insertion;aachange;engineered           |
|wb.conserved_region                    |429231  |186654329  |52.8       |45.8 Mb  |source;type;Target                                                                                 |
|wb.deletion                            |148242  |345017343  |56.9       |25.5 Mb  |source;type;variation;public_name;polymorphism;consequence;status;insertion;rflp;engineered        |
|wb.DNAseI_hypersensitive_site          |7095    |857295     |0.855      |578.4 Kb |source;type;Name                                                                                   |
|wb.duplication                         |3484    |8112949    |6.47       |296.2 Kb |source;type;Name                                                                                   |
|wb.enhancer                            |2430    |1018498    |1          |214.1 Kb |source;type;Name                                                                                   |
|wb.exon                                |384457  |83175264   |33.6       |15.8 Mb  |source;type;Parent                                                                                 |
|wb.experimental_result_region          |20029   |30358067   |27.5       |1.5 Mb   |source;type;Name                                                                                   |
|wb.expressed_sequence_match_I          |1550464 |160353732  |6.39       |212.9 Mb |source;type;score;ID;Target;species                                                                |
|wb.expressed_sequence_match_II         |1612288 |167409080  |6.4        |220.5 Mb |source;type;score;ID;Target;species                                                                |
|wb.expressed_sequence_match_III        |1358231 |144804782  |5.79       |187.4 Mb |source;type;score;ID;Target;species                                                                |
|wb.expressed_sequence_match_IV         |1775932 |201455076  |6.4        |235.6 Mb |source;type;score;ID;Target;species                                                                |
|wb.expressed_sequence_match_MtDNA      |32240   |6305685    |0.0135     |4.7 Mb   |source;type;score;ID;Target;species                                                                |
|wb.expressed_sequence_match_V          |1902470 |189084188  |7.91       |257 Mb   |source;type;score;ID;Target;species                                                                |
|wb.expressed_sequence_match_X          |1452995 |138602285  |5.4        |197.2 Mb |source;type;score;ID;Target;species                                                                |
|wb.five_prime_UTR                      |30806   |2350538    |1.51       |2.5 Mb   |source;type;Parent                                                                                 |
|wb.G_quartet                           |2907    |69118      |0.0538     |259.2 Kb |source;type;Target                                                                                 |
|wb.gene                                |74216   |350167639  |92.4       |19.4 Mb  |source;type;ID;Name;gmap;status;interpolated_map_position;sequence_name;biotype;locus              |
|wb.histone_binding_site                |5164    |5330550    |5.32       |427.5 Kb |source;type;Name                                                                                   |
|wb.insertion_site                      |90429   |90429      |0.081      |17 Mb    |source;type;variation;public_name;polymorphism;consequence;status;insertion;rflp;engineered        |
|wb.intron                              |738238  |1024110369 |87.6       |17.6 Mb  |source;type;score                                                                                  |
|wb.inverted_repeat                     |65691   |6067299    |5.86       |2.8 Mb   |source;type;score;Note                                                                             |
|wb.lincRNA                             |178     |216777     |0.209      |79 Kb    |source;type;ID;Name;Parent;locus                                                                   |
|wb.low_complexity_region               |189148  |5985910    |5.97       |5.1 Mb   |source;type;Note                                                                                   |
|wb.miRNA_primary_transcript            |10      |5716       |0.00333    |29.2 Kb  |source;type;ID;Name;Parent                                                                         |
|wb.miRNA                               |454     |10136      |0.00996    |138.5 Kb |source;type;ID;Name;Parent;locus                                                                   |
|wb.mRNA_region                         |227070  |2372572    |2.37       |7.8 Mb   |source;type;score;Note                                                                             |
|wb.mRNA                                |33667   |133840722  |62.2       |9.4 Mb   |source;type;ID;Name;Parent;locus;wormpep                                                           |
|wb.nc_primary_transcript               |833     |2608515    |2.11       |157.6 Kb |source;type;ID;Name                                                                                |
|wb.ncRNA                               |11399   |1646133    |1.39       |1.7 Mb   |source;type;score;ID;Name;locus                                                                    |
|wb.nucleotide_match                    |25489   |442391182  |83.5       |2.7 Mb   |source;type;score;ID;Target;Name                                                                   |
|wb.operon                              |1498    |15210583   |14.5       |383.2 Kb |source;type;Name;genes                                                                             |
|wb.PCR_product                         |83377   |125766915  |62.4       |8.6 Mb   |source;type;Name;amplified;vendorID                                                                |
|wb.piRNA                               |15364   |322644     |0.255      |4.6 Mb   |source;type;ID;Name;Parent;locus                                                                   |
|wb.point_mutation                      |1076128 |1076128    |0.858      |160.2 Mb |source;type;variation;public_name;consequence;substitution;aachange;engineered                     |
|wb.polyA_signal_sequence               |2454    |14724      |0.0145     |224.5 Kb |source;type;Name                                                                                   |
|wb.polyA_site                          |87271   |87271      |0.0866     |6.8 Mb   |source;type;Name                                                                                   |
|wb.polypeptide_motif                   |383773  |52526148   |19         |40.5 Mb  |source;type;ID;cds;predictiontype;range;exons;protein                                              |
|wb.possible_base_call_error            |1233    |6619       |0.00659    |120.4 Kb |source;type;Name                                                                                   |
|wb.pre_miRNA                           |257     |22154      |0.0218     |103.3 Kb |source;type;ID;Name;Parent;locus                                                                   |
|wb.promoter                            |95      |92870      |0.0909     |31.8 Kb  |source;type;Name                                                                                   |
|wb.protein_coding_primary_transcript   |15594   |54820681   |34         |2.4 Mb   |source;type;ID;Name                                                                                |
|wb.protein_match                       |3022263 |616204488  |56.3       |299.5 Mb |source;type;score;Target                                                                           |
|wb.pseudogenic_rRNA                    |1       |852        |0.00085    |27 Kb    |source;type;ID;Name;Parent                                                                         |
|wb.pseudogenic_transcript              |2031    |3377939    |2.97       |384.4 Kb |source;type;ID;Name;locus                                                                          |
|wb.pseudogenic_tRNA                    |209     |15216      |0.0152     |77.4 Kb  |source;type;ID;Name;Parent                                                                         |
|wb.reagent                             |519568  |54087025   |30.1       |52.6 Mb  |source;type;Target;Name                                                                            |
|wb.regulatory_region                   |73      |2773       |0.00266    |31.5 Kb  |source;type;Name;tf_id;tf_name                                                                     |
|wb.repeat_region                       |116933  |18197219   |16.2       |9.3 Mb   |source;type;score;Target                                                                           |
|wb.RNAi_reagent                        |342818  |188679730  |48.3       |38.5 Mb  |source;type;Target;laboratory;history_name                                                         |
|wb.rRNA                                |22      |10674      |0.0106     |33.4 Kb  |source;type;ID;Name;Parent;locus                                                                   |
|wb.SAGE_tag                            |292984  |4788083    |3.72       |23.7 Mb  |source;type;sequence;count;gene;transcript                                                         |
|wb.scRNA                               |1       |105        |0.000105   |27.1 Kb  |source;type;ID;Name;Parent;locus                                                                   |
|wb.SL1_acceptor_site                   |43207   |86414      |0.0861     |3.4 Mb   |source;type;Name                                                                                   |
|wb.SL2_acceptor_site                   |13445   |26890      |0.0268     |1.1 Mb   |source;type;Name                                                                                   |
|wb.snoRNA                              |345     |47330      |0.0472     |112.6 Kb |source;type;ID;Name;Parent;locus                                                                   |
|wb.SNP                                 |728906  |728906     |0.657      |126.3 Mb |source;type;variation;public_name;polymorphism;consequence;status;substitution;aachange;rflp       |
|wb.snRNA                               |130     |15978      |0.0156     |61.2 Kb  |source;type;ID;Name;Parent;locus                                                                   |
|wb.substitution                        |10036   |40319      |0.017      |1.4 Mb   |source;type;variation;public_name;polymorphism;consequence;status;substitution;aachange;engineered |
|wb.tandem_duplication                  |4024    |445639486  |98.9       |705.3 Kb |source;type;variation;public_name;polymorphism;consequence;insertion                               |
|wb.tandem_repeat                       |53024   |6793271    |4.78       |2 Mb     |source;type;score;Note                                                                             |
|wb.TF_binding_site                     |885742  |406860440  |41.1       |51.4 Mb  |source;type;Name;tf_id;tf_name                                                                     |
|wb.three_prime_UTR                     |49281   |9700647    |3.22       |2.4 Mb   |source;type;Name                                                                                   |
|wb.transcribed_fragment                |4095280 |874039535  |50.3       |140.6 Mb |source;type;score;Note                                                                             |
|wb.transcript_region                   |2024683 |71492795   |39.7       |76.5 Mb  |source;type;score;Note                                                                             |
|wb.transcription_end_site              |92672   |92672      |0.0708     |7.1 Mb   |source;type;Name                                                                                   |
|wb.translated_nucleotide_match         |143840  |6152928    |4.13       |18.5 Mb  |source;type;Target;protein_matches;cds_matches;times_observed                                      |
|wb.transposable_element_insertion_site |15904   |15904      |0.0136     |2.6 Mb   |source;type;variation;public_name;polymorphism;consequence;insertion                               |
|wb.transposable_element                |11256   |4543722    |4.37       |2.1 Mb   |source;type;ID;Name;Family                                                                         |
|wb.tRNA                                |634     |47053      |0.0469     |185.7 Kb |source;type;ID;Name;Parent;locus                                                                   |
|wb.TSS_region                          |73499   |2626912    |2.54       |5.9 Mb   |source;type;Name                                                                                   |
