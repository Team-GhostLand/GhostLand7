addedSurfaceRules: [
  {
    dimension: 'minecraft:overworld'
    rule_source: {
      sequence: [
        {
          if_true: {
            biome_is: [
              'configurable_everything:blank_biome'
            ]
            type: 'minecraft:biome'
          }
          then_run: {
            if_true: {
              type: 'minecraft:above_preliminary_surface'
            }
            then_run: {
              result_state: {
                Properties: {
                  snowy: 'false'
                }
                Name: 'minecraft:grass_block'
              }
              type: 'minecraft:block'
            }
            type: 'minecraft:condition'
          }
          type: 'minecraft:condition'
        }
      ]
      type: 'minecraft:sequence'
    }
  }
]