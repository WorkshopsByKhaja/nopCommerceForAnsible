pipeline {
    agent any
    triggers { pollSCM('* * * * *')  }
    stages {
        stage('vcs') {
            steps {
                agent { label 'dotnet' }
                git branch: 'main', 
                    url: 'https://github.com/WorkshopsByKhaja/nopCommerceForAnsible.git'
            }
        }
        stage('build') {
            agent { label 'dotnet' }
            steps {
                sh 'sudo bash build.sh'
            }
        }
        stage('deploy') {
            agent { label 'dotnet' }
            steps {
                sh "ansible-playbook -i ansible/hosts ansible/nop.yaml"
            }
        }
    }

}