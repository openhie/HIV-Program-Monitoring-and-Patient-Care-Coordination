Profile: HIVOrganization
Parent: Organization
Id: hiv-organization
Title: "HIV Organization"
Description: "Organization providing HIV Testing Services"
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier"
* identifier contains
    HTS 1..1
* identifier[HTS].value 1..1
* identifier[HTS].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/hiv-organization" (exactly)
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* name 1..1

Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "Patient"
Description: "A patient resource for an HIV Patient"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    NID 0..1
* identifier[NID].value 0..1
* identifier[NID].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/nid" (exactly)
* active 0..1
* name.given 1..*
* name.family 1..1
* telecom 0..*
* gender 1..1
* birthDate 1..1
* address 0..*
* managingOrganization 1..1

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Target Facility Encounter" 
Description: "This profile represents the facility the patient is being transferred to"
* extension contains HIVCareNextAppointment named next-visit 0..1 MS
* status 1..1
* class 1..1
* subject only Reference(Patient)
* subject 1..1
* period 1..1
* serviceProvider 1..1
* partOf 0..1

Extension: HIVCareNextAppointment
Id: hiv-care-next-visit
Title: "Next Appointment Date"
Description: "A date representing the patient's next scheduled appointment"
* value[x] only dateTime

Profile: TransferringFacilityEncounter
Parent: Encounter
Id: transferring-facility-encounter
Title: "Transferring Facility Encounter" 
Description: "This profile represents the facility the patient is being transferred from"
* status 1..1
* class 1..1
* period 1..1
* serviceProvider 1..1

Profile: ViralLoadSuppression
Parent: Observation
Id: viral-load-suppression
Title: "Viral Load Suppression"
Description: "This profile is to record a Viral Load Suppression observation for a patient"
* status = #final
* code from VSVLResultCode (required)
* subject 1..1
* effectiveDateTime 1..1
* valueInteger 1..1
* interpretation.coding.code from VSVLInterpretation (required)
* interpretation.coding.system = "http://openhie.org/fhir/hiv-program-monitoring/CodeSystem/cs-vl-suppression"
* interpretation.coding.display from VSVLInterpretation (required)
* note 0..1

Profile: HIVDiagnosis
Parent: Condition
Id: hiv-diagnosis
Title: "Diagnosis"
Description: "Confirmation of the diagnosis"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    HPTUI 1..1
* identifier[HPTUI].value 1..1
* identifier[HPTUI].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/hiv-diagnosis" (exactly)
* clinicalStatus 1..1
* verificationStatus 1..1
* code from VSHIVDiagnosis (required)
* subject only Reference(Patient)
* subject 1..1
* encounter 1..1
* recordedDate 1..1
