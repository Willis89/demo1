///@description
///@param "status"
///@param turns
///@param id
function inflict_status(argument0, argument1, argument2) {

	//one calling event.

	var make_status = true;

	//if (other.miss == true) {return(0)}

	if (instance_exists(status_obj))
	with (status_obj)
	{
	if (target == argument2 && status == argument0)
		{
		if (argument0 != "pause" && argument0 != "dizzy" && argument0 != "double" && argument0 != "curse" && argument0 != "veil" && argument0 != "counter" && argument0 != "atk_up" && argument0 != "def_up") 
		{turn += argument1;}
		make_status = false;
		}
	}

	if (make_status)
	if (argument0 != "")
	{
	with (argument2)
	{
	//status_temp = instance_create_depth(x,y,depth-1,status_obj);
	with (instance_create_depth(x+10,y-sprite_height,depth-1,status_obj))
		{
		argument2.status_temp = id;
		status = argument0;
		turn = argument1;
		target = argument2; //id
		status_num = argument2.status_num;
		if (argument0 == "sleep") {turn += 1;}
		}
	status_num += 1;
	}
	}


}
