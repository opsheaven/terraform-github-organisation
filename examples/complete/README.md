# Configure Github Organisation

## Usage

The code in [main.tf](main.tf) defines the following code to manage an organization
and setting it up with members with repositories.

### Requirements

The example requires two environment variables to work. Those are

1. `GITHUB_TOKEN`: Github Access Token with organisation resource access permissions.
2. `GITHUB_OWNER`: Github Organisation name.
