workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@5601934334cf63f69eed9f0f33de2aa3c5d063ea"
  secrets = ["SCREEPS_TOKEN"]
}
