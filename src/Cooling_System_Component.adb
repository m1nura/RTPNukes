with typedefs, Steam_Generator_Component;
use typedefs;

package body Cooling_System_Component is

   --Water source cooling system pulls from considered infinite (big lake or resevoir)

   procedure Set_Pump_Level (Level : in Natural) is
   begin
      Pump_Level := Level;
   end Set_Pump_Level;

   --4 pump speeds, dependent on how much steam detected in generator
   --0 indicates pump is off (and reactor/steam generator should be also)
   procedure Pump_Rate is

      Generator_Steam_Level := Steam_Generator_Component.Get_Steam_Level;

   begin
      if Generator_Steam_Level > 75.00 then
         Pump_Level := 4;
      elsif (Generator_Steam_Level > 50.00 and Generator_Steam_Level <= 75.00) then
         Pump_Level := 3;
      elsif (Generator_Steam_Level > 25.00 and Generator_Steam_Level <= 50.00) then
         Pump_Level := 2;
      elsif (Generator_Steam_Level > 0.00 and Generator_Steam_Level <= 25.00) then
         Pump_Level := 1;
      else
         Pump_Level := 0;
      end if;
   end Pump_Rate;

   function Get_Pump_Level return Natural is
   begin
      return Pump_Level;
   end Get_Pump_Level;

end Cooling_System_Component;
