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
					sh "docker build -t marcellodinizr/eureka-server ."
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
