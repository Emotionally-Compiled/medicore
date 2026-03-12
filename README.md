# MediCore - Hospital Management System

<div align="center">
  <img src="https://img.shields.io/badge/Spring%20Boot-3.5.11-6DB33F?logo=spring&logoColor=white" alt="Spring Boot">
  <img src="https://img.shields.io/badge/Next.js-000000?logo=next.js&logoColor=white" alt="Next.js">
  <img src="https://img.shields.io/badge/Java-21+-ED8B00?logo=openjdk&logoColor=white" alt="Java 21">
  <img src="https://img.shields.io/badge/TypeScript-007ACC?logo=typescript&logoColor=white" alt="TypeScript">
  
  <br> <img src="https://img.shields.io/badge/PostgreSQL-316192?logo=postgresql&logoColor=white" alt="PostgreSQL">
  <img src="https://img.shields.io/badge/MongoDB-4EA94B?logo=mongodb&logoColor=white" alt="MongoDB">
  <img src="https://img.shields.io/badge/Apache_Kafka-231F20?logo=apache-kafka&logoColor=white" alt="Kafka">
  <img src="https://img.shields.io/badge/Keycloak-black?logo=keycloak&logoColor=white" alt="Keycloak">
  <img src="https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white" alt="Docker">


</div>



> A modern, cloud-native hospital management platform built with a microservices architecture to provide a comprehensive solution for healthcare facilities.

## 🏥 Overview

MediCore is designed to handle complex hospital operations at scale. The platform provides comprehensive solutions for patient management, appointment scheduling, medical records, pharmacy operations, billing, and real-time notifications. 

Built by **Emotionally Compiled**, this project focuses on resilience, security, and high availability, combining a robust Spring Boot infrastructure with a fast, SEO-friendly React UI.

### 🌟 Key Highlights

- 🏗️ **Microservices Architecture** - Independently deployable backend services for massive scalability.
- ⚡ **Modern Frontend** - Server-Side Rendering (SSR) and seamless UX powered by Next.js and TypeScript.
- 🔄 **Event-Driven & Reactive** - Asynchronous communication via message brokers and WebFlux for high-concurrency tasks.
- 🔐 **Secure by Design** - Identity & Access Management powered by Keycloak (OAuth2/OIDC).
- 📊 **Observable** - Distributed tracing, centralized metrics, and monitoring.
- 🐳 **Cloud-Ready** - Fully containerized infrastructure using Docker Compose.

---

## 🏗️ System Architecture

The ecosystem is divided into a modern web client, core infrastructure services, and business domain microservices. All external traffic is securely routed through a centralized API Gateway.



### Core Infrastructure & Repositories

| Component | Technology | Description |
| :--- | :--- | :--- |
| **Web Client** | Next.js + React | Main user interface for medical staff and administrators. |
| **API Gateway** | Spring Cloud Gateway | Central entry point, dynamic routing, and rate limiting. |
| **Service Registry** | Spring Cloud Eureka | Dynamic service discovery and load balancing. |
| **Identity & Access** | Keycloak + PostgreSQL | Centralized authentication and authorization. |
| **Object Storage** | MinIO | Self-hosted S3-compatible storage for medical records and imaging. |


---

## 🛠️ Tech Stack

**Frontend**
* Next.js (App Router / SSR)
* React
* TypeScript
* Tailwind CSS

**Backend & Frameworks**
* Java 21
* Spring Boot 3.5.11 (Web, WebFlux, Data JPA)
* Spring Cloud (Netflix Eureka, Gateway, Config)

**Databases & Storage**
* PostgreSQL (Relational Data)
* MongoDB (Document Data - Medical Records)
* MinIO (Object Storage)

**DevOps & Security**
* Docker & Docker Compose
* Keycloak
* Prometheus & Grafana (Monitoring)

---
## ✨ Features

<details>
<summary><b>👤 Patient & Doctor Management</b></summary>
<br>
- Patient registration with complete demographics, allergies, and history.<br>
- Doctor profiles with configurable weekly schedules and specialties.<br>
- Search functionality by DNI, insurance number, or specialty.
</details>

<details>
<summary><b>📅 Appointment & Medical Records</b></summary>
<br>
- Real-time availability checking and booking system.<br>
- Digital medical history, diagnoses, and treatment plans.<br>
- Document attachments (X-rays, lab results) stored securely.
</details>

<details>
<summary><b>💊 Pharmacy & Billing</b></summary>
<br>
- Inventory control, medication dispensing, and low stock alerts.<br>
- Automatic invoice generation and payment processing.
</details>

<details>
<summary><b>📧 Notifications (Reactive)</b></summary>
<br>
- Multi-channel notifications (Email, SMS) built with Spring WebFlux.<br>
- Event-driven processing with automatic retries.
</details>


---


## 👥 Team


### Development Team

| Name | Role | GitHub |
|------|------|--------|
| Brisbany Puerta | Backend Developer | [@bany-ph](https://github.com/bany-ph) 
| Menelik Puerta | Frontend Developer | [@menelik](https://github.com/menelikph)  
| Juan Pablo | Frontend Developer | [@jpablo55](https://github.com/Jpablo55)
