
# Statement of my coding and data analyzing ability

In order to desmontrate my coding skills, part of my `scripts` duing MSc and MPhil study
were uploaded here. The function of each script was described as follows. Each script __could 
be opened__ by clicking its file name (blue colored):

---

## Linux

As most of bioinformatics softwares require supercomputer or linux server to do the calculation, I treat the ability of use Linux system as one of the most important skills in need. Thus, I keep sharpening my Linux skills. Now with more than 3 years experience in bioinformatics, I could set up bioinformatics analysis pipeline on Linux server and carry out data management.
For example, 
*carring out data management on Linux Server, e.g. directives like makdir,cp, mv, rm, less, 
*downloading and implementing softwares/algorithms on Server, e.g. FastQC, cutadapt, bowtie, tophat, DESeq et al.
*submit analysis jobs through Job Scheduling System (PBS) at supercomputer or server cluster. 
*write bash script to handle batch data or jobs.


## Perl

[genebank_nucleotide_parse.pl](https://github.com/Marvel1991/data_analysis_visualization/blob/master/get_accession_strain-name_location_length_collection_add_vp1_version3_final.pl)

This is a __Perl__ script adopted Bioperl to parse the meta data retrieved from GenBank 
nucleotide database, the downloaded files were in .gb format,using this script, the VP1 
nucleotide sequences of around 2,000 enterovirus d68 were extracted from the .gb file.
Thus, the download analysis such as alignment, phylogenetic, mutation rate calculation could 
be carried out, gigantic amount of manpower was saved, without this tool, this data cleaning 
work would be quite labor intensive. 

## MySQL

[sex_group_proportion.sql](https://github.com/Marvel1991/data_analysis_visualization/blob/master/sex_proportion.sql)
[age_group_proportion.sql](https://github.com/Marvel1991/data_analysis_visualization/blob/master/age_group_proportion.sql)

In order to manage over 2 Million rows clinical records data during my MPhil study,a __MySQL database__
was established. The reason for using MySQL was that the 2 Million row data would be a big challenge
for management and analysis if EXCEL was adopted. These two scripts were used for summarizing the 
demographics for clinical samples. The data was stratified by age and gender. The SQL scripts were used
for counting the number of patients assigned to diffent groups.

## R

[transform_data_add_Yr_Month_then_monthly_plot.R](https://github.com/Marvel1991/data_analysis_visualization/blob/master/transform_data_add_Yr_Month_then_monthly_plot.R)

In order to transform the date information of samples into desired formats and plot the 
stacked bar chart, this R script was constructed. The advantages of R script are that the 
the code is reusable, re-plotting chart in furture with new data will become elegant and easy.

[multinomial_test.R](https://github.com/Marvel1991/data_analysis_visualization/blob/master/multi_nomial_A_ref.R)

This R script was used to carry out multi-nomial logistic regression in R.

## Data Visualization 

[strain_color_code.csv](https://github.com/Marvel1991/data_analysis_visualization/blob/master/strain_color_code.csv)
[tree_ps_v3.png](https://github.com/Marvel1991/data_analysis_visualization/blob/master/tree_ps_v3.png)

In order to show my data visualization ability, a high-quality phylogenetic tree picture draw by me was uploaded.
The tree come from my paper manuscript in EV-D68 complete genome sequencing.

These two files were used to visualize time clock maximum likelihood phylogenetic tree. Tools adopted during the 
generation of tree plot include: R, ITOL, and Adobe Illustrator, Adobe Photoshop.


