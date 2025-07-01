
-- Create animals table
CREATE TABLE animals (
    animal_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    animal_type VARCHAR(20),
    breed VARCHAR(50),
    age INT,
    health_status VARCHAR(20)
);

-- Create intakes table
CREATE TABLE intakes (
    intake_id SERIAL PRIMARY KEY,
    animal_id INT REFERENCES animals(animal_id),
    intake_date DATE
);

-- Create adoptions table
CREATE TABLE adoptions (
    adoption_id SERIAL PRIMARY KEY,
    animal_id INT REFERENCES animals(animal_id),
    adoption_date DATE,
    return_reason VARCHAR(100)
);
