pipeline {

    agent any

    stages {

        stage("build") {

            steps {

                sh 'echo building application'
                sh 'curl -X POST http://80fe-34-68-29-155.ngrok.io/test'

            }

        }

        stage("test") {

            steps {

                echo 'testing application'
                
            }

        }
        stage("deploy") {

            steps {

                echo 'deploying application'
                
            }

        }
    }
}