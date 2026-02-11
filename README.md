# QA Automation Portfolio – CourseHub

This repository is part of my professional QA portfolio.
It focuses on showcasing real-world testing practices across different layers of an application.

The project simulates a course management platform and is designed to demonstrate how a QA Engineer approaches quality from end to end: planning, testing, automation, and validation.

---

## 🎯 Project Goals

- Practice and demonstrate UI automation testing
- Design and execute API tests using Postman
- Validate data integrity using SQL queries
- Apply testing strategies across frontend, backend, and database
- Build a maintainable and scalable QA automation structure
- Prepare a portfolio aligned with real interview scenarios

---

## 🧱 Project Scope

The system represents a simplified course platform where:
- Users can authenticate and access the platform
- Courses can be listed and managed
- Users can enroll in courses
- User activity is stored and validated in a relational database

This allows testing at multiple levels:
- UI testing
- API testing
- Database validation

---

## 🛠️ Planned Tech Stack

- Backend: REST API (Node.js)
- Database: PostgreSQL (Dockerized)
- UI Automation: Cypress or Playwright
- API Testing: Postman + Newman
- CI/CD: GitHub Actions
- Version Control: GitHub

---

## 📂 Repository Structure

```text
app/                    # Frontend application
api/                    # Backend services
tests-ui/               # UI automation tests
tests-api-postman/      # API tests and Postman collections
db/                     # Database schema, seed data, and SQL practice
docs/                   # Test strategy and documentation

```

---
## Database Layer

This project includes a MySQL database layer designed for QA validation practice.

- `db/schema.sql` → Table definitions
- `db/seed.sql` → Sample dataset
- `db/queries.sql` → Validation and analysis queries

Focus areas:
- Data integrity
- Relationship validation
- Duplicate detection
- Status validation
- Date-based filtering

---

### Example Query Result

![Duplicate Detection](docs/screenshots/duplicates.png)


---

## 🚧 Project Status

This project is currently under active development.
Each feature and testing layer is tracked using GitHub Issues to simulate a real project workflow.

---

## 📌 Notes

The focus of this repository is testing and quality assurance.

The implementation prioritizes clarity, structure, and real-world scenarios over complexity.

All decisions are documented to reflect a QA-driven mindset.
