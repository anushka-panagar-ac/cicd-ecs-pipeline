# cicd-ecs-pipeline
This repo includes delivery path for containerized apps on ECS using GitHub Actions and AWS CodePipeline.

This repo provides two delivery paths for containerized apps on ECS:

1. **Dev** via **GitHub Actions**
2. **Staging/Prod** via **AWS CodePipeline** (CloudFormation)

## Quickstart

1. **Clone** this repo:
```bash
git clone https://github.com/your-org/cicd-ecs-pipeline.git && cd cicd-ecs-pipeline
```

3. **Dev pipeline** is automatic on push to `dev` branch. It builds, tests, pushes to ECR, and updates ECS.


4. **Staging/Prod**:
    - Ensure you have the AWS CLI configured with the necessary permissions.
    - Update the `pipeline-cloudformation/codepipeline.yaml` file with your repository details.
    - Deploy the CloudFormation stack to create the CodePipeline.
    
```bash
aws cloudformation deploy \
  --template-file pipeline-cloudformation/codepipeline.yaml \
  --stack-name cicd-ecs-pipeline \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --parameter-overrides SourceRepo=your-org/cicd-ecs-pipeline Branch=main