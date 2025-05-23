 MySQL Database Testing Portfolio

![Database Testing](https://img.shields.io/badge/Testing-MySQL-blue)
![QA Engineering](https://img.shields.io/badge/Role-QA%20Engineer-success)

A practical demonstration of SQL testing skills for QA Engineering roles, showcasing data validation, constraint testing, and error handling in MySQL.

## 🎯 Project Overview

This portfolio demonstrates essential database testing techniques through:
- **Data validation tests**
- **Constraint enforcement verification**
- **Foreign key relationship testing**
- **Proper error handling scenarios**
- **Safe data modification practices**

## 📂 Repository Structure
sql-testing-portfolio/
-│
-├── index.html # Portfolio webpage
- ├── assets/
- ├── GITLOGO.png
- ├── screenshots/
- │ ├─constraint.test
- │ ├─data.validation
- │ ├─safe.delete.seq
- ├── scripts/
- │ ├── database/
- │ ├── schema.sql # Database schema
- │ ├── test cases/
- │ ├── test_cases.sql # All test queries
- ├── LICENSE
- ├── README.md # This documentation
- └── .gitignore # Ignore unnecessary files


## 🔍 Test Cases Demonstrated

### 1. Data Validation Tests
- Price range validation (`products.price < 100`)
- NULL value checks (`customers.email IS NULL`)

### 2. Constraint Tests
- CHECK constraint violation (negative prices)
- FOREIGN KEY constraint (delete parent record)
- PRIMARY KEY requirement (safe updates)

### 3. Successful Operations
- Valid data updates (customer email change)
- Safe deletions (orphaned records)

## 🛠️ How to Use This Project

### Prerequisites
- MySQL Server (5.7+)
- MySQL Workbench or equivalent client

### Setup Instructions
1. Clone this repository:
   ```bash
   git clone https://github.com/dalondaikhimokpa/sql-testing-portfolio.git   
2. Initialize the test database:
mysql> source scripts/schema.sql

3. Run test cases:
mysql> source scripts/test_cases.sql  

## 🎥 Video Demonstration
Video Thumbnail-[comming soon]
A 45-minute walkthrough showing:
Database setup
Test case execution
Error handling demonstrations
Result verification

## 💡 Key Learnings
- ✔ Constraint Validation: Properly tested CHECK and FOREIGN KEY constraints
- ✔ Safe Data Modification: Always use primary keys in WHERE clauses
- ✔ Error Handling: Documented expected vs actual error messages
- ✔ Test Design: Created repeatable test cases with clear pass/fail criteria

## 📝 Recommended Improvements
- Add automated test scripts using Python + MySQL Connector
- Include performance testing with large datasets
- Implement continuous integration with GitHub Actions

## 🤝 How to Contribute
Found an issue or have suggestions?

- Fork the repository
- Create a new branch (git checkout -b improve-feature)
- Commit your changes (git commit -m 'Add new test case')
- Push to the branch (git push origin improve-feature)
- Open a Pull Request


                                    
