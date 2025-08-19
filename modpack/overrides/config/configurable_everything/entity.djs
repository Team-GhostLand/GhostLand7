entityAttributeAmplifiers: [
  {
    entity: 'minecraft:example'
    entityName: ''
    amplifiers: [
      {
        attribute: 'minecraft:generic.movement_speed'
        amplifier: 1.5
      }
    ]
  }
]
experienceOverrides: [
  {
    entity: 'minecraft:example'
    amount: 5000
  }
]
entityFlyBySounds: [
  {
    entity: 'minecraft:arrow'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.arrow'
      volume: 0.6000000238418579
      pitch: 1
    }
  }
  {
    entity: 'minecraft:tipped_arrow'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.arrow'
      volume: 0.6000000238418579
      pitch: 1
    }
  }
  {
    entity: 'minecraft:spectral'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.arrow'
      volume: 0.6000000238418579
      pitch: 1
    }
  }
  {
    entity: 'minecraft:trident'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.trident'
      volume: 0.699999988079071
      pitch: 1
    }
  }
  {
    entity: 'minecraft:egg'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.egg'
      volume: 0.4000000059604645
      pitch: 1
    }
  }
  {
    entity: 'minecraft:snowball'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.snowball'
      volume: 0.4000000059604645
      pitch: 1
    }
  }
  {
    entity: 'minecraft:fireball'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.fireball'
      volume: 0.4000000059604645
      pitch: 1
    }
  }
  {
    entity: 'minecraft:potion'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.potion'
      volume: 0.20000000298023224
      pitch: 1
    }
  }
  {
    entity: 'minecraft:experience_bottle'
    sound: {
      category: 'neutral'
      sound: 'configurable_everything:flyby.experience_bottle'
      volume: 0.20000000298023224
      pitch: 1
    }
  }
]
entityHurtEffects: [
  {
    entity: 'minecraft:cow'
    entityName: ''
    effects: [
      {
        ambient: true
        visible: true
        showIcon: true
        effect: 'minecraft:speed'
        duration: 5
        amplifier: 10
      }
    ]
  }
]
entitySpottingIcons: [
  {
    entity: 'minecraft:example'
    texture: 'configurable_everything:textures/spotting_icon/icon.png'
    startFade: 5
    endFade: 8
  }
]
flamingArrowsLightFire: false
player: {
  digSpeedAmplifier: 100
}
zombie: {
  babyZombieSprintParticles: false
  zombiesAvoidSun: false
  ignoreDoorBreakDifficulty: false
  allZombiesBreakDoors: false
  ignoreReinforcementDifficulty: false
  fullReinforcementChance: false
}
skeleton: {
  skeletonAccuracyIgnoresDifficulty: false
  skeletonsAvoidSun: true
}