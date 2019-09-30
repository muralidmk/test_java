trigger:
- master

pool:
  vmImage: 'Ubuntu-16.04'

variables:
  imageName: 'pipelines-javascript-docker'

steps:
- task: Docker@2
  displayName: Build an image
  inputs:
    repository: $(imageName)
    command: build
    Dockerfile: .
