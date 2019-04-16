workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@master"
  secrets = ["SCREEPS_TOKEN"]
}
