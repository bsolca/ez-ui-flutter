# FitApp - README Template

## A. Overview

### A.1 Application Name

FitApp (White-Label for Fitness Coaches)

### A.1.1 Description

FitApp is a cross-platform application designed for fitness coaches and athletes. It allows coaches to create, manage, and share custom programs, upload exercise videos, and track athlete progress in real-time. Athletes can follow their assigned programs and switch to "Coach Mode" to manage their own clients.

### A.1.2 Primary Focus Areas

#### A.1.2.1 Multi-Tenant Coach Support

#### A.1.2.2 Cross-Disciplinary Functionality

(e.g., dance, calisthenics, gymnastics, fitness, CrossFit)

#### A.1.2.3 Customization and Scalability

## B. Features and Functionalities

### B.1 Coach Dashboard

#### B.1.1 Manage Tenants

#### B.1.2 Design Programs

#### B.1.3 Upload Exercise Videos

#### B.1.4 Track Athlete Progress

### B.2 Athlete Experience

#### B.2.1 Join Coach's Tenant

Athletes can join via subscription or coach approval.

#### B.2.2 Follow Programs

#### B.2.3 Log Workouts

#### B.2.4 Switch to Coach Mode

Allows athletes to coach others without losing athlete data.

### B.3 Subscription Model

Options for paid access to specific tenants and validation features by coaches.

## C. Architecture and Technical Requirements

### C.1 Platform

Cross-platform development with Flutter.

### C.2 Backend

Utilizes services like Supabase or Firebase for real-time updates, authentication, and data storage.

### C.3 Modular Design

Ensures maintainability, scalability, and abstraction for easy updates and customizations.

### C.4 Domain-Driven Design

The application follows Domain-Driven Design principles, structuring the app around distinct domains that reflect real-world scenarios. This approach enables better organization and scalability of the codebase.

#### C.4.1 Example Domains

- **Training Programs Domain:** Manages creating, updating, and assigning workout programs, including templates, exercise details, and progress tracking.
- **User Management Domain:** Handles authentication, roles, and permissions for coaches and athletes.
- **Subscription and Payment Domain:** Manages subscription processes, payment validation, and different access tiers for athletes.

By dividing the project into clear domains, each part of the app is easier to understand, develop, and maintain, reducing complexity and dependencies across the system.

### C.5 Feature-First Approach

The project is organized with a feature-first folder structure.

#### C.5.1 Folder Structure

- **Presentation Files:** Contains main widgets and controllers.
- **Widgets Folder:** Includes all reusable widgets for the feature.
- **Data Folder:** Manages data-related operations.
- **Service Folder:** Contains business logic service classes.
- **Model Folder:** Holds feature-specific model classes.

### C.6 State Management

Uses Riverpod for state management, utilizing annotations with Riverpod Generator.

## D. Target Audience

### D.1 Primary Users

Coaches across various fitness disciplines.

### D.2 Secondary Users

Athletes seeking guided training or aspiring to become coaches.

## E. Long-Term Goals

### E.1 Expand Capabilities

Integrate new fitness categories and performance metrics.

### E.2 Develop Analytics

Provide insights on athlete performance and program effectiveness.

### E.3 Customizable Branding

Allow coaches to create unique apps within FitApp’s ecosystem.

## F. Future Roadmap

### F.1 Phase 1: POC Development

#### F.1.1 Coaching Module

- **Coach Registration and Profile Setup:** Coaches can register, set up their profile, and provide information such as specialization, experience, and certifications.
- **Program Creation:** Coaches can create basic workout programs that include exercises, sets, reps, and rest periods. Each program can be saved as a template for reuse.
- **Exercise Library:** Coaches can upload exercise videos or use existing ones, categorize them, and add descriptions and instructions.
- **Athlete Assignment:** Coaches can assign created programs to athletes and set schedules for workouts.
- **Progress Tracking:** Coaches can track athlete progress by viewing logged workouts and adding notes or feedback.

#### F.1.2 Athlete Module

- **Athlete Registration and Profile Setup:** Athletes can register, set up their profile, and provide information such as fitness goals, experience level, and any medical conditions.
- **Program View and Follow:** Athletes can view assigned workout programs, mark exercises as complete, and log their progress (e.g., weights lifted, reps completed).
- **Workout Logging:** Athletes can log their workouts and add personal notes, such as how they felt during the exercise or any issues encountered.
- **Progress Overview:** Athletes can view their progress over time, including workout history and any feedback provided by the coach.

### F.2 Phase 2: Multi-Tenant Support

### F.3 Phase 3: Advanced Analytics

### F.4 Phase 4: Scaling and Updates