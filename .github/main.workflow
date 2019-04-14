workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@8e236db5cd6a99312b6d31d09328ff13152cd073"
  secrets = ["SCREEPS_TOKEN"]
}
