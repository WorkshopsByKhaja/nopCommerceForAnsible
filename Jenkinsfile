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
                sh './build.sh'
            }
        }
    }

}