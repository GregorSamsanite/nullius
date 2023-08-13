local ACHIEVEMENTPATH = "__nullius__/graphics/achievement/"

data:extend({
  {
    type = "build-entity-achievement",
    name = "nullius-easy-breezy",
    order = "ab",
    to_build = "nullius-wind-build-1",
    icon = ACHIEVEMENTPATH .. "breezy.png",
    icon_size = 128,
    until_second = 45 * 60 -- 45 minutes
  },
  {
    type = "finish-the-game-achievement",
    name = "nullius-accelerated-timeline",
    order = "ac",
    until_second = 60 * 60 * 24 * 6, -- 6 days
    icon = "__base__/graphics/achievement/there-is-no-spoon.png",
    icon_size = 128
  },
  {
    type = "dont-craft-manually-achievement",
    name = "nullius-lazier-bastard",
    order = "ad",
    amount = 0,
    icon = "__base__/graphics/achievement/lazy-bastard.png",
    icon_size = 128
  },
  {
    type = "finish-the-game-achievement",
    name = "nullius-mission-complete",
    order = "ae",
    icon = "__base__/graphics/achievement/no-time-for-chitchat.png",
    icon_size = 128
  },
  {
    type = "build-entity-achievement",
    name = "nullius-demanding",
    order = "af",
    to_build = "nullius-small-demand-chest-1",
    icon = "__base__/graphics/achievement/you-have-got-a-package.png",
    icon_size = 128
  },
  {
    type = "research-achievement",
    name = "nullius-cloned",
    order = "ag",
    technology = "nullius-checkpoint-android",
    icon = "__base__/graphics/achievement/minions.png",
    icon_size = 128
  },
  {
    type = "research-achievement",
    name = "nullius-superiority",
    order = "ah",
    technology = "nullius-checkpoint-cybernetics-2",
    icon = "__base__/graphics/achievement/golem.png",
    icon_size = 128
  }
})


data.raw["dont-craft-manually-achievement"]["lazy-bastard"].hidden = true
data.raw["dont-craft-manually-achievement"]["lazy-bastard"].order = "b"
data.raw["deliver-by-robots-achievement"]["you-have-got-a-package"].hidden = true
data.raw["deliver-by-robots-achievement"]["you-have-got-a-package"].order = "b"
data.raw["build-entity-achievement"]["getting-on-track"].hidden = true
data.raw["build-entity-achievement"]["getting-on-track"].order = "b"
data.raw["research-achievement"]["eco-unfriendly"].hidden = true
data.raw["research-achievement"]["eco-unfriendly"].order = "b"
data.raw["research-achievement"]["tech-maniac"].hidden = true
data.raw["research-achievement"]["tech-maniac"].order = "b"
data.raw["finish-the-game-achievement"]["smoke-me-a-kipper-i-will-be-back-for-breakfast"].hidden = true
data.raw["finish-the-game-achievement"]["smoke-me-a-kipper-i-will-be-back-for-breakfast"].order = "b"
data.raw["finish-the-game-achievement"]["smoke-me-a-kipper-i-will-be-back-for-breakfast"].until_second = 60
data.raw["finish-the-game-achievement"]["smoke-me-a-kipper-i-will-be-back-for-breakfast"].allowed_without_fight = false
data.raw["group-attack-achievement"]["it-stinks-and-they-dont-like-it"].hidden = true
data.raw["construct-with-robots-achievement"]["automated-construction"].hidden = true
data.raw["construct-with-robots-achievement"]["automated-construction"].amount = 10000
data.raw["construct-with-robots-achievement"]["you-are-doing-it-right"].hidden = true
data.raw["deconstruct-with-robots-achievement"]["automated-cleanup"].hidden = true
data.raw["deconstruct-with-robots-achievement"]["automated-cleanup"].amount = 10000
data.raw["deliver-by-robots-achievement"]["delivery-service"].hidden = true
data.raw["train-path-achievement"]["trans-factorio-express"].hidden = true
data.raw["player-damaged-achievement"]["watch-your-step"].hidden = true
data.raw["player-damaged-achievement"]["golem"].hidden = true
data.raw["build-entity-achievement"]["getting-on-track-like-a-pro"].hidden = true
data.raw["produce-achievement"]["mass-production-1"].hidden = true
data.raw["produce-achievement"]["mass-production-2"].hidden = true
data.raw["produce-achievement"]["mass-production-3"].hidden = true
data.raw["produce-per-hour-achievement"]["circuit-veteran-1"].hidden = true
data.raw["produce-per-hour-achievement"]["circuit-veteran-2"].hidden = true
data.raw["produce-per-hour-achievement"]["circuit-veteran-3"].hidden = true
data.raw["produce-per-hour-achievement"]["computer-age-1"].hidden = true
data.raw["produce-per-hour-achievement"]["computer-age-2"].hidden = true
data.raw["produce-per-hour-achievement"]["computer-age-3"].hidden = true
data.raw["produce-per-hour-achievement"]["iron-throne-1"].hidden = true
data.raw["produce-per-hour-achievement"]["iron-throne-2"].hidden = true
data.raw["produce-per-hour-achievement"]["iron-throne-3"].hidden = true
data.raw["dont-use-entity-in-energy-production-achievement"]["solaris"].hidden = true
data.raw["kill-achievement"]["steamrolled"].hidden = true
data.raw["kill-achievement"]["pyromaniac"].hidden = true
data.raw["kill-achievement"]["run-forrest-run"].hidden = true
data.raw["combat-robot-count"]["minions"].hidden = true
data.raw["dont-use-entity-in-energy-production-achievement"]["steam-all-the-way"].hidden = true
data.raw["dont-use-entity-in-energy-production-achievement"]["steam-all-the-way"].excluded = {"solar-panel",
    "nullius-solar-panel-1", "nullius-solar-panel-2", "nullius-solar-panel-3", "nullius-solar-panel-4"}
data.raw["dont-use-entity-in-energy-production-achievement"]["steam-all-the-way"].allowed_without_fight = false
data.raw["finish-the-game-achievement"]["no-time-for-chitchat"].hidden = true
data.raw["finish-the-game-achievement"]["there-is-no-spoon"].hidden = true
data.raw["achievement"]["so-long-and-thanks-for-all-the-fish"].hidden = true
data.raw["dont-build-entity-achievement"]["raining-bullets"].hidden = true
data.raw["dont-build-entity-achievement"]["logistic-network-embargo"].hidden = true
data.raw["dont-build-entity-achievement"]["raining-bullets"].dont_build = "nullius-small-demand-chest-1"
data.raw["dont-build-entity-achievement"]["logistic-network-embargo"].dont_build = "nullius-mecha"

