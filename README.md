# Task4
ClassicModels SQL Practice Project
This repository contains hands-on SQL practice using the ClassicModels sample database—a retail business schema featuring products, orders, customers, employees, and payments.

Project Files
mysqlsampledatabase.sql – Initializes the ClassicModels schema with all required tables and sample data.

Task 4.sql – Includes SQL queries covering data retrieval, aggregation, joins, subqueries, views, and indexing.

Tools Used
MySQL Workbench 
Text Editor

Process Overview
Database Setup
Imported the mysqlsampledatabase.sql file to create and populate the ClassicModels database.

Data Exploration & Querying

Utilized SELECT, WHERE, GROUP BY, and ORDER BY clauses

Applied filters based on business rules (e.g., credit limit, country)

Joins

Performed INNER JOIN, LEFT JOIN, and RIGHT JOIN to extract combined data from related tables

Subqueries

Used nested queries for comparison operations, such as identifying customers with payments above the average

Aggregate Functions

Implemented SUM() and AVG() to calculate total and average values (e.g., total payments, average order value)

View Creation

Built reusable views for better query management:

high_value_customers – customers with credit limits over 100,000

monthly_payments – total payments grouped by month

Indexing for Optimization

Added indexes to enhance query performance:

On customerNumber in the payments table

On status in the orders table
