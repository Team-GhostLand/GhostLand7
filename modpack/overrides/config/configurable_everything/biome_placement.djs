// 
// Add any biome to worldgen, with the parameters set.
// Adds biomes after biomes are removed via "removedBiomes",
// so replacing a biome's parameters is possible.
// Supports: Vanilla biomes, datapack biomes, modded biomes
// 
addedBiomes: [
  {
    dimension: 'minecraft:overworld'
    biomes: [
      {
        biome: 'configurable_everything:blank_biome'
        parameters: {
          erosion: [
            -1
            1
          ]
          depth: [
            0
            1
          ]
          weirdness: [
            -1
            1
          ]
          offset: 0
          temperature: [
            -1
            1
          ]
          humidity: [
            -1
            1
          ]
          continentalness: [
            -1.2000000476837158
            -1.0499999523162842
          ]
        }
      }
    ]
  }
  {
    dimension: 'minecraft:the_nether'
    biomes: [
      {
        biome: 'configurable_everything:blank_biome'
        parameters: {
          erosion: [
            -1
            1
          ]
          depth: [
            0
            1
          ]
          weirdness: [
            -1
            1
          ]
          offset: 0
          temperature: [
            -1
            1
          ]
          humidity: [
            -1
            1
          ]
          continentalness: [
            -1.2000000476837158
            -1.0499999523162842
          ]
        }
      }
    ]
  }
]
// 
// Remove any biome from worldgen
// Removes biomes before biomes are added via "addedBiomes",
// so replacing a biome's parameters is possible.
// Supports: Vanilla biomes, datapack biomes, Vanilla biome tags, datapack biome tags
// Does not support biomes added via TerraBlender
// 
removedBiomes: [
  {
    dimension: 'minecraft:overworld'
    biomes: [
      'configurable_everything:blank_biome'
      '#configurable_everything:blank_tag'
    ]
  }
  {
    dimension: 'minecraft:the_nether'
    biomes: [
      'configurable_everything:blank_biome'
      '#configurable_everything:blank_tag'
    ]
  }
]