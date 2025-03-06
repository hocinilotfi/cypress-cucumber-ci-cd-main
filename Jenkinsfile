pipeline{
    agent {
        docker {
            image "cypress/browsers"
            args "--entrypoint=''"
        }   
    }
    parameters{
        choice(name: 'ENV', choices: ['dev', 'staging', 'production'], description: 'Environment de test')
        choice(name:'TEST_TYPE', choices: ['regression', 'smoke','sanity'], description: 'Type de test')
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
     post {
        always {
        cucumber buildStatus: 'UNSTABLE',
                failedFeaturesNumber: 1,
                failedScenariosNumber: 1,
                skippedStepsNumber: 1,
                failedStepsNumber: 1,
                classifications: [
                        [key: 'Commit', value: '<a href="${GERRIT_CHANGE_URL}">${GERRIT_PATCHSET_REVISION}</a>'],
                        [key: 'Submitter', value: '${GERRIT_PATCHSET_UPLOADER_NAME}']
                ],
                reportTitle: 'My report',
                fileIncludePattern: '**/*.cucumber.json',
                sortingMethod: 'ALPHABETICAL',
                trendsLimit: 100
         }
    }
}