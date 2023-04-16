pipeline {
	agent any

	stages {
		stage("Build") {
			steps {
				bat "mvn -version"
				bat "mvn clean install"
			}
		}
		stage("Build Docker Image") {
			steps {
				script {
					bat "docker build -t marcellodinizr/eurera-server ."
				}
			}
		}
	}

	post {
		always {
			cleanWs()
		}
	}
}
