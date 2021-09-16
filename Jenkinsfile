pipeline { 
    agent any  
    stages { 
         stage('chekout') { 
             steps { 
             checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'd2c1de66-5155-436f-b70f-6d7eb7d671ef', url: 'https://github.com/jleetutorial/maven-project.git']]]) 
            }
        }
        stage('build') {
            steps {
            sh "mvn clean package"

            }
       }
       stage('uploadnexus') {
           steps {
            nexusArtifactUploader artifacts: [[artifactId: 'java', classifier: '', file: 'webapp/target/webapp.war', type: 'war']], credentialsId: 'nexus', groupId: '', nexusUrl: '3.84.44.206:8081/nexus', nexusVersion: 'nexus2', protocol: 'http', repository: 'maven', version: '2.1.$BUILD_NUMBER'
            }
       }
    }
}    
