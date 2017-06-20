/// @description  Get incoming data values
net_type = async_load[? "type"]
net_id   = async_load[? "id"]
net_ip   = async_load[? "ip"]
net_port = async_load[? "port"]

switch net_type {
case network_type_connect:
case network_type_disconnect:
  net_socket    = async_load[? "socket"]
  net_succeeded = async_load[? "succeeded"]
  break
case network_type_data:
  net_buffer    = async_load[? "buffer"]
  net_size      = async_load[? "size"]
  break
}




/// network_type_connect
if net_type = network_type_connect {


}


/// network_type_data   (Receive)

if net_type = network_type_data {
    var net_cmd = buffer_read(net_buffer, buffer_s32)
    
    switch net_cmd {
    case cmd.hello:
        // Receive cmd.hello + server name
        var s = buffer_read(net_buffer, buffer_string)
        show_message("Greeting from " +net_ip+ " \""+s+"\"") 
        // Send cmd.hello + answer + player name
        sc_net_send_data(net_id, cmd.hello, player_name)
        
        break
    }
    
    
    // debug
    buffer_seek(net_buffer, buffer_seek_start, 4)  // reset position
    show_debug_message("ip: "+net_ip+" >> "+buffer_read(net_buffer, buffer_string))
}



