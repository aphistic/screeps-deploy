workflow "Upload to Screeps" {
  resolves = ["Deploy branch"]
  on = "push"
}

action "Deploy branch" {
  uses = "aphistic/screeps-deployer@7798c8a31c251faa1ac2fe49798eae6b47797c8e"
  secrets = ["SCREEPS_TOKEN"]
}
