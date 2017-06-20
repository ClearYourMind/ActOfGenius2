/// @description  Finalization

//ds_list_destroy(global.serverlist)
//ds_list_destroy(global.servernames)

if socket_id > 0
  network_destroy(socket_id)


