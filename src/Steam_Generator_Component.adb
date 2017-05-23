with typedefs,Reactor_Component,Cooling_System_Component;
use typedefs;

package body Steam_Generator_Component is

   procedure Generate_Steam is
   begin
      Update_Power;
   end Generate_Steam;

   procedure Lower_Pump_Speed is
   begin
      if (Steam_Level /= 0.0) then
	 Steam_Level := Steam_Level - 1.0;
      end if;
   end Lower_Pump_Speed;

   procedure Raise_Pump_Speed is
   begin
      if (Steam_Level /= 100.0) then
	 Steam_Level := Steam_Level + 1.0;
      end if;
   end Raise_Pump_Speed;

   procedure Update_Power is
   begin
      if (Steam_Level /= 0.0) then
	 Power_Output := Steam_Level * 16.3;
      else
	 Power_Output := 0.0;
      end if;
   end Update_Power;

   function Get_Steam_Level return Reading_Value is
   begin
      return Steam_Level;
   end Get_Steam_Level;

   function Get_Power_Output return Reading_Value is
   begin
      return Power_Output;
   end Get_Power_Output;

end Steam_Generator_Component;
