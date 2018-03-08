# This was made using the instructions from https://github.com/kohsuke/jenkinsfile-runner
# The image contains openjdk8 (so that Jenkins headless can run)
FROM michaelneale/codeship-jenkinsfile

# apt-install -y any dependencies you need here

WORKDIR workspace

# Copy the repo in place 
COPY . ./



