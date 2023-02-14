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
* $SCT#315124004 "Human immunodeficiency virus viral load (procedure)"

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
Id: cs-patient-enrollment-type
Title: "Patient Type at Enrolment"
Description:  "A list of Custom Patient Types at Enrolment"
* ^experimental = false
* ^caseSensitive = true
* #PMTCT "Mother enrolled in PMTCT program"   
* #Re-enroll "Re-enroll"
  
ValueSet: VSPatientEnrollmentType
Id: vs-patient-enrollment-type
Title: "Patient Type at Enrolment"
Description:  "A list of Patient Types at Enrolment"
* ^experimental = false
* $SCT#185387006 "New patient consultation (procedure)"  
* $SCT#309037001 "Transfer status (finding)" 
* include codes from system CSPatientEnrollmentType









































CodeSystem: CSHIVVLReason
Id: cs-vl-reason-codes
Title: "HIV VL Reason codes"
Description: "A list of Viral Load test reasons"
* ^experimental = false
* ^caseSensitive = true
* #5d4e13af-92ec-4b91-a8e4-97818810e577 "Baseline Viral Load"
* #1259 "Change regimen"
* #163523 "Clinical failure"
* #67143af5-c443-4a4f-a678-f3981b4fcb0f "Confirmation of treatment failure"
* #5632 "Currently breastfeeding child"
* #1434 "Currently pregnant"
* #e185de1e-a9b3-4b10-86df-2300bf4476bb "Persistent low-Level viremia"
* #c2aed192-73fc-405f-8cc2-776a4da81d59 "Recency Assay"
* #843 "Regimen failure"
* #162081 "Repeat"
* #164369 "Results not available"
* #be5d6a4a-4018-49dd-869f-273c9f5fec9e "Routine Viral Load"

ValueSet: VSHIVVLReason
Id: vs-hiv-vl-reason
Title: "HIV VL Reason codes"
Description: "Valueset - Viral Load test reasons"
* ^experimental = false
* include codes from system CSHIVVLReason

ValueSet: VSProcedureCategory
Id: vs-vl-reason-codes
Title: "HIV VL Procedure Categories"
Description: "A list of Viral Load procedure categories"
* ^experimental = false
* $SCT#108252007 "Laboratory procedure (procedure)"

ValueSet: VSProcedureCodeType
Id: vs-vl-procedure-code-type
Title: "HIV VL Procedure Code type"
Description: "A list of codes used to identify the type of procedure"
* ^experimental = false
* $SCT#315124004 "Human immunodeficiency virus viral load (procedure)"