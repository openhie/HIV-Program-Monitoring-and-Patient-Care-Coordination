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
* contact[0].relationship = #N
* contact[0].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].name.given = "John" 
* contact[0].name.family = "Doe"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "+27829999999"
* managingOrganization = Reference(HIVOrganizationExample)