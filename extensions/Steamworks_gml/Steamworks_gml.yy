{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "Steamworks_gml",
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.0.1",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2025-01-29T10:47:47.4170077-08:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "html5Props": false,
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"Steamworks.gml.dll","origname":"","init":"steam_gml_init_cpp_pre","final":"","kind":1,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_reset","externalName":"steam_controller_reset","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_init","externalName":"steam_controller_init","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_update","externalName":"steam_controller_update","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_max_count_raw","externalName":"steam_controller_get_max_count_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_ids_raw","externalName":"steam_controller_get_ids_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_actionset_id","externalName":"steam_controller_get_actionset_id","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_actionset","externalName":"steam_controller_get_actionset","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_set_actionset","externalName":"steam_controller_set_actionset","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_digital_id","externalName":"steam_controller_get_digital_id","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_digital_value","externalName":"steam_controller_get_digital_value","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_digital_status","externalName":"steam_controller_get_digital_status","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_digital_origins_raw","externalName":"steam_controller_get_digital_origins_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_id","externalName":"steam_controller_get_analog_id","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_data","externalName":"steam_controller_get_analog_data","kind":11,"help":"","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_origins_raw","externalName":"steam_controller_get_analog_origins_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_max_origins_raw","externalName":"steam_controller_get_max_origins_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"RegisterCallbacks","externalName":"RegisterCallbacks","kind":11,"help":"","hidden":false,"returnType":2,"argCount":4,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_lobby_id_high","externalName":"steam_lobby_get_lobby_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_lobby_id_low","externalName":"steam_lobby_get_lobby_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_leave","externalName":"steam_lobby_leave","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_is_owner","externalName":"steam_lobby_is_owner","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_owner_id_high","externalName":"steam_lobby_get_owner_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_owner_id_low","externalName":"steam_lobby_get_owner_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_member_count","externalName":"steam_lobby_get_member_count","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_member_id_high","externalName":"steam_lobby_get_member_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_member_id_low","externalName":"steam_lobby_get_member_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_activate_invite_overlay","externalName":"steam_lobby_activate_invite_overlay","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_request","externalName":"steam_lobby_list_request","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_is_loading","externalName":"steam_lobby_list_is_loading","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_add_string_filter","externalName":"steam_lobby_list_add_string_filter","kind":1,"help":"","hidden":false,"returnType":2,"argCount":3,"args":[
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_add_numerical_filter","externalName":"steam_lobby_list_add_numerical_filter","kind":1,"help":"","hidden":false,"returnType":2,"argCount":3,"args":[
            1,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_add_near_filter","externalName":"steam_lobby_list_add_near_filter","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_add_distance_filter","externalName":"steam_lobby_list_add_distance_filter","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_count","externalName":"steam_lobby_list_get_count","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_data","externalName":"steam_lobby_list_get_data","kind":1,"help":"","hidden":false,"returnType":1,"argCount":2,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_id_high","externalName":"steam_lobby_list_get_lobby_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_id_low","externalName":"steam_lobby_list_get_lobby_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_owner_id_high","externalName":"steam_lobby_list_get_lobby_owner_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_owner_id_low","externalName":"steam_lobby_list_get_lobby_owner_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_member_count","externalName":"steam_lobby_list_get_lobby_member_count","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_member_id_high","externalName":"steam_lobby_list_get_lobby_member_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_member_id_low","externalName":"steam_lobby_list_get_lobby_member_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_join","externalName":"steam_lobby_list_join","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_join_id_raw","externalName":"steam_lobby_join_id_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_create","externalName":"steam_lobby_create","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_set_data","externalName":"steam_lobby_set_data","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_data","externalName":"steam_lobby_get_data","kind":1,"help":"","hidden":false,"returnType":1,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_set_type","externalName":"steam_lobby_set_type","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"int64_from_string_high","externalName":"int64_from_string_high","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"int64_from_string_low","externalName":"int64_from_string_low","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"int64_combine_string","externalName":"int64_combine_string","kind":1,"help":"","hidden":false,"returnType":1,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_update","externalName":"steam_gml_update","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_restart_if_necessary","externalName":"steam_restart_if_necessary","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_api_flags","externalName":"steam_gml_api_flags","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_init_cpp","externalName":"steam_gml_init_cpp","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_is_ready","externalName":"steam_gml_is_ready","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_get_version","externalName":"steam_gml_get_version","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_is_available","externalName":"steam_gml_is_available","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_init_cpp_pre","externalName":"steam_gml_init_cpp_pre","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_set_auto_accept_p2p_sessions","externalName":"steam_net_set_auto_accept_p2p_sessions","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_accept_p2p_session_raw","externalName":"steam_net_accept_p2p_session_raw","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_close_p2p_session_raw","externalName":"steam_net_close_p2p_session_raw","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_set_type","externalName":"steam_net_packet_set_type","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_send_raw","externalName":"steam_net_packet_send_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_receive","externalName":"steam_net_packet_receive","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_get_size","externalName":"steam_net_packet_get_size","kind":1,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_get_data_raw","externalName":"steam_net_packet_get_data_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_get_sender_id_high","externalName":"steam_net_packet_get_sender_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_get_sender_id_low","externalName":"steam_net_packet_get_sender_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_get_user_steam_id_high","externalName":"steam_get_user_steam_id_high","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_get_user_steam_id_low","externalName":"steam_get_user_steam_id_low","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_user_set_played_with","externalName":"steam_user_set_played_with","kind":1,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_activate_overlay_raw","externalName":"steam_activate_overlay_raw","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_get_friends_game_info_1","externalName":"steam_get_friends_game_info_1","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_get_friends_game_info_2","externalName":"steam_get_friends_game_info_2","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_ugc_delete_item","externalName":"steam_ugc_delete_item","kind":1,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_get_app_ownership_ticket_data_raw","externalName":"steam_get_app_ownership_ticket_data_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_user_request_encrypted_app_ticket_raw","externalName":"steam_user_request_encrypted_app_ticket_raw","kind":11,"help":"","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"Steamworks.gml.gml","origname":"","init":"steam_gml_init_gml","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_init_gml","externalName":"steam_gml_init_gml","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_check_version","externalName":"steam_gml_check_version","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_gml_prepare_buffer","externalName":"steam_gml_prepare_buffer","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_id_create","externalName":"steam_id_create","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_id_equals","externalName":"steam_id_equals","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_id_from_int64","externalName":"steam_id_from_int64","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_id_to_int64","externalName":"steam_id_to_int64","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_id_get_high","externalName":"steam_id_get_high","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_id_get_low","externalName":"steam_id_get_low","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_get_friends_game_info","externalName":"steam_get_friends_game_info","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_get_app_ownership_ticket_data","externalName":"steam_get_app_ownership_ticket_data","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_join_id","externalName":"steam_lobby_join_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_lobby_id","externalName":"steam_lobby_get_lobby_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_member_id","externalName":"steam_lobby_get_member_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_get_owner_id","externalName":"steam_lobby_get_owner_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_id","externalName":"steam_lobby_list_get_lobby_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_memeber_id","externalName":"steam_lobby_list_get_lobby_memeber_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_lobby_list_get_lobby_owner_id","externalName":"steam_lobby_list_get_lobby_owner_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_accept_p2p_session","externalName":"steam_net_accept_p2p_session","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_check_version","externalName":"steam_net_check_version","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_close_p2p_session","externalName":"steam_net_close_p2p_session","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_is_available","externalName":"steam_net_is_available","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_get_data","externalName":"steam_net_packet_get_data","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_get_sender_id","externalName":"steam_net_packet_get_sender_id","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_packet_send","externalName":"steam_net_packet_send","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_net_update","externalName":"steam_net_update","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_user_request_encrypted_app_ticket","externalName":"steam_user_request_encrypted_app_ticket","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_ids","externalName":"steam_controller_get_ids","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_digital_origins","externalName":"steam_controller_get_digital_origins","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_origins_raw","externalName":"steam_controller_get_origins_raw","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_max_origins","externalName":"steam_controller_get_max_origins","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_max_count","externalName":"steam_controller_get_max_count","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_origins","externalName":"steam_controller_get_analog_origins","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_mode","externalName":"steam_controller_get_analog_mode","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_status","externalName":"steam_controller_get_analog_status","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_x","externalName":"steam_controller_get_analog_x","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"steam_controller_get_analog_y","externalName":"steam_controller_get_analog_y","kind":2,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":3035426170322551022,"usesRunnerInterface":false,"order":[],},
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