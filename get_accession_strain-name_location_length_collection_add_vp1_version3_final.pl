use Bio::SeqIO;
my $seq_object;
#use v5.10;

my $gb_file = "to_add_canada_samples_which_could_not_be_accessed_by_VP1_keyword_search_asof_13_mar_2018.gb";
my $ORIGIN = "ORIGIN";
my $mat_peptide = "mat_peptide";
my @further_strains;
my $seqio_object = Bio::SeqIO->new(-file => $gb_file, -format => genbank,);

print "acc.no*length*strain_name*country*collection_date*nt_seq_region*nt_seq\n";


while ($seq_object = $seqio_object->next_seq){

my $count ="zero";


#print accession_number

print  $seq_object ->accession_number ."*";

#print nt length

print  $seq_object ->length ."*";



for  $feat_object ($seq_object->get_SeqFeatures) {

#get source features

if($feat_object->primary_tag eq "source"){

#get strain name

my @strain;

if ($feat_object->has_tag("strain")) {
  @strain = $feat_object->get_tag_values("strain");
}elsif($feat_object->has_tag("isolate")){
  @strain = $feat_object->get_tag_values("isolate");
}else{
  @strain = "strain_NA".$seq_object->accession_number;
}

#get location

my @location;
if($feat_object->has_tag("country")){
  @location= $feat_object->get_tag_values("country");
}else{
  @location="location_NA";
}

#get collection date

my @collection_date;
if ($feat_object->has_tag("collection_date")) {
  @collection_date= $feat_object->get_tag_values("collection_date");
}else{
  @collection_date="not_available";
}


#print strain name

foreach(@strain){
print "$_*";
}

#print location name

foreach(@location){
print "$_*";
}

#print collection date

foreach(@collection_date){
print "$_*";
}

}



#get the VP1 sequence



if ($feat_object->primary_tag eq "mat_peptide" ) {
my@product_name = $feat_object->get_tag_values('product');
foreach $product_name (@product_name){
  if ($product_name=~ m/VP1/) {


  print "$product_name*";
  print $feat_object->spliced_seq->seq,"\n";
$count =1;

        }
      }
    }







}



#waiting for the end of the this loop
 if ($count eq "zero"){
    # print "no VP1 found!","\n";                            		 #count=0, means no VP1 tag found
print "not_annotated*";
print $seq_object->seq,"\n";


}
}







=pod
#add CDS seq if VP1 not found
if ($count eq "zero"){
        #count=0, means no VP1 tag found
		 for  $feat_object ($seq_object->get_SeqFeatures) {
		 if ($feat_object ->primary_tag eq "CDS"){
		 print "CDS*";
		 print $feat_object->spliced_seq->seq,"\n";
		 last;
		 }else{
		 print "NA*NA\n";

		}

	}
	}
=cut
