pipeline {
	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub-aib-contents')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t aibcontents/aib-airflow:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push aibcontents/aib-airflow:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}
}
