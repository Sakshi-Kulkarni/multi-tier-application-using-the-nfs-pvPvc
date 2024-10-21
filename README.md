# 🚀 Average Calculator

![Go Report Card](https://goreportcard.com/badge/github.com/your-username/AverageCalculator)
![Build Status](https://img.shields.io/github/actions/workflow/status/your-username/AverageCalculator/ci.yml?branch=main)
![Coverage Status](https://img.shields.io/codecov/c/github/your-username/AverageCalculator)
![Docker Pulls](https://img.shields.io/docker/pulls/your-username/averagecalculator)
![Go Version](https://img.shields.io/github/go-mod/go-version/your-username/AverageCalculator)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

> A simple, Go-based web service for calculating averages from a list of space-separated numbers. Choose to calculate averages for all numbers, even numbers, or odd numbers.

---

## 📚 Table of Contents

- [Introduction](#-introduction)
- [Features](#-features)
- [Getting Started](#-getting-started)
- [API Usage](#-api-usage)
- [Development](#-development)
- [Docker Usage](#-docker-usage)
- [Deployment on OpenShift](#-deployment-on-openshift)
- [Contributing](#-contributing)
- [License](#-license)

---

## 💡 Introduction

This web service allows users to calculate the average of numbers by providing different query parameters. It's built with **Go** and provides RESTful endpoints for easy interaction. The application is designed to handle errors and ensures valid input from users.

### How It Works

1. **Input**: Users send a `POST` request with a space-separated list of numbers.
2. **Processing**: The server calculates the average based on the specified type (`n=1`, `n=2`, or `n=3`).
3. **Output**: Returns the calculated average or an error message in case of invalid input.

![Flowchart of Average Calculation](https://via.placeholder.com/600x300?text=Flowchart+Placeholder)

---

## ✨ Features

- **Multiple Calculation Modes**: Choose between averages for all numbers, even numbers, or odd numbers.
- **Error Handling**: Validates inputs and provides meaningful error messages.
- **RESTful API**: Easy-to-use `POST` endpoints.
- **Docker Support**: Run the app in a container with ease.
- **OpenShift Integration**: Deploy directly to OpenShift with custom configurations.

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

- [Go 1.23+](https://golang.org/doc/install)
- [Docker](https://docs.docker.com/get-docker/)
- [OpenShift CLI (oc)](https://docs.openshift.com)

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/AverageCalculator.git
   cd AverageCalculator
Build the application:

bash
Copy code
go build -o main
Run the application locally:

bash
Copy code
./main
Run tests:

bash
Copy code
make test
🔥 API Usage
Endpoint
bash
Copy code
POST /average?n={1|2|3}
Parameters
n=1: Calculate the average of even numbers.
n=2: Calculate the average of odd numbers.
n=3: Calculate the average of all numbers.
Example Request
bash
Copy code
curl -X POST -d "10 20 30 40" "http://localhost:9901/average?n=3"
Example Response
csharp
Copy code
The average is 25.00
Error Handling
If the input is invalid or missing, the API will respond with a 400 Bad Request and an error message like:

perl
Copy code
no numbers provided
🛠️ Development
Directory Structure
bash
Copy code
AverageCalculator/
├── handler/          # Contains the main HTTP handler logic
├── tests/            # Unit and integration tests
├── Dockerfile        # Dockerfile for containerization
├── Makefile          # Makefile for common tasks
└── README.md         # Project documentation
Makefile Targets
Build: make build - Build the Go application.
Test: make test - Run all tests.
Docker Build: make docker-build - Build a Docker image.
Docker Run: make docker-run - Run the Docker container.
🐳 Docker Usage
Build Docker Image
bash
Copy code
make docker-build
Run Docker Container
bash
Copy code
make docker-run
The app will be available at http://localhost:9901.

🚢 Deployment on OpenShift
Deploying the Application
Create a new app:

bash
Copy code
oc new-app . --strategy=docker --name=average
Start the build:

bash
Copy code
oc start-build average --from-dir=.
Access the application via the OpenShift route created.

🤝 Contributing
We welcome contributions to make this project even better! Please fork the repository and create a pull request with a meaningful commit message.

📄 License
This project is licensed under the MIT License. See the LICENSE file for more information.

👏 Acknowledgements
Inspired by the need for simple REST APIs in Go.
Uses shields.io for badges.# multi-tier-application-using-the-nfs-pvPvc
