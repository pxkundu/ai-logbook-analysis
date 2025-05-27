# AI Logbook Analysis

An AI-powered system designed to extract and analyze data from handwritten logbooks and service records. This system leverages AWS services and modern web technologies to provide an efficient solution for digitizing and processing handwritten documents.

## Features

- Handwritten text extraction using AWS Textract
- Data validation and ETL processing
- RESTful API for data access
- Modern web interface for document management
- Secure document storage and processing
- Scalable microservices architecture

## Project Structure

```
ai-logbook-analysis/
├── backend/
│   ├── services/
│   │   ├── ingestion/         # Document ingestion service
│   │   ├── text-extraction/   # AWS Textract integration
│   │   ├── validation/        # Data validation service
│   │   ├── etl/              # ETL processing service
│   │   └── integration/      # API integration service
│   ├── config/               # Configuration files
│   ├── docs/                 # Backend documentation
│   └── scripts/              # Utility scripts
├── frontend/
│   ├── src/
│   │   ├── components/       # Reusable React components
│   │   ├── pages/           # Page components
│   │   ├── services/        # API services
│   │   ├── assets/          # Static assets
│   │   └── tests/           # Frontend tests
│   ├── public/              # Public assets
│   └── Dockerfile           # Frontend container config
├── infrastructure/
│   ├── modules/             # Terraform modules
│   │   ├── s3/             # S3 bucket configurations
│   │   ├── lambda/         # Lambda function configs
│   │   ├── rds/            # Database configurations
│   │   └── security/       # Security group configs
│   ├── environments/        # Environment-specific configs
│   └── main.tf             # Main Terraform configuration
├── cicd/
│   ├── jenkins/            # Jenkins pipeline configs
│   └── scripts/            # CI/CD utility scripts
├── docs/
│   ├── architecture/       # Architecture documentation
│   ├── api/               # API documentation
│   └── guides/            # User and developer guides
└── scripts/               # Project-wide utility scripts
```

## System Architecture

```
[Client Browser] <---> [CloudFront] <---> [S3 Static Hosting]
                              |
                              v
[Document Upload] --> [API Gateway] --> [Lambda Functions]
                              |
                              v
[Document Processing Pipeline]
    |
    |--> [S3 Raw Storage] --> [Textract] --> [S3 Processed]
    |         |                    |              |
    |         v                    v              v
    |--> [Validation Service] --> [ETL Service] --> [RDS Database]
    |         |                    |              |
    |         v                    v              v
    |--> [CloudWatch Logs] <-- [CloudWatch Metrics] <-- [CloudWatch Alarms]
    |
    v
[Notification Service (SNS/SES)]
```

## CI/CD Pipeline Architecture

```
[GitHub Repository]
       |
       v
[GitHub Webhook] --> [Jenkins Server]
       |                  |
       v                  v
[Code Changes] --> [Pipeline Stages]
                      |
                      |--> [Build Stage]
                      |     |
                      |     v
                      |--> [Test Stage]
                      |     |
                      |     v
                      |--> [Security Scan]
                      |     |
                      |     v
                      |--> [Infrastructure Stage]
                      |     |
                      |     |--> [Terraform Plan]
                      |     |
                      |     v
                      |--> [Deployment Stage]
                      |     |
                      |     |--> [Backend Deployment]
                      |     |     |
                      |     |     v
                      |     |--> [Frontend Deployment]
                      |     |
                      |     v
                      |--> [Integration Tests]
                      |
                      v
[Deployment to Environment]
    |
    |--> [Dev]
    |--> [Staging]
    v--> [Production]
```

## Architecture

The system is built using a microservices architecture with the following components:

- **Backend Services** (`backend/`):
  - Document ingestion service
  - Text extraction service (AWS Textract integration)
  - Data validation service
  - ETL processing service
  - API Gateway and Lambda functions
  - RDS for data storage

- **Frontend Application** (`frontend/`):
  - ReactJS-based web interface
  - Document upload and management
  - Data visualization and reporting
  - User authentication and authorization

- **Infrastructure** (`infrastructure/`):
  - AWS resources managed by Terraform
  - S3 buckets for document storage
  - Lambda functions for serverless processing
  - RDS for data persistence
  - Security groups and IAM roles
  - CloudWatch for monitoring

- **CI/CD** (`cicd/`):
  - Jenkins pipelines for automated deployment
  - Environment-specific configurations
  - Automated testing and validation

## Prerequisites

- Python 3.9 or higher
- Node.js 18 or higher
- Terraform 1.5 or higher
- AWS CLI configured with appropriate credentials
- Docker (for local development)
- Git

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/pxkundu/ai-logbook-analysis.git
   cd ai-logbook-analysis
   ```

2. **Backend Setup**
   ```bash
   cd backend
   python -m venv venv
   source venv/bin/activate  # On Windows: .\venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. **Frontend Setup**
   ```bash
   cd frontend
   npm install
   ```

4. **Infrastructure Setup**
   ```bash
   cd infrastructure
   terraform init
   terraform plan -var-file=environments/dev/variables.tfvars
   terraform apply -var-file=environments/dev/variables.tfvars
   ```

5. **Environment Configuration**
   - Copy `.env.example` to `.env` in both backend and frontend directories
   - Update the environment variables with your AWS credentials and other configurations

6. **Start Development Servers**
   - Backend: `python manage.py runserver`
   - Frontend: `npm start`

## Development

- Follow the coding standards in `docs/development-guidelines.md`
- Run tests before submitting PRs
- Update documentation for new features
- Use feature branches for development

## Deployment

The system uses Jenkins pipelines for CI/CD. Deployment configurations are in the `cicd/` directory.

## Documentation

Detailed documentation is available in the `docs/` directory:
- Architecture overview
- API documentation
- Security guidelines
- User guides
- Development guidelines

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support, please open an issue in the GitHub repository or contact the development team.
