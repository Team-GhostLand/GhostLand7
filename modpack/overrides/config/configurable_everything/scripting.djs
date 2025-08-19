// Requires Fabric Kotlin Extensions
applyKotlinScripts: true
defaultImports: [
  'kotlinx.coroutines.*'
  'net.frozenblock.configurableeverything.util.*'
  'net.frozenblock.configurableeverything.scripting.util.*'
  'net.frozenblock.lib.config.api.instance.ConfigModification'
  'net.minecraft.core.*'
  'net.minecraft.core.registries.*'
  'net.minecraft.resources.ResourceKey'
  'net.minecraft.resources.ResourceLocation'
  'net.minecraft.world.level.block.Block'
  'net.minecraft.world.level.block.state.BlockBehaviour'
  'net.minecraft.world.level.block.state.BlockBehaviour.Properties'
  'net.minecraft.world.level.dimension.DimensionType'
]
// 
// Remapping is experimental.
// Requires a network connection.
// When a network connection is available, it will download the Official Mojang Mappings
// 
// Use of the Official Mojang Mappings must be under the following license.
// # (c) 2020 Microsoft Corporation.
// These mappings are provided "as-is" and you bear the risk of using them.
// You may copy and use the mappings for development purposes, but you may
// not redistribute the mappings complete and unmodified. Microsoft makes
// no warranties, express or implied, with respect to the mappings provided
// here. Use and modification of this document or the source code (in any form)
// of Minecraft: Java Edition is governed by the Minecraft End User License
// Agreement available at https://account.mojang.com/documents/minecraft_eula.
// 
remapping: false
filter: 'INCLUDED'
modsToRemap: [
  'configurable_everything'
  'frozenlib'
]