# Database – CourseHub (QA Portfolio)

This folder contains the database assets used for SQL practice and data validation in the CourseHub QA portfolio project.

The database layer is used to:
- Validate API behavior through data checks
- Practice interview-ready SQL queries (JOINs, GROUP BY, HAVING, date filters)
- Perform QA-oriented data quality validations (duplicates, gaps, missing relationships)

## Purpose

This database is designed to:
- Practice SQL queries (SELECT, JOIN, GROUP BY, HAVING)
- Support API testing scenarios
- Simulate real-world QA data validation cases

---

## 📂 Contents

```text
db/
├─ schema/
│  ├─ schema.sql      # Tables and relationships
│  └─ queries.sql     # SQL practice + QA data validations
└─ seed/
   └─ seed.sql        # Sample data for local testing
```

---

## 🧱 Schema

users: platform users (unique email)

courses: available courses

enrollments: relationship between users and courses

---

## 🌱 Seed Data

Seed scripts provide a realistic dataset to run queries and validations.

---

## Notes

The database is currently designed at schema level only.
Execution and local setup (PostgreSQL / Docker) will be added in later stages.