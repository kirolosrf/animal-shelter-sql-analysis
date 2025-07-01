
-- Insert sample animals
INSERT INTO animals (name, animal_type, breed, age, health_status) VALUES
('Max', 'Dog', 'Labrador', 3, 'Healthy'),
('Bella', 'Dog', 'German Shepherd', 5, 'Injured'),
('Luna', 'Cat', 'Tabby', 2, 'Healthy'),
('Charlie', 'Dog', 'Bulldog', 4, 'Sick'),
('Simba', 'Cat', 'Siamese', 1, 'Healthy'),
('Daisy', 'Dog', 'Beagle', 6, 'Healthy'),
('Milo', 'Cat', 'Maine Coon', 3, 'Healthy'),
('Coco', 'Dog', 'Pit Bull', 4, 'Injured');

-- Insert intake records
INSERT INTO intakes (animal_id, intake_date) VALUES
(1, '2024-12-15'),
(2, '2024-12-20'),
(3, '2025-01-05'),
(4, '2025-01-12'),
(5, '2025-02-01'),
(6, '2025-02-15'),
(7, '2025-03-01'),
(8, '2025-03-10');

-- Insert adoptions
INSERT INTO adoptions (animal_id, adoption_date, return_reason) VALUES
(1, '2024-12-28', NULL),
(2, '2025-01-08', NULL),
(3, '2025-01-18', NULL),
(5, '2025-02-20', NULL),
(6, '2025-02-28', NULL),
(8, '2025-03-22', 'Behavioral issues');
