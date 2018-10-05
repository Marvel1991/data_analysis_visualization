use pwh_clinical_data;
select 
	 
	 (

	SELECT COUNT( *) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2014-12-31 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"
           
           and (req_age>=1 and req_age <=17 and Age_unit = "Years")

           and (req_sex='M')

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `Male`,
     
     	 (

	SELECT COUNT( *) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2014-12-31 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"
           
           and (req_age>=1 and req_age <=17 and Age_unit = "Years")

           and (req_sex='F')

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `Female`;
     