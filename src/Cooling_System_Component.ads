with typedefs;
use typedefs;

package Cooling_System_Component is

   --Controller should try to keep coolant level at 50.
   --Higher than 50 == control rods too high
   --Lower than 50 == control rods too low

   procedure Update_Cooling;

   function Get_Coolant_Level return Reading_Value;

private
   Coolant_Level : Reading_Value := 0.00;

end Cooling_System_Component;
