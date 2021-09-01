# copyright: 2018, The Authors

title "sample section"

# you can also use plain tests
describe file("/tmp") do
  it { should be_directory }
end

# you add controls here
control "tmp-1.0" do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title "Create /tmp directory"             # A human-readable title
  desc "An optional description..."
  describe file("/tmp") do                  # The actual test
    it { should be_directory }
  end
end
describe passwd.uids(0) do
  its('users') { should cmp 'root' }
  its('users') { should cmp ['root'] }
end


myhost.com/myrepo/myprofile/archive/master.tar.gz.
https://MY_TOKEN@github.com/chef/private-testing-profile
https://github.com/hunanguy/training/blob/main/example.tar.gz

image: docker:latest

services:
  - docker:dind

stages:
  - build
  - test
  - release
  - preprod
  - integration
  - prod
      
build:
  stage: build
  script:
    - echo "This is a build step"

test:
  stage: test
  script:
    - echo "This is a test step"

integration:
  stage: integration
  script:
    - echo "This is an integration step"
    - exit 1
  allow_failure: true # Even if the job fails, continue to the next stages

prod:
  stage: prod
  script:
    - echo "This is a deploy step"
  when: manual # Continuous Delivery
nspec: 

  stage: prod 

  only: 

    - "master" 

  environment: production 

  before_script: 
    - mkdir -p ~/.ssh 

    - echo "$DEPLOYMENT_SERVER_SSH_PRIVKEY" | tr -d '\r' > ~/.ssh/id_rsa 

    - chmod 600 ~/.ssh/id_rsa 

    - eval "$(ssh-agent -s)" 

    - ssh-add ~/.ssh/id_rsa 

    - ssh-keyscan -t rsa $DEPLOYMENT_SERVER >> ~/.ssh/known_hosts 
  script: 

    - docker run --rm -v ~/.ssh:/root/.ssh -v $(pwd):/share hysnsec/inspec exec https://github.com/hunanguy/training -t ssh://root@$DEPLOYMENT_SERVER -i ~/.ssh/id_rsa --chef-license accept --reporter json:inspec-output.json 

  artifacts: 

    paths: [inspec-output.json] 

    when: always 
