output "name" {
  description = "Organisation Name"
  value       = var.organisation.company
}

output "displayname" {
  description = "Organisation Display Name"
  value       = var.organisation.name
}

output "teams" {
  description = "Teams with github identifiers"
  value = {
    for name, team in var.teams : name => github_team.this[name].id
  }
}

output "members" {
  description = "Organisation members"
  value       = keys(var.members)
}
