-- medical histories table
CREATE TABLE medical_histories (
    id SERIAL NOT NULL PRIMARY KEY,
    patient_id INT NOT NULL,
    admitted_at TIMESTAMP NOT NULL,
    status VARCHAR(50),
);

-- patient table 
CREATE TABLE patients (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
);

-- invoice table 
CREATE TABLE invoices (
    id SERIAL NOT NULL PRIMARY KEY,
    total_amount DECIMAL(10,2) NOT NULL,
    generated_at TIMESTAMP NOT NULL,
    paid_at TIMESTAMP,
    CONSTRAINT medical_history_id FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
);

-- invoice items table
CREATE TABLE invoice_items (
    id SERIAL NOT NULL PRIMARY KEY,
    quantity DECIMAL NOT NULL,
    invoice_id INT NOT NULL,
    treatment_id INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT invoice_id FOREIGN KEY (invoice_id) REFERENCES invoices(id),
    CONSTRAINT treatment_id FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);

-- treatments table
CREATE TABLE treatments (
    id SERIAL NOT NULL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
);

-- Many-to-many relationship
CREATE TABLE medial_treatments (
     medical_history_id INTEGER REFERENCES medical_histories(id),
     treatment_id INTEGER REFERENCES treatments(id)
);

-- Indexes
CREATE INDEX medical_histories_index ON invoices(medical_history_id);
CREATE INDEX patients_index ON medical_histories(patient_id);
CREATE INDEX invoices_index ON invoice_items(invoice_id);
CREATE INDEX treatments_index ON invoice_items(treatment_id);
CREATE INDEX treatments_index ON medial_treatments(treatment_id);
CREATE INDEX medical_histories_index ON medial_treatments(medical_history_id);
