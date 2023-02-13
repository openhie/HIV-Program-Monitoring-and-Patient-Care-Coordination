Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct

CodeSystem: CSVLResultCode
Id: cs-vl-result-code
Title: "Viral Load Result Code"
Description: "Viral Load Result Code"
* ^experimental = false
* ^caseSensitive = true
* #VL-RESULT "HIV VL Test Result"

ValueSet: VSVLResultCode
Id: vs-vl-result-code
Title: "Viral Load Result Code"
Description: "Viral Load Result Code"
* ^experimental = false
* include codes from system CSVLResultCode

CodeSystem: CSVLSuppression
Id: cs-vl-suppression
Title: "Viral load Suppressions Status"
Description: "A list of Viral load Statuses"
* ^experimental = false
* ^caseSensitive = true
* #S "Suppressed"
* #UNSUP "Unsuppressed"
* #UNK "Unknown"

ValueSet: VSVLSuppression
Id: vs-vl-suppression
Title: "Viral load Suppressions Status"
Description: "A list of Viral load Statuses"
* ^experimental = false
* include codes from system CSVLSuppression

ValueSet: VSHIVDiagnosis
Id: vs-hiv-diagnosis
Title: "HIV Diagnosis"
Description:  "A list of possible HIV diagnoses"
* ^experimental = false
* $SCT#86406008 "Human immunodeficiency virus infection (disorder)"

ValueSet: VSHIVDeath
Id: vs-hiv-death
Title: "Death"
Description:  "A list of possible HIV deaths"
* ^experimental = false
* $SCT#419099009 "Dead (finding)"

ValueSet: VSHIVTestDone
Id: vs-hiv-test-done
Title: "HIV Test Done"
Description:  "HIV Test Done"
* ^experimental = false
* $SCT#31676001 "Human immunodeficiency virus antigen test (procedure)"

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "ART Regimen Lines"
Description: "A list of ART Regimen Lines"
* ^experimental = false
* $SCT#708255002 "First line treatment (procedure)"
* $SCT#708256001 "Second line treatment (procedure)"
* $SCT#708257005 "Third line treatment (procedure)"

ValueSet: VSARVMedicationRequest
Id: vs-arvtreatment-activity-type
Title: "ARV Treatment Medication Request"
Description: "ARV Treatment Medication Request"
* ^experimental = false
*  $LNC#45260-7 "HIV ART medication"

CodeSystem: CSPatientEnrollmentType
Id: cs-enrollment-type
Title: "Patient Type at Enrolment"
Description:  "A list of Patient Types at Enrolment"
* ^experimental = false
* ^caseSensitive = true
* #PMTCT "Mother enrolled in PMTCT program"   
* #RE "Re-enroll"   
  
ValueSet: VSPatientEnrollmentType
Id: vs-enrollment-type
Title: "Patient Type at Enrolment"
Description:  "A list of Patient Types at Enrolment"
* ^experimental = false
* include codes from system CSPatientEnrollmentType
* $SCT#185387006 "New client"  
* $SCT#309037001 "Transfer in" 