workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@e2a3270"
  secrets = ["SCREEPS_TOKEN"]
}
