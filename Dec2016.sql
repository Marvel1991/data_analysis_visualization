use pwh_clinical_data;
select 
(

	SELECT COUNT( * ) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           #and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

           #and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `Total NPA`, 
	 
	 
	 
	(

	SELECT COUNT( distinct HKID ) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           #and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

          # and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `No. of Patients`, 
	

	(

	SELECT COUNT( * ) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           #and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `No. of Positive NPA`, 
	 
	 (

	SELECT COUNT( distinct HKID ) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

          # and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `No. of Positive Patients`, 
	 
	 (

	SELECT COUNT(*) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

           #and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `Total <18 NPA`, 
	 
	 (

	SELECT COUNT( distinct HKID ) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

           #and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `No. of <18 Patients`, 
	 
	 (

	SELECT COUNT( *) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `Total Positive <18 NPA`, 
	 
	 (

	SELECT COUNT( distinct HKID ) 
	FROM `all_data` 
	WHERE (
           Collected_Date > "2016-11-30 24:00:00"  

           and Collected_Date<= "2016-12-31 24:00:00"

           and ( Age_unit = "Months" or Age_unit = "Days" or (req_age <=17 and Age_unit = "Years"))

           and Test_Result = 'Detected  **'

           and Test = "ZMEV"

           and Specimen = "NASOPHARYNGEAL ASPIRATE"
		   )
     ) AS `NO. of Positive <18 Patients` 
	 ;
	 