# aws-network-and-ec2-terraform
# AWS network infrastructure and EC2 - Terraform and Jenkins
create-aws-network-and-ec2-terraform
This project is parameterized
Choice Parameter
action
apply
destroy
Do you want to Terraform Apply Or Destroy?

################################################

Pipeline
########

pipeline {
    agent any

    stages {
        stage('Checkoyt Github') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/basemelgabry/aws-network-and-ec2-terraform']]])
            }
        }
        stage('Git Keys file') {
            steps {
                sh ('cp /c/Users/Me/Desktop/EC2/terraform/GitHub_keys/variable.tf .')
            }
        }
        stage('Terraform init') {
            steps {
                sh ('terraform init')
            }
        }
        stage('Action') {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
            }
        }
    }
}
