with Ada.Text_IO,
    Ada.Numerics.Generic_Elementary_Functions,	-- math functions library
    stack,					-- my class implementation
    list;					-- my class implementation

use Ada.Text_IO,
    Ada.Numerics;

procedure calculator is

-- subtypes
type VAL_TYPE is digits 10;

-- IO
package VAL_TYPE_IO is
  new FLOAT_IO (VAL_TYPE);
use VAL_TYPE_IO;

-- packages
package VAL_TYPE_FUNCTIONS is
  new Generic_Elementary_Functions (VAL_TYPE);
use VAL_TYPE_FUNCTIONS;

-- exceptions
SYNTAX_ERROR 		: exception;
DIVIDE_BY_ZERO		: exception;

begin
  Ada.Text_IO.Put_Line("Hello, world!");  --body of calculator

end calculator;
