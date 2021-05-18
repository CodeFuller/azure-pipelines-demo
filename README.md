# Azure Pipelines Demo

This project demonstrates basic capabilities of Azure Pipelines, YAML based.

## Pipeline for app1 & app2

Pipelines for app1 & app2 demonstrate the following capabilities:

* Multistage pipeline with the following stages:
  * Build
  * Deploy to test environment
  * Deploy to prod environment

* Push triggers with branch filter

* Passing variables between pipeline stages

* Passing artifacts between pipeline stages

* Conditional stages

* Deployment jobs targeting specific environment

* Templates & parameters

## App3

app3 demonstrates separate CI and CD pipelines.

[CI pipeline](app3/ci-pipeline.yaml) is triggered by push to master branch. It builds the project and deploys it to test environment.

[CD pipeline](app3/cd-pipeline.yaml) is triggered manually. It deploys the latest successful build from CI pipeline to prod environment.

[Template](app3/deploy-stage-template.yaml) for deployment stage is used to reuse deploy logic between CI and CD pipelines.

## Documentation

* [YAML schema reference](https://docs.microsoft.com/en-us/azure/devops/pipelines/yaml-schema)
* [Deployment jobs](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs)
* [Template types & usage](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/templates)
* [Define approvals and checks](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/approvals)
