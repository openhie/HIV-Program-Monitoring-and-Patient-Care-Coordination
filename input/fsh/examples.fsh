Instance: HIVOrganizationExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Organization Example"
Description: "Organization example"
* identifier[XX].value = "facility1"
* identifier[XX].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/hiv-organization"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
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

* identifier[MR].value = "ORG1-0765712"
* identifier[MR].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/mr"
* identifier[MR].type.coding.code = #MR
* identifier[MR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
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

Instance: TargetFacilityEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Target Facility Encounter example" 
Description: "Target Facility Encounter example"
* extension[next-visit].valueDateTime = "2022-10-22"
* status = #finished
* class.code = #AMB
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(HIVPatientExample)
* period.start = "2022-12-01"
* period.end = "2023-01-20"
* serviceProvider = Reference(HIVOrganizationExample)
* partOf = Reference(TransferringFacilityEncounterExample)
* episodeOfCare = Reference(HIVEpisodeOfCareExample)

Instance: TransferringFacilityEncounterExample
InstanceOf: TransferringFacilityEncounter
Usage: #example
Title: "Transferring Facility Encounter example" 
Description: "Transferring Facility Encounter example"
* status = #finished
* class.code = #AMB
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* period.start = "2022-12-01"
* period.end = "2023-01-20"
* serviceProvider = Reference(HIVOrganizationExample)

Instance: HIVTestResultExample
InstanceOf: HIVTestResult
Usage: #example
Title: "Viral Load Suppression example" 
Description: "Viral Load Suppression example"
* status = #final
* code = $SCT#398579006
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueInteger = 1001
* interpretation = $SCT#19032002
* note.text = "Viral load not suppressed"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(HIVOrganizationExample)

Instance: HIVDiagnosisExample
InstanceOf: HIVDiagnosis
Usage: #example
Title: "HIV Condition example"
Description: "Showing a confirmed HIV diagnosis"
* identifier[PI].value = "abc123"
* identifier[PI].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/hiv-diagnosis"
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* clinicalStatus = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* verificationStatus = #confirmed
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* code = $SCT#86406008
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* recordedDate = "2021-05-18"
* note.text = "Additional information regarding the HIV diagnosis"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: DeathExample
InstanceOf: Death
Usage: #example
Title: "Patient Death example"
Description: "Patient Death example"
* status = #final
* code = $SCT#419620001
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2023-02-05"
* note.text = "Deatils regarding death"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: DateHIVTestDoneExample
InstanceOf: DateHIVTestDone
Usage: #example
Title: "Date HIV Test Done example"
Description: "Date HIV Test Done example"
* status = #final
* code = $SCT#315124004
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-12-10"
* note.text = "Additional information regarding the HIV test"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: ARVTreatmentExample
InstanceOf: ARVTreatment
Usage: #example
Title: "ARVCarePlan example"
Description: "ARVCarePlan example"
* status = #active
* intent = #plan
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* period.end = "2022-12-01"
* activity.detail.kind = #MedicationRequest
* activity.detail.code = $LNC#45260-7 
* activity.detail.status = #in-progress
* activity.detail.productCodeableConcept = $SCT#387005008
* activity.detail.extension[artRegimenLine].valueCodeableConcept = $SCT#708255002
* activity.detail.scheduledPeriod.start = "2023-01-01"
* activity.detail.scheduledPeriod.end = "2023-01-01"
* note.text = "Additional information regarding the ARV treatment prescribed"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVEpisodeOfCareExample
InstanceOf: HIVEpisodeOfCare
Usage: #example
Title: "HIV Episode Of Care"
Description: "This resource is used for Management of a Patient's HIV Programme."
* identifier[PI].value = "abc123"
* identifier[PI].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/enrollment-unique-id" (exactly)
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* status = #active
* type = $SCT#182837001
* diagnosis.condition = Reference(HIVDiagnosisExample)
* patient = Reference(HIVPatientExample)
* period.start = "2021-05-18"
* period.end = "2021-05-18"

Instance: VLSpecimenExample
InstanceOf: VLSpecimen
Usage: #example
Title: "Viral Load Specimen example"
Description: "Viral Load Specimen example"
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/specimen-id" (exactly)
* identifier[USID].type.coding.code = #USID
* identifier[USID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* type = $SCT#119361006
* subject = Reference(HIVPatientExample)
* collection.collectedDateTime = "2022-07-28"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVServiceRequestLocationExample
InstanceOf: HIVServiceRequestLocation
Usage: #example
Title: "HIV Service Request Location example"
Description: "HIV Service Request Location example"
* identifier[XX].value = "facility2"
* identifier[XX].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/hiv-service-request-location"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name = "Laboratory Services"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"

Instance: PractitionerExample
InstanceOf: HIVPractitioner
Usage: #example
Title: "Practitioner example"
Description: "Practitioner example"
* name.given = "James"
* name.family = "Smith"
* telecom.system = #phone
* telecom.value = "27537652509"

Instance: HIVServiceRequestExample
InstanceOf: HIVServiceRequest
Usage: #example
Title: "HIV Lab Order example"
Description: "HIV Lab Order example"
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/lab-order-identifier"
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* status = #completed
* intent = #order
* code = $LNC#25836-8
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(PractitionerExample)
* performer = Reference(HIVServiceRequestLocationExample)
* doNotPerform = false
* reasonCode = $SCT#428450006
* specimen = Reference(VLSpecimenExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabOrderTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "Lab Order example"
Description: "Lab Order example"
* identifier[FILL].system = "http://openhie.org/fhir/hiv-program-monitoring/lab-integration/order-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* basedOn = Reference(HIVServiceRequestExample)
* status = #requested
* intent = #order
* executionPeriod.start = "2022-07-28"
* lastModified = "2022-07-28"
* requester = Reference(HIVOrganizationExample)
* owner = Reference(HIVOrganizationExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabResultTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "Lab Result Task example"
Description: "Lab Result Task example"
* identifier[FILL].system = "http://openhie.org/fhir/hiv-program-monitoring/lab-integration/order-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* basedOn = Reference(HIVServiceRequestExample)
* status = #completed
* intent = #order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* requester = Reference(HIVOrganizationExample)
* owner = Reference(HIVOrganizationExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"
* output.type = $SCT#398579006
* output.valueReference = Reference(HIVLabResultsDiagnosticReportExample)

Instance: HIVLabOrderCancellationTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "HIV Lab Order Cancellation  example"
Description: "HIV Lab Order Cancellation Task example"
* identifier[FILL].system = "http://openhie.org/fhir/hiv-program-monitoring/lab-integration/order-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* basedOn = Reference(HIVServiceRequestExample)
* status = #cancelled
* statusReason = $SCT#281264009 
* intent = #order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* requester = Reference(HIVOrganizationExample)
* owner = Reference(HIVOrganizationExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabOrderRejectionTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "HIV Lab Order Rejection  example"
Description: "HIV Lab Order Rejection Task example"
* identifier[FILL].system = "http://openhie.org/fhir/hiv-program-monitoring/lab-integration/order-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* basedOn = Reference(HIVServiceRequestExample)
* status = #rejected
* statusReason = $SCT#135839007 
* intent = #order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* requester = Reference(HIVOrganizationExample)
* owner = Reference(HIVOrganizationExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabResultsDiagnosticReportExample
InstanceOf: HIVDiagnosticReport
Usage: #example
Title: "HIV Lab Results Diagnostic Report example"
Description: "HIV Lab Results Diagnostic Report example"
* basedOn = Reference(HIVServiceRequestExample)
* status = #final
* code = $LNC#25836-8 
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* performer = Reference(PractitionerExample)
* result = Reference(HIVTestResultExample)
* conclusion = "Some conclusion text"

Instance: TransferredOutServiceRequestExample
InstanceOf: TransferredOutServiceRequest
Usage: #example
Title: "Patient Transferred Out Example"
Description: "Patient Transferred Out Example"
* status = #completed
* intent = #order
* code = $LNC#LA20597-3
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(PractitionerExample)
* performer = Reference(HIVOrganizationPatientTransferredToExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes about the transfer"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVOrganizationPatientTransferredToExample
InstanceOf: HIVOrganizationPatientTransferredTo
Usage: #example
Title: "HIV Organization Patient Is Transferred To Example"
Description: "HIV Organization Patient Is Transferred To Example"
* identifier[XX].value = "facility1"
* identifier[XX].system = "http://openhie.org/fhir/hiv-program-monitoring/identifier/hiv-organization"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name = "HIV Test Services Health Facility"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"

Instance: ARVTreatmentRefusedExample
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV Treatment Refused Example"
Description: "ARV Treatment Refused Example"
* status = #completed
* intent = #plan
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* period.end = "2022-12-01"
* activity.outcomeCodeableConcept = $SCT#737038009
* activity.detail.status = #not-started
* activity.detail.scheduledPeriod.start = "2023-01-01"
* activity.detail.scheduledPeriod.end = "2023-01-01"
* note.text = "Additional information regarding the patient's refusal for the prescribed ARV treatment"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: ARVTreatmentContactedExample
InstanceOf: ARVTreatment
Usage: #example
Title: "Contacted For ARV Treatment Example"
Description: "Contacted For ARV Treatment Example"
* status = #completed
* intent = #plan
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* period.end = "2022-12-01"
* activity.outcomeCodeableConcept = $SCT#386473003
* activity.detail.status = #not-started
* activity.detail.scheduledPeriod.start = "2023-01-01"
* activity.detail.scheduledPeriod.end = "2023-01-01"
* note.text = "Additional information in regards to contacting the patient for ARV treatment."
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"