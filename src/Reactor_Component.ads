with typedefs;
use typedefs;

package Reactor_Component is
   procedure Lower_Rods;
   procedure Raise_Rods;

   function Get_Current_Level return Natural;

private
   Current_Control_Rod_Level : Natural := 0;

end Reactor_Component;
