pipeline {
    agent any
stages {
        stage('Checkout'){
             steps {
                git branch: 'master', url: 'https://github.com/RahulKumar1119/linux_tweet_app'  
            }    
        }

        stage('List Privacy-Center-Api-Deployment') {
            steps {
             sh 'kubectl get deployments.apps -n ${NAMESPACE} | grep pc-api-${NAMESPACE}' 
                }
            }
        
        stage('Update deployment'){
            steps { 
              sh 'sed -i "s/{RELEASE_NAME}/$RELEASE_NAME/g" deploy.sh'
              sh './deploy.sh'
            }
        }
    }
}
