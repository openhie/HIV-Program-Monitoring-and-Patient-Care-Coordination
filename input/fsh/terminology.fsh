Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $ICD11 = http://icd.who.int/icd11/mms

ValueSet: VSVLResultCode
Id: vs-vl-result-code
Title: "Viral Load Result Code"
Description: "A code used to indicate the category for the lab result."
* ^experimental = false
* $SCT#398579006 "Human immunodeficiency virus-1 nucleic acid assay (procedure)"

ValueSet: VSVLSuppression
Id: vs-vl-suppression
Title: "Viral Load Suppressions Status"
Description: "Describes a patient's current viral load status."
* ^experimental = false
* $SCT#245780008 "Suppressed (qualifier value)"
* $SCT#19032002 "Uncontrolled (qualifier value)" //Unsuppressed
* $SCT#261665006 "Unknown (qualifier value)"

ValueSet: VSCondition
Id: vs-condition
Title: "Conditions"
Description:  "A list of possible HIV conditions."
* ^experimental = false
* $SCT#86406008 "Human immunodeficiency virus infection (disorder)"

ValueSet: VSHIVDeath
Id: vs-hiv-death
Title: "Death"
Description:  "A list of possible HIV deaths"
* ^experimental = false
* $SCT#419620001 "Death (event)"

ValueSet: VSHIVTestDone
Id: vs-hiv-test-done
Title: "HIV Test Done"
Description:  "Used by the observation to indicate that a HIV test was performed."
* ^experimental = false
* $SCT#315124004 "Human immunodeficiency virus viral load (procedure)"

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "ART Regimen Lines"
Description: "A list of ART regimen therapeutic lines."
* ^experimental = false
* $SCT#708255002 "First line treatment (procedure)"
* $SCT#708256001 "Second line treatment (procedure)"
* $SCT#708257005 "Third line treatment (procedure)"

ValueSet: VSARVMedicationRequest
Id: vs-arvtreatment-activity-type
Title: "ARV Treatment Medication Request"
Description: "Codes used to represent a medication request for ART."
* ^experimental = false
*  $LNC#45260-7 "HIV ART medication"
  
ValueSet: VSPatientEnrollmentType
Id: vs-patient-enrollment-type
Title: "Patient Type at Enrolment"
Description:  "A list of Patient Types at Enrolment"
* ^experimental = false
* $SCT#185387006 "New patient consultation (procedure)"  
* $SCT#309037001 "Transfer status (finding)" 
* $SCT#182837001 "Restart of medication (procedure)" 
* $LNC#LA6505-7 "PMTCT"

ValueSet: VSSpecimenType
Id: vs-specimen-type
Title: "Specimen Type Used In Viral Load testing"
Description:  "A list of specimen types."
* ^experimental = false
* $SCT#119361006 "Plasma specimen (specimen)"
* $SCT#440500007 "Dried blood spot specimen (specimen)"
* $SCT#441620008 "Oral fluid specimen (specimen)"
* $SCT#258580003 "Whole blood specimen (specimen)"
* $SCT#119364003 "Serum specimen (specimen)"

ValueSet: VSTestTypes
Id: vs-test-types
Title: "Test Types"
Description: "A list of HIV test types"
* ^experimental = false
* $LNC#25842-6 "HIV 2 proviral DNA [Presence] in Specimen by NAA with probe detection"   
* $LNC#25836-8 "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection"
* $LNC#24467-3 "CD3+CD4+ (T4 helper) cells [#/volume] in Blood"

ValueSet: VSReasonForAssessmentOrTestNotPerformed
Id: vs-reason-for-assessment-or-test-not-performed
Title: "Reason for Assessment or Test Not Performed"
Description: "A list of reasons associated with the service request for the lab order."
* ^experimental = false
//Reasons for assessment
* $SCT#77386006 "Currently pregnant"
* $SCT#428450006 "Repeat"
* $SCT#171111007 "Results not available"
* $SCT#266721009 "Absent response to treatment"
* $SCT#170564007 "Chronic disease - treatment changed (finding)"
* $SCT#413712001 "Breastfeeding (mother) (observable entity)"
* $SCT#315124004 "Baseline Viral Load / Routine Viral Load"
* $SCT#2528003 "Persistent low-Level viraemia"
//Reasons test not performed
* $SCT#441510007 "Blood sample coagulated" 
* $SCT#123840003 "Contaminated specimen"
* $SCT#397933008 "Equipment failure"
* $SCT#281264009 "Inappropriate sample container used"
* $SCT#281268007 "Insufficient sample"
* $SCT#281265005 "Specimen not labeled"
* $SCT#419182006 "Supplies not available"

