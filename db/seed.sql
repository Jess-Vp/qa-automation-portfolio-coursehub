
-- =============================================
-- Seed Data - QA Automation Portfolio (CourseHub)
-- This dataset is intentionally designed
-- to support JOINs, GROUP BY, HAVING,
-- duplicate detection and status validation.
-- =============================================


-- ==============================
-- USERS
-- ==============================

INSERT INTO users (id, name, email, created_at) VALUES
(1, 'Ana Test', 'ana@test.com', DATE_SUB(NOW() - INTERVAL '10 days')),
(2, 'Bruno QA', 'bruno@test.com', DATE_SUB(NOW() - INTERVAL '8 days')),
(3, 'Carla Dev', 'carla@test.com', DATE_SUB(NOW() - INTERVAL '6 days')),
(4, 'Diego User', 'diego@test.com', DATE_SUB(NOW() - INTERVAL '4 days')),
(5, 'Eva Duplicate', 'ana@test.com', DATE_SUB(NOW() - INTERVAL '2 days')); -- email duplicado intencional

-- ==============================
-- COURSES
-- ==============================

INSERT INTO courses (id, title, level, created_at) VALUES
(10, 'Intro to QA', 'beginner', DATE_SUB(NOW() - INTERVAL '15 days')),
(11, 'API Testing with Postman', 'intermediate', DATE_SUB(NOW() - INTERVAL '12 days')),
(12, 'SQL for Testers', 'intermediate', DATE_SUB(NOW() - INTERVAL '9 days')),
(13, 'Automation with Cypress', 'advanced', DATE_SUB(NOW() - INTERVAL '5 days'));


-- ==============================
-- ENROLLMENTS
-- ==============================

INSERT INTO enrollments (user_id, course_id, status, enrolled_at) VALUES
(1, 10, 'active', DATE_SUB(NOW() - INTERVAL '9 days')),
(1, 12, 'completed', DATE_SUB(NOW() - INTERVAL '3 days')),
(2, 11, 'active', DATE_SUB(NOW() - INTERVAL '7 days')),
(3, 10, 'cancelled', DATE_SUB(NOW() - INTERVAL '5 days')),
(4, 13, 'active', DATE_SUB(NOW() - INTERVAL '2 days')),
(5, 10, 'active', DATE_SUB(NOW() - INTERVAL '1 day'));