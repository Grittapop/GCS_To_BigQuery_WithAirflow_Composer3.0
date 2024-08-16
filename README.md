# GCS_To_BigQuery_WithAirflow_Composer3.0
This project sets up an end-to-end data pipeline using Google Cloud Platform (GCP) services, Terraform for infrastructure as code (IaC), and Apache Airflow via Google Cloud Composer for orchestration. The pipeline extracts data from an API and a MySQL database, stores it in Google Cloud Storage, loads it into Google BigQuery, and visualizes the results in Looker Studio and Power BI.


## Architecture

![gcp 3 0](https://github.com/user-attachments/assets/5dddb18a-7de0-4d4d-997d-0fae8ed6e4a2)


## Technologies
- Python
- MySQL
- Google Cloud Storage
- Cloud Composer
- Google BigQuery
- Terraform
- Apache Airflow
- Looker Studio 
- Power BI


## Setup Instructions
### Prerequisites
- Google Cloud account with the necessary permissions.
- Terraform installed locally.


## Granting IAM Permissions to Service Accounts with the "Editor" Role and Downloading the Key in JSON Format
To ensure that services like Terraform can work correctly in Google Cloud, you need to grant the appropriate permissions to your Service Accounts with the "Editor" Role and create a JSON key for accessing resources within the project. Follow these steps:


### Granting IAM Permissions to Service Accounts

#### 1. Navigate to Service Accounts:
- In the left-hand menu, select "**IAM & Admin**" and then "**Service Accounts**."

#### 2. Select the Service Account to Grant Permissions:
- Find the Service Account you want to grant permissions to.
- If the Service Account doesn’t exist yet, create a new one by clicking "**Create Service Account**."

#### 3. Assign the "Editor" Role to the Service Account:
- Click on the name of the **Service Account** you want to modify.
- Go to the "**Permission**s" tab and click "**Add Another Role**."
- In the "**Role**" section, select "**Editor**" to grant full permissions to manage resources within the project.

#### 4.Save the Changes:
- Click "**Save**" to apply the changes.


### Creating and Downloading the Key for the Service Account

#### 1. Create a Key for the Service Account:
- On the **Service Account** page you selected or created, go to the "**Keys**" tab.
- Click "**Add Key**" then select "Create New Key."

#### 2. Choose the Key Type:
- In the pop-up window, select "**JSON**" as the key type.
- Click "**Create**."

#### 3. Download the Key:
- The **JSON** file containing the key will automatically download to your computer.
- Store this file securely, as it will be used to authenticate and authorize access to Google Cloud resources.


## Terraform Deployment
### Initialize Terraform:

```yaml
terraform init
```

### Plan the infrastructure:

```yaml
terraform plan
```
### Apply the configuration:

```yaml
terraform apply
```


## DAG Configuration
### Upload DAG to Cloud Composer:
- Upload the **dag_bq_load.py** script to your Cloud Composer environment.

### Configure BigQuery View:
- Use the SQL script in **CREATE VIEW.txt** to create necessary view in BigQuery.


## Running the Pipeline
### Trigger the DAG:
- Start the DAG via the Cloud Composer interface or trigger it manually using the Airflow UI.

### Monitor the Pipeline:
- Monitor the progress and status of the pipeline using the Cloud Composer dashboard or Airflow UI.

  ![Screenshot 2024-08-04 125127](https://github.com/user-attachments/assets/3b9aecd0-c182-41b2-ab96-21b81702cf68)



## Visualization
Once the data is available in **BigQuery**, connect it to **Looker Studio** and **Power BI** to create reports and dashboards.

![Screenshot 2024-08-05 010417](https://github.com/user-attachments/assets/7db93d88-5434-418c-a0e2-ed686d5b3b34)

![Screenshot 2024-08-05 010314](https://github.com/user-attachments/assets/0aa4c83e-5d2e-4dfb-9de4-bb2f7a5759c7)


## References
- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Apache Airflow Documentation](https://airflow.apache.org/docs/)
- [Google Identity and Access Management Documentation](https://cloud.google.com/iam/docs)

