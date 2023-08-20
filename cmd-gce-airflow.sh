# Helper: https://docs.airbyte.com/deploying-airbyte/on-gcp-compute-engine
sudo apt-get update
sudo apt-get install -y apt-transport-https 
sudo apt-get install -y ca-certificates 
sudo apt-get install -y curl 
sudo apt-get install -y gnupg2 
sudo apt-get install -y software-properties-common
sudo apt-get install -y wget
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add --
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -a -G docker $USER
sudo apt-get -y install docker-compose-plugin
# Run the following commands separately if fails
sudo wget https://raw.githubusercontent.com/mohammadrhoque/docker-airflow/main/run-af-platform.sh
sudo chmod +x run-af-platform.sh
sudo ./run-ab-platform.sh -b
