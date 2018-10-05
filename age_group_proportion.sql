use pwh_clinical_data;
select 
	 
	 (

	SELECT COUNT( *) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2014-12-31 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and (req_age>=1 and req_age <=2 and Age_unit = "Years")

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `1-2`,
     
      (

	SELECT COUNT( *) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2014-12-31 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and (req_age>=3 and req_age <=5 and Age_unit = "Years")

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `3-5`,
     
      (

	SELECT COUNT( *) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2014-12-31 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and (req_age>=6 and req_age <=12 and Age_unit = "Years")

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `6-12`,
     
      (

	SELECT COUNT( *) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2014-12-31 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and (req_age>=13 and req_age <=17 and Age_unit = "Years")

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `13-17`;
	 
