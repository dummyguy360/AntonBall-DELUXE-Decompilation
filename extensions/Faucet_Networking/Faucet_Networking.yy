{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "Faucet_Networking",
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.0.1",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2025-01-29T10:47:47.1383488-08:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "html5Props": false,
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"faucetNetworking.dll","origname":"","init":"dllStartup","final":"dllShutdown","kind":1,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dllShutdown","externalName":"dllShutdown","kind":12,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dllStartup","externalName":"dllStartup","kind":12,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_append_file_to_buffer","externalName":"append_file_to_buffer","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_bit_get","externalName":"bit_get","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_bit_set","externalName":"bit_set","kind":12,"help":"","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_buffer_bytes_left","externalName":"buffer_bytes_left","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_buffer_clear","externalName":"buffer_clear","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_buffer_create","externalName":"buffer_create","kind":12,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_buffer_destroy","externalName":"buffer_destroy","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_buffer_set_readpos","externalName":"buffer_set_readpos","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_buffer_size","externalName":"buffer_size","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_build_ubyte","externalName":"build_ubyte","kind":12,"help":"","hidden":false,"returnType":2,"argCount":8,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_debug_handles","externalName":"debug_handles","kind":12,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ipv4_lookup_create","externalName":"ipv4_lookup_create","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ipv6_lookup_create","externalName":"ipv6_lookup_create","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ip_is_v4","externalName":"ip_is_v4","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ip_is_v6","externalName":"ip_is_v6","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ip_lookup_create","externalName":"ip_lookup_create","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ip_lookup_destroy","externalName":"ip_lookup_destroy","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ip_lookup_has_next","externalName":"ip_lookup_has_next","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ip_lookup_next_result","externalName":"ip_lookup_next_result","kind":12,"help":"","hidden":false,"returnType":1,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_ip_lookup_ready","externalName":"ip_lookup_ready","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_mac_addrs","externalName":"mac_addrs","kind":12,"help":"","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_base64","externalName":"read_base64","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_byte","externalName":"read_byte","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_double","externalName":"read_double","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_float","externalName":"read_float","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_hex","externalName":"read_hex","kind":12,"help":"","hidden":false,"returnType":1,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_int","externalName":"read_int","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_short","externalName":"read_short","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_string","externalName":"read_string","kind":12,"help":"","hidden":false,"returnType":1,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_ubyte","externalName":"read_ubyte","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_uint","externalName":"read_uint","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_read_ushort","externalName":"read_ushort","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_set_little_endian","externalName":"set_little_endian","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_set_little_endian_global","externalName":"set_little_endian_global","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_accept","externalName":"socket_accept","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_connecting","externalName":"socket_connecting","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_destroy","externalName":"socket_destroy","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_destroy_abortive","externalName":"socket_destroy_abortive","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_error","externalName":"socket_error","kind":12,"help":"","hidden":false,"returnType":1,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_handle_io","externalName":"socket_handle_io","kind":12,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_has_error","externalName":"socket_has_error","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_local_port","externalName":"socket_local_port","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_receivebuffer_size","externalName":"socket_receivebuffer_size","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_remote_ip","externalName":"socket_remote_ip","kind":12,"help":"","hidden":false,"returnType":1,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_remote_port","externalName":"socket_remote_port","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_send","externalName":"socket_send","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_sendbuffer_limit","externalName":"socket_sendbuffer_limit","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_socket_sendbuffer_size","externalName":"socket_sendbuffer_size","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_connect","externalName":"tcp_connect","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_eof","externalName":"tcp_eof","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_listen","externalName":"tcp_listen","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_listening_v4","externalName":"tcp_listening_v4","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_listening_v6","externalName":"tcp_listening_v6","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_receive","externalName":"tcp_receive","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_receive_available","externalName":"tcp_receive_available","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_tcp_set_nodelay","externalName":"tcp_set_nodelay","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_udp_bind","externalName":"udp_bind","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_udp_broadcast","externalName":"udp_broadcast","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_udp_receive","externalName":"udp_receive","kind":12,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_udp_send","externalName":"udp_send","kind":12,"help":"","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_base64","externalName":"write_base64","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_buffer","externalName":"write_buffer","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_buffer_part","externalName":"write_buffer_part","kind":12,"help":"","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_buffer_to_file","externalName":"write_buffer_to_file","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_byte","externalName":"write_byte","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_double","externalName":"write_double","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_float","externalName":"write_float","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_hex","externalName":"write_hex","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_int","externalName":"write_int","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_short","externalName":"write_short","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_string","externalName":"write_string","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_ubyte","externalName":"write_ubyte","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_uint","externalName":"write_uint","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fct_write_ushort","externalName":"write_ushort","kind":12,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"_fnet_hidden_read_cstring","externalName":"_fnet_hidden_read_cstring","kind":12,"help":"","hidden":false,"returnType":1,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"_fnet_hidden_read_delimited_string","externalName":"_fnet_hidden_read_delimited_string","kind":12,"help":"","hidden":false,"returnType":1,"argCount":2,"args":[
            2,
            1,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"usesRunnerInterface":false,"order":[],},
  ],
  "HTML5CodeInjection": "",
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": -1,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
}