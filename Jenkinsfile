pipeline {
    agent any 
    stages {
	//stage('Checkout') {
	   // steps {
		//bat "git checkout main"
                //bat "git push origin main"
	   // }
	//}
        stage('Build part') {
            steps {
                bat 'echo build start'
                bat '"C:/Users/timo-/anaconda3/python.exe" -m pip install -r requirements.txt'
            }
        }
        stage('Test part') {
            steps {       
                bat 'echo test start'
                bat 'C:/Users/timo-/anaconda3/python.exe -m unittest'
            }
        }
        stage('Deploy part') {
            steps {
                bat 'docker build -t jenkinsdocker .'
                bat 'docker run -d -p 5000:5000 jenkinsdocker'
                bat 'docker login -u timotheenourriscli -p dckr_pat_liPCBB7KmZ3x_UHNbz9oyMTNpiE'
                bat 'docker tag jenkinsdocker timotheenourriscli/jenkins_docker'
                bat 'docker push auryble/pj_mlops_repo'
            }
        }       
    }    
    triggers {
        githubPush()
    }
}
