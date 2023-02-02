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

Profile: TransferOut
Parent: ServiceRequest
Id: transferout
Title: "Transfer-Out Request"
Description: "Service Request for Transfer-Out"
* occurrenceDateTime 0..1
* performer 0..*