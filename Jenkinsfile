def remote = [:]
                remote.host = '0.tcp.ngrok.io'
                remote.port = 17139
                remote.user = 'root'
                remote.password = ''
                remote.allowAnyHosts = true

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

        
        stage('Remote SSH') {
            steps{
                sshCommand remote: remote, command: "ls -lrt"
                sshCommand remote: remote, command: "echo I ssh into your server > /tmp/notice"
                sshCommand remote: remote, command: "for i in {1..5}; do echo -n \"Loop \$i \"; date ; sleep 1; done"
            }
        }
    }
}