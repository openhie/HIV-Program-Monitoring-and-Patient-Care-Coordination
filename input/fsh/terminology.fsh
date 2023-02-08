Alias: $LNC = http://loinc.org

CodeSystem: CSARTRegimenLines
Id: cs-artregimen-lines
Title: "ART Regimen Lines"
Description: "A list of ART Regimen Lines"
* ^experimental = false
* ^caseSensitive = true
* #FIRST-LINE "First line ARTs"
* #SECOND-LINE "Second line ARTs"
* #THIRD-LINE "Third line ARTs"
* #SPECIAL-UNKNOWN "Special/Unknown"

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "VSART Regimen Lines"
Description: ""
* ^experimental = false
* include codes from system CSARTRegimenLines

ValueSet: VSARVTreatmentActivityType
Id: vs-arvtreatment-activity-type
Title: "ARV Treatment Activity Type"
Description: "ARV Treatment Activity Type"
* ^experimental = false
*  $LNC#45260-7 "HIV ART medication"