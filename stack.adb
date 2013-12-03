package body stack is

  SIZE_CONSTANT	: constant positive 	:= SIZE;

  subtype STACK_DATA is positive range 1 .. SIZE_CONSTANT;

  STACK_ARRAY	: array (STACK_DATA) of DATA_TYPE;
  STACK_POINTER	: STACK_DATA	 	:= 1;

  -- generic procedure pop
  procedure Push (DATA : DATA_TYPE) is
    begin
      if STACK_POINTER 			= SIZE_CONSTANT then 	-- if full raise overflow_error
        raise OVERFLOW_ERROR;
      else							-- if space is open add to stack
        STACK_ARRAY(STACK_POINTER) 	:= DATA;
        STACK_POINTER 			:= STACK_POINTER + 1;
      end if;
  end Push;

  -- generic function pop
  function Pop return DATA_TYPE is
    begin
      if STACK_POINTER 			= 1 then		-- if not enough data raise underflow_error
        raise UNDERFLOW_ERROR;
      else							-- if data exists then return said data
        STACK_POINTER 			:= STACK_POINTER - 1;
        return STACK_ARRAY(STACK_POINTER);
      end if;
   end Pop;

  -- generic procedure empty
  procedure Empty is
    begin
      STACK_POINTER := 1; 					-- clears all data
  end Empty;

  function Is_Empty return Boolean is
    begin
      return STACK_POINTER = 1;					-- returns true if no items on stack
   end Is_Empty;

end stack;
