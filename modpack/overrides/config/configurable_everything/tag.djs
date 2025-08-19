// Passes over invalid entries instead of failing to load the tag and any dependent tags
ignoreInvalidEntries: true
tagModifications: [
  {
    registry: 'minecraft:item'
    modifications: [
      {
        tag: 'minecraft:piglin_loved'
        additions: [
          'diamond_block'
        ]
        removals: [
          'gold_ingot'
        ]
      }
    ]
  }
]