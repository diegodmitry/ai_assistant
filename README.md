# Ai Assistant 🤖

## Overview

This project provide data insights and user authentication services. The backend is powered by NodeJS and PostgreSQL, while the frontend is built using Next.js with Material UI. The application also integrates a Dockerized NLP service for AI-driven data processing.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Setup and Installation](#setup-and-installation)
- [Running the Project](#running-the-project)
- [Usage](#usage)
- [Technologies Used](#technologies-used)
- [Environment Variables](#environment-variables)
- [Contributing](#contributing)
- [License](#license)

## Features

- **User Authentication:** Secure user authentication using NextAuth.js with support for JWT and OAuth.
- **Data Insights:** Simulates a small business database to analyze profits, sales, and trends.
- **AI Integration:** NLP service for processing text inputs and extracting data insights.
- **Microservice Architecture:** Isolated services for authentication, business data, and AI processing, managed with Docker.

## Technologies Used

- Frontend: Next.js, Material UI
- Backend: Strapi, PostgreSQL
- AI/NLP: Hugging Face Transformers, Python
- Containerization: Docker, Docker Compose
- Authentication: NextAuth.js
