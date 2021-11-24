# **bank_tech_test**

This is tech tech test for Makers Academy.

## **Requirements**
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

### **Acceptance criteria**
Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

### **Installation**

Clone this repository and then run
```
$ cd bank-tech-test
$ bundle install
```

### **Technical**

Tech/Frameworks Used
Ruby, RSpec, Rubocop, Simple Cov

### **Process**

- I dissected the task, breaking it down by creating user stories and a domain model.
- I approached the test by identifying the main objects and created classes in order of dependency.
- I used TDD (red, green, refactor) to work through each story.
- I followed the Single Responsibility principle.

### **User Stories**

As a user
```
So that i can access my funds
I would like to see the balance of my account
```
```
As a user
So that I can add to my balance
I would like to be able to desposit money on any given date
```
```
As a user
So that i can access my funds
I would like to withraw money on any given date
and see my balance
```
```
As a user
So that I can see my funds
I would like to ba able to print my balance
```

## Domain Model
```
!(https://user-images.githubusercontent.com/25979615/143261464-4483cc42-b65e-422e-8043-34eb8aa0f5fd.png)
```
---
