workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@f7085f0b2aee1a118f3778338b22cb3707afce3e"
  secrets = ["SCREEPS_TOKEN"]
}
