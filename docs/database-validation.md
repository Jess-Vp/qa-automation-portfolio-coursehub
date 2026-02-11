# Database Validation Approach (MySQL)

This dataset was designed to simulate a course platform.

Validation focus:
- Duplicate detection (emails)
- Enrollment status validation
- Missing relationships (users without enrollments)
- Course activity tracking
- Date-based filtering

The queries in `queries.sql` demonstrate:
- INNER JOIN / LEFT JOIN
- GROUP BY / HAVING
- Date filtering (DATE_SUB)
- QA-oriented validation checks
