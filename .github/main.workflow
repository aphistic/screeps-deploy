workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@af23d6a75a2e1b44f6197350c8b5e28353142277"
  secrets = ["SCREEPS_TOKEN"]
}
