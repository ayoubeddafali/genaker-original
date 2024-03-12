## run as a super user
export TERRAFORM_VERSION=0.12.24 \
&& export TERRAGRUNT_VERSION=0.23.2 \
&& mkdir -p /ci/terraform_${TERRAFORM_VERSION} \
&& wget -nv -O /ci/terraform_${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& unzip /ci/terraform_${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /ci/terraform_${TERRAFORM_VERSION}/ \
&& sudo chmod a+x /ci/terraform_${TERRAFORM_VERSION}/terraform \
&& cp /ci/terraform_${TERRAFORM_VERSION}/terraform /usr/local/bin/ \
&& chmod a+x /usr/local/bin/terraform \
&& mkdir -p /ci/terragrunt_${TERRAGRUNT_VERSION}/ \
&& wget -nv -O /ci/terragrunt_${TERRAGRUNT_VERSION}/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 \
&& sudo chmod a+x /ci/terragrunt_${TERRAGRUNT_VERSION}/terragrunt \
&& cp /ci/terragrunt_${TERRAGRUNT_VERSION}/terragrunt /usr/local/bin/ \
&& chmod a+x /usr/local/bin/terragrunt \
&& rm -rf /ci 
