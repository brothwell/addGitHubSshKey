# addGitHubSshKey

Bash script for adding an SSH key to a GitHub Account with Multi-factor Authentication using the GitHub API.

It will check the ~/.ssh directory for a private key named "id_rsa". If this does not exist, it will create and add it using ssh-keygen and ssh-add commands.

It will then call the GitHub API and add the public key "id_rsa.pub" to the user's GitHub account.


## Parameters

The following input is required via terminal prompts:

* GitHub account email address
* Personall access token
* OTP (One-time password) for MFA (Multi-factor authentication)
* SSH key name


## Generating a Personal Access Token

see [Creating a personal access token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token)


## Running the script

Go to the directory containing the script in a terminal and simply enter:

```
./addGitHubSshKey.sh
```