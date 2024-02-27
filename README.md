# terraform-github-organisation

OpsHeaven's Terraform module to manage GitHub Organizations.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 6.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action_permissions"></a> [action\_permissions](#input\_action\_permissions) | Organisational level Github Actions permissions | <pre>object({<br>    allowed_actions      = optional(string, "selected")<br>    enabled_repositories = optional(string, "all")<br>    github_owned_allowed = optional(bool, true)<br>    patterns_allowed     = optional(list(string), [])<br>    verified_allowed     = optional(bool, false)<br>  })</pre> | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | Organisation members | <pre>map(object({<br>    role    = string<br>    blocked = optional(bool, false)<br>    teams   = optional(list(string), [])<br>  }))</pre> | n/a | yes |
| <a name="input_organisation"></a> [organisation](#input\_organisation) | GitHub organization settings. | <pre>object({<br>    name                                                         = string<br>    company                                                      = string<br>    description                                                  = string<br>    email                                                        = optional(string, "")<br>    billing_email                                                = string<br>    blog                                                         = optional(string, "")<br>    twitter_username                                             = optional(string, "")<br>    location                                                     = optional(string, "")<br>    has_organization_projects                                    = optional(bool, false)<br>    has_repository_projects                                      = optional(bool, false)<br>    default_repository_permission                                = optional(string, "read")<br>    members_can_create_repositories                              = optional(bool, false)<br>    members_can_create_public_repositories                       = optional(bool, false)<br>    members_can_create_private_repositories                      = optional(bool, false)<br>    members_can_create_internal_repositories                     = optional(bool, false)<br>    members_can_create_pages                                     = optional(bool, false)<br>    members_can_create_public_pages                              = optional(bool, false)<br>    members_can_create_private_pages                             = optional(bool, false)<br>    members_can_fork_private_repositories                        = optional(bool, false)<br>    web_commit_signoff_required                                  = optional(bool, true)<br>    advanced_security_enabled_for_new_repositories               = optional(bool, true)<br>    dependabot_alerts_enabled_for_new_repositories               = optional(bool, true)<br>    dependabot_security_updates_enabled_for_new_repositories     = optional(bool, true)<br>    dependency_graph_enabled_for_new_repositories                = optional(bool, true)<br>    secret_scanning_enabled_for_new_repositories                 = optional(bool, true)<br>    secret_scanning_push_protection_enabled_for_new_repositories = optional(bool, true)<br>  })</pre> | n/a | yes |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | Organisation repositories | <pre>map(object({<br>    description                 = string<br>    visibility                  = optional(string, "public")<br>    has_issues                  = optional(bool, false)<br>    has_downloads               = optional(bool, false)<br>    has_discussions             = optional(bool, false)<br>    has_projects                = optional(bool, false)<br>    has_wiki                    = optional(bool, false)<br>    is_template                 = optional(bool, false)<br>    allow_update_branch         = optional(bool, false)<br>    allow_merge_commit          = optional(bool, false)<br>    allow_squash_merge          = optional(bool, true)<br>    allow_rebase_merge          = optional(bool, true)<br>    allow_auto_merge            = optional(bool, false)<br>    archived                    = optional(bool, false)<br>    delete_branch_on_merge      = optional(bool, true)<br>    default_branch              = optional(string, "main")<br>    homepage_url                = optional(string, "")<br>    topics                      = optional(list(string), [])<br>    web_commit_signoff_required = optional(bool, true)<br>    issue_labels                = optional(map(string), {})<br>    status_checks               = optional(list(string), [])<br>  }))</pre> | `{}` | no |
| <a name="input_teams"></a> [teams](#input\_teams) | Teams of the organisation | <pre>map(object({<br>    description                    = string<br>    privacy                        = string<br>    all_users_team                 = optional(bool, false)<br>    reviewer_asssignment_algorithm = optional(string, "LOAD_BALANCE")<br>    required_reviewer_count        = optional(number, 1)<br>    enable_pr_notification         = optional(bool, true)<br>    repo_permission                = optional(string, "read")<br>    repo_permission_override       = optional(map(string), {})<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_displayname"></a> [displayname](#output\_displayname) | Organisation Display Name |
| <a name="output_members"></a> [members](#output\_members) | Organisation members |
| <a name="output_name"></a> [name](#output\_name) | Organisation Name |
| <a name="output_teams"></a> [teams](#output\_teams) | Teams with github identifiers |
<!-- END_TF_DOCS -->
