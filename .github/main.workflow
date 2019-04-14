workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@bf7fe4a160f3d74522800ff4e8a6cf168dd21327"
  secrets = ["SCREEPS_TOKEN"]
}
