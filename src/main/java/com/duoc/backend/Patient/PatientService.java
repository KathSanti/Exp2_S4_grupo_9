package com.duoc.backend.Patient;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PatientService {

    @Autowired
    private PatientRepository patientRepository;

    public Iterable<Patient> getAllPatients() {
        return patientRepository.findAll();
    }

    public Patient getPatientById(Long id) {
        return patientRepository.findById(id).orElse(null);
    }

    public Patient savePatient(Patient patient) {
        return patientRepository.save(patient);
    }

    public List<Patient> getAllActivePatients() {
    // Retorna únicamente los pacientes cuya propiedad active sea true
    return StreamSupport.stream(patientRepository.findAll().spliterator(), false)
            .filter(Patient::isActive)
            .collect(Collectors.toList());
    }

    public void disablePatient(Long id) {
    Patient patient = patientRepository.findById(id).orElse(null);
    if (patient != null) {
        patient.setActive(false);
        patientRepository.save(patient); 
    }
    
    }
}