podTemplate(containers: [
    containerTemplate(
        name: 'maven', 
        image: 'maven:3.8.6-jdk-11', 
        command: 'sleep', 
        args: '30d'
        ),
    containerTemplate(
        name: 'python', 
        image: 'python:latest', 
        command: 'sleep', 
        args: '30d')
  ]) {

    node(POD_LABEL) {
        stage('checkout code') {
            git 'https://github.com/ashishonnet/simple-java-maven-app.git'
            container('maven') {
                stage('Build project') {
                    sh '''
                    mvn -B -DskipTests clean package
                    '''
                }
            }
        }
    }
}