Instance: HIVOrganizationExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Organization Example"
Description: "Organization example"
* identifier[HTS].value = "facility1"
* identifier[HTS].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/hiv-organization"
* name = "HIV Test Services Health Facility"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"


Instance: HIVPatientExample
InstanceOf: HIVPatient
Usage: #example
Title: "Patient example"
Description: "Patient example"
* identifier[NID].value = "NID1234567"
* identifier[NID].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/nid"
* active = true
* name.use = #official
* name.family = "Smith"
* name.given[0] = "Jane"
* name.given[1] = "Maria"
* telecom[0].system = #phone
* telecom[0].value = "+27821234567"
* telecom[1].system = #email
* telecom[1].value = "someone@example.com"
* gender = #female
* birthDate = "1990-12-12"
* address.country = "South Africa"
* address.state = "Western Province"
* address.district = "City of Cape Town"
* address.city = "Cape Town"
* managingOrganization = Reference(HIVOrganizationExample)

Instance: TransferOutExample
InstanceOf: TransferOut
Usage: #example
Title: "Transfer-Out Request example"
Description: "Service Request for Transfer-Out example"
* occurrenceDateTime = "2023-01-01"
* performer = Reference(HIVOrganizationExample)
* status = #active
* intent = #proposal
* subject = Reference(HIVPatientExample)