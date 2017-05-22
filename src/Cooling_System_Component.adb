with typedefs, Steam_Generator_Component, Reactor_Component;
use typedefs, Steam_Generator_Component, Reactor_Component;

package body Cooling_System_Component is

   procedure Update_Cooling is
   begin
      Coolant_Level := 50.0 + Reading_Value((Get_Current_Level / 2)) - (Get_Steam_Level / 2);
   end Update_Cooling;

   function Get_Coolant_Level return Reading_Value is
   begin
      return Coolant_Level;
   end Get_Coolant_Level;

end Cooling_System_Component;
