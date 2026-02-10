-- ============================================
-- SQL Practice Queries (QA Portfolio)
-- Purpose: data validation + interview-ready queries
-- Tables: users, courses, enrollments
-- ============================================

-- 1) Quick sanity checks
SELECT COUNT(*) AS total_users FROM users;
SELECT COUNT(*) AS total_courses FROM courses;
SELECT COUNT(*) AS total_enrollments FROM enrollments;

-- 2) List users (most recent first)
SELECT id, full_name, email, created_at
FROM users
ORDER BY created_at DESC;

-- 3) List courses
SELECT id, title, created_at
FROM courses
ORDER BY created_at DESC;

-- 4) Show enrollments with user + course details (classic JOIN)
SELECT
  e.id AS enrollment_id,
  u.full_name,
  u.email,
  c.title AS course_title,
  e.enrolled_at
FROM enrollments e
JOIN users u ON u.id = e.user_id
JOIN courses c ON c.id = e.course_id
ORDER BY e.enrolled_at DESC;

-- 5) Count enrollments per course (include courses with zero enrollments)
SELECT
  c.id,
  c.title,
  COUNT(e.id) AS total_enrollments
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
GROUP BY c.id, c.title
ORDER BY total_enrollments DESC;

-- 6) Count enrollments per user (include users with zero enrollments)
SELECT
  u.id,
  u.full_name,
  u.email,
  COUNT(e.id) AS total_enrollments
FROM users u
LEFT JOIN enrollments e ON e.user_id = u.id
GROUP BY u.id, u.full_name, u.email
ORDER BY total_enrollments DESC;

-- 7) Find courses with zero enrollments (gap detection)
SELECT
  c.id,
  c.title
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
WHERE e.id IS NULL;

-- 8) Find users with zero enrollments (gap detection)
SELECT
  u.id,
  u.full_name,
  u.email
FROM users u
LEFT JOIN enrollments e ON e.user_id = u.id
WHERE e.id IS NULL;

-- 9) Data quality: detect duplicate emails (should return none because email is UNIQUE)
SELECT
  email,
  COUNT(*) AS occurrences
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- 10) Data quality: check for null/empty critical fields
SELECT *
FROM users
WHERE email IS NULL
   OR full_name IS NULL
   OR TRIM(email) = ''
   OR TRIM(full_name) = '';

-- 11) Latest enrollments (time-based validation)
SELECT *
FROM enrollments
ORDER BY enrolled_at DESC
LIMIT 10;

-- 12) Join-based filter: users enrolled in a specific course title
-- Replace 'Intro to QA' with any course title you want
SELECT
  u.full_name,
  u.email
FROM users u
JOIN enrollments e ON e.user_id = u.id
JOIN courses c ON c.id = e.course_id
WHERE c.title = 'Intro to QA'
ORDER BY u.full_name;
