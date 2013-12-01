-- stack class specification file

generic
    type DATA_TYPE is private;

package stack is

-- push
procedure Push is (DATA : DATA_TYPE);

-- pop
function Pop return DATA_TYPE; 

-- empty
procedure Empty;

-- is_empty
function Is_Empty return BOOLEAN;
