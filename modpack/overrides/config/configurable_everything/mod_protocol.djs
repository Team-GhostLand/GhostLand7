// 
// Mod protocol is a feature allowing you to prevent clients with mismatched settings to join.
// Client with mismatched values won't be able to connect to servers having this enabled.
// It should be used only for non-vanilla compatible modpacks!
// Protocol version. Needs to be the same on client and server. If it has value of -1, it won't be required by servers.
// 
modProtocolVersion: -1
// Protocol id. It should be different for every modpack, to prevent joining with mismatched mods.
modProtocolId: 'my_configurable_everything_modpack'
// A mod protocol name. Used for easier identification. Doesn't affect functionality
modProtocolName: 'My Configurable Everything Modpack'
// Message displayed for players joining with clients incompatible with Registry Sync. Supports strings and Minecraft's JSON text format.
missingRegistrySyncMessage: '{"translate":"frozenlib.registry_sync.unsupported_client","fallback":"\\nUnsupported (vanilla?) client!\\nThis server requires modded client to join!\\n"}'
// Top part of the message displayed for players joining with incompatible clients. Supports strings and Minecraft's JSON text format.
mismatchedEntriesTopMessage: "{\"translate\":\"frozenlib.registry_sync.failed_sync\",\"fallback\":\"\\nFailed to synchronize client with the server!\\nThis can happen when client's and server's mods don't match.\\n\"}"
// Bottom part of the message displayed for players joining with incompatible clients. Supports strings and Minecraft's JSON text format.
mismatchedEntriesBottomMessage: ''
// Shows some details about why client couldn't connect.
mismatchedEntriesShowDetails: true
// Disables the Mod Protocol sync on server list/initial query.
disableModProtocolPing: false
// Disables the Mod Protocol requirement. USE AT YOUR OWN RISK!
disableModProtocol: false