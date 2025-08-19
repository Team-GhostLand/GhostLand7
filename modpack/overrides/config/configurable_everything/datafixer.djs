// 
// Allows registry fixers (not schemas) to convert all IDs
// whether or not a valid entry exists
// By default, registry fixers will only run if the entry with the ID is missing.
// WARNING: THIS CAN POTENTIALLY CAUSE UNWANTED EFFECTS TO YOUR WORLDS, USE WITH CAUTION
// 
overrideRealEntries: false
// 
// The data fixer's main data version. Increment this when you add a new schema.
// Any schemas with a data version higher than this will be ignored.
// 
dataVersion: 6
// 
// The list of schemas to use for data fixing.
// Each schema has a data version and a list of data fix entries.
// Each data fix entry has a type and a list of fixers.
// The four types are "biome", "block", "entity", and "item".
// Although, it is recommended to use a registry fixer for items instead of a schema fixer.
// Each fixer contains an old id and a new id, and will replace all instances of the old id with the new id.
// However, if the old id is still found in the registry, it will not be replaced.
// 
schemas: []
// 
// The list of registry fixers to use for data fixing.
// Each registry fixer contains a registry key and a list of fixers.
// Each fixer contains an old id and a new id, and will replace all instances of the old id with the new id.
// However, if the old id is still found in the registry, it will not be replaced (unless the overrideRealEntries option is set to true).
// 
registryFixers: [
  {
    registry_key: 'minecraft:block'
    fixers: [
      {
        old_id: 'createnuclear:uranium_ore'
        new_id: 'minecraft:andesite'
      }
      {
        old_id: 'createnuclear:deepslate_uranium_ore'
        new_id: 'minecraft:andesite'
      }
      {
        old_id: 'createnuclear:lead_ore'
        new_id: 'minecraft:andesite'
      }
      {
        old_id: 'createnuclear:deepslate_lead_ore'
        new_id: 'minecraft:andesite'
      }
      {
        old_id: 'createnuclear:autunite'
        new_id: 'create:veridium'
      }
    ]
  }
]