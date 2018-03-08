# This was made using the instructions from https://github.com/kohsuke/jenkinsfile-runner
# The image contains openjdk8 (so that Jenkins headless can run)
# as well as Jenkins LTS and all the 'recommended' plugins pre-installed, no other dependencies. 
FROM michaelneale/codeship-jenkinsfile

# apt-install -y any dependencies you need here

WORKDIR workspace

# Copy the repo in place 
COPY . ./
