Alias: $LNC = http://loinc.org

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

CodeSystem: CSVLInterpretation
Id: cs-vl-interpretation
Title: "Viral load Interpretation"
Description: "A list of Viral load Interpretations"
* ^experimental = false
* ^caseSensitive = true
* #S "Suppressed"
* #UNSUP "Unsuppressed"
* #UNK "Unknown"

ValueSet: VSVLInterpretation
Id: vs-vl-interpretation
Title: "Viral load Interpretation"
Description: "Valueset - Viral load Interpretations"
* ^experimental = false
* include codes from system CSVLInterpretation