# GoGitOps-Action
* [Usage](#usage)
  * [Quick start](#quick-start)
  * [Custom User](#custom-user)
## About
[GoGitOps](https://gogitops.cf) is a code quality tool for Golang projects which aims to provide an automated review for pull requests. 

The action runs the review locally on the Github Actions agent and works on both public and private repositories.

The Action is in beta and provided with no warranty or guarantee of support.

---
 ![alt text][review] 

[review]:https://gogitops.cf/images/ineffassign.png "Pull Request Review"

## Usage
### Quick Start
```yaml
name: Pull Request Action 
on:  
  pull_request:  
    branches:  
    - 'master'  
jobs:  
  build:  
    runs-on: ubuntu-latest  
    steps:  
    - uses: actions/checkout@v1
    - name: GoGitOps Step  
      id: gogitops  
      uses: beaujr/gogitops-action@v0.2
      with:  
        github-actions-token: ${{secrets.GITHUB_TOKEN}}
```

#### Custom User
```yaml
name: Pull Request Action 
on:  
  pull_request:  
    branches:  
    - 'master'  
jobs:  
  build:  
    runs-on: ubuntu-latest  
    steps:  
    - uses: actions/checkout@v1
    - name: GoGitOps Step  
      id: gogitops  
      uses: beaujr/gogitops-action@v0.2
      with:  
        github-actions-user: <Your_User_Account_Name>
        github-actions-token: <Your-User-Account-Token>
```
