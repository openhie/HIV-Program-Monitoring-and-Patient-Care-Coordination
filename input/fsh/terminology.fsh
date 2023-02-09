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

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "ART Regimen Lines"
Description: "A list of ART Regimen Lines"
* ^experimental = false
* $SCT#708255002 "First line treatment (procedure)"
* $SCT#708256001 "Second line treatment (procedure)"
* $SCT#708255002 "Third line treatment (procedure)"

ValueSet: VSARVTreatmentActivityType
Id: vs-arvtreatment-activity-type
Title: "ARV Treatment Activity Type"
Description: "ARV Treatment Activity Type"
* ^experimental = false
*  $LNC#45260-7 "HIV ART medication"