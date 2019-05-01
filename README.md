# AWS Container Build #

Adds tooling to a container which can be used with AWS. Current tools:
* AWS CLI - for running commands in AWS
* Sceptre - for automating the deployment on Cloudformation stacks
* Troposphere - for building Cloudformation from python code

Other information:
* The Container configuration variables are stored in the container.conf for easy editing
* A Makefile has been provided to simplify the build process.