ValueSet: VSCarePlanActivityOutcome
Id: vs-careplan-outcome
Title: "ARV treatment outcomes"
Description: "A list of possible ARV treatment outcomes."
* ^experimental = false
* $SCT#737038009 "Declined consent for treatment (finding)"
* $SCT#386473003 "Telephone follow-up (procedure)"

ValueSet: VSReasonForSampleCancellationOrRejection
Id: vs-reason-sample-cancelled-or-rejected
Title: "Reasons why a lab order was cancelled or rejected"
Description: "Reasons why a lab order was cancelled or rejected."
* ^experimental = false
* $SCT#281264009 "Inappropriate bottle or container for sample (finding)"
* $SCT#281266006 "No sample received (finding)"
* $SCT#135839007 "Sample rejected (finding)"

ValueSet: VSARVRegimen
Id: vs-arv-regimen
Title: "A list of ARV regimen"
Description: "A list of ARV regimen."
* ^experimental = false
* $SCT#387105006 "Didanosine (DDI)"
* $SCT#387005008 "Abacavir (ABC)"
* $SCT#772188001 "Abacavir and lamivudine (ABC + 3TC)"
* $SCT#427314002 "ABC + 3TC + ATV/r"
* $SCT#427314002 "ABC + 3TC + DRV/r"
* $SCT#427314002 "ABC + 3TC + DTG"
* $SCT#427314002 "ABC + 3TC + LPV/r"
* $SCT#427314002 "ABC + 3TC + RAL"
* $SCT#878898002 "Atazanavir/ritonavir (ATV/r)"
* $SCT#427314002 "AZT + 3TC + ATV/r"
* $SCT#427314002 "AZT + 3TC + DRV/r"
* $SCT#427314002 "AZT + 3TC + DTG"
* $SCT#427314002 "AZT + 3TC + LPV/r"
* $SCT#427314002 "AZT + 3TC + NVP"
* $SCT#427314002 "AZT + 3TC + RAL"
* $SCT#427314002 "AZT+ 3TC + ATV/r"
* $SCT#427314002 "AZT+ 3TC + LPV/r"
* $SCT#427314002 "Darunavir/ritonavir (DRV/r)"
* $SCT#713464000 "Dolutegravir (DTG)"
* $SCT#387001004 "Efavirenz (EFV)"
* $SCT#404856006 "Emtricitabine (FTC)"
* $SCT#432121008 "Etravirine (ETV)"
* $SCT#386897000 "Lamivudine (3TC)"
* $SCT#776569000 "Lopinavir/ritonavir (LPV/r)"
* $SCT#386898005 "Nevirapine (NVP)"
* $SCT#429707008 "Raltegravir (RAL)"
* $SCT#703123005 "Rilpivirine (RIL)"
* $SCT#386896009 "Ritonavir (RTV)"
* $SCT#386895008 "Stavudine (D4T)"
* $SCT#427314002 "TAF + 3TC + DTG"
* $SCT#427314002 "TDF + 3TC  + DRV/r"
* $SCT#427314002 "TDF + 3TC + ATV/r"
* $SCT#427314002 "TDF + 3TC + DTG"
* $SCT#427314002 "TDF + 3TC + EFV"
* $SCT#427314002 "TDF + 3TC + FTC"
* $SCT#427314002 "TDF + 3TC + LPV/r"
* $SCT#427314002 "TDF + FTC  + DRV/r"
* $SCT#427314002 "TDF + FTC + ATV/r"
* $SCT#427314002 "TDF + FTC + DTG"
* $SCT#427314002 "TDF + FTC + LPV/r"
* $SCT#422091007 "Tenofovir (TDF)"
* $SCT#421203005 "Tenofovir disoproxil (TDF)"
* $SCT#414091005 "Tenofovir disoproxil and emtricitabine (TDF + FTC)"
* $SCT#427314002 "Tenofovir disoproxil and lamivudine (TDF + 3TC)"
* $SCT#387151007 "Zidovudine (AZT)"
* $SCT#776469003 "Zidovudine and lamivudine (AZT + 3TC)"

ValueSet: VSTransferredOut
Id: vs-transferred-out
Title: "Transferred out"
Description: "Transferred out codes"
* ^experimental = false
* $LNC#LA20597-3 "Transferred to another hospital"