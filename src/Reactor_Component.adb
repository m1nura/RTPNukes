with typedefs;
use typedefs;
with Ada.Text_IO; use Ada.Text_IO;
package body Reactor_Component is

   procedure Lower_Rods is
   begin
      if (Current_Control_Rod_Level /= 0) then
	 Current_Control_Rod_Level := Current_Control_Rod_Level - 1;
      end if;
   end Lower_Rods;

   procedure Raise_Rods is
   begin
      if (Current_Control_Rod_Level /= 100) then
	 Current_Control_Rod_Level := Current_Control_Rod_Level + 1;
      end if;
   end Raise_Rods;

   function Get_Current_Level return Natural is
   begin
      return Current_Control_Rod_Level;
   end Get_Current_Level;

end Reactor_Component;
