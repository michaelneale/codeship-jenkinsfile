# Codeship running Jenkinsfiles

<img src='https://www.cloudbees.com/sites/default/files/codeship-by-cloudbees.png'>
<img src='https://wiki.jenkins.io/download/attachments/2916393/logo.png'>

Building on the good work by Kohsuke for one shot execution of Jenkinsfiles, this shows how to run Jenkinsfiles on Codeship Pro. 

[ ![Codeship Status for michaelneale/codeship-jenkinsfile](https://app.codeship.com/projects/2eaf07c0-04d0-0136-0999-0e7fdaa29a0c/status?branch=master)](https://app.codeship.com/projects/280572)

# How to use

Clone this, do what you want. Customise the Dockerfile for build time dependencies and/or customise the base Jenkinsfile runner image as per instructions on https://github.com/kohsuke/jenkinsfile-runner/. Make sure to copy both codeship yml files, the Jenkinsfile and the Dockerfile into your project.

# How it works

Codeship pro is native docker, so this works by launching the one shot Jenkins, after all the repository is copied into the container. The image used I pre-built with the current Jenkins LTS image and all the "recommended" plugins. If you need more plugins, at this point in time that means customising your own runner image. 

The Jenkinsfile runs the build in the container defined by the Dockerfile (so there are some limitations for running on many nodes as one might do in a more complex Jenkinsfile). Obviously all the webhooks, pull requests, triggers and branches are handled by codeship. Jenkins is simply the execution engine.

The codeship-steps.yml defines the script that launches the Jenkinsfile runner.

For a more complex example, see https://github.com/michaelneale/codeship-jenkinsfile-spring
