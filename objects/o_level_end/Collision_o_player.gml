/// @desc Move to next room

with(o_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		sc_transition(TRANS_MODE.GOTO,other.target);
	}
}