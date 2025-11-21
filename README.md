A complete DevOps pipeline using **GitHub Actions**, a **Windows self-hosted runner**, **Docker**, **Docker Compose**, and a **Node.js test application**.

This project builds, tests, packages, and automatically redeploy an application using **infrastructure that you control**, without relying on GitHub-hosted runners.



### CI Pipeline 
= Runs on a self-hosted Windows GitHub Actions runner
= Installs dependencies (`npm install`)
= Executes automated unit tests with **Jest**
= Builds a production-ready **Docker image**
= Runs tests **inside the container** for full environment validation
= Saves and uploads Docker images as CI artifacts

###  **CD Pipeline**
= Downloads the latest Docker image artifact
= Removes old containers safely
= Uses **Docker Compose** to deploy the updated application
= Automatically restarts the app with zero manual intervention
