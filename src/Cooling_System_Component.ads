with typedefs;
use typedefs;

package Cooling_System_Component is

   procedure Set_Pump_Level (Level : in Natural);
   procedure Pump_Rate;
   function Get_Pump_Level return Natural;

private
   Pump_Level : Natural := 0;
   Generator_Steam_Level : Reading_Value := 0.00;

end Cooling_System_Component;
