pipeline{
    agent {
        docker {
            image "cypress/browsers"
            args "--entrypoint=''"
        }   
    }
    parameters{
        choice(name: 'ENV', choices: ['dev', 'staging', 'production'], description: 'Environment de test')
        choise(name:'TEST_TYPE', choices: ['regression', 'smoke','sanity','parcours-01','parcours-02'], description: 'Type de test')
    }

    stages{
        stage('install dependencies'){
            steps{
                echo '+++ Installing dependencies...+++'
                sh "npm ci"
            }
           
        }
        stage('Test'){
            steps{
                sh "chmod +x ./bashs/*.sh"
                sh "./bashs/${params.TEST_TYPE}.sh"
            }
        }
    }
}