with typedefs;
use typedefs;

package Steam_Generator_Component is

   procedure Update_Steam;
   procedure Lower_Pump_Speed;
   procedure Raise_Pump_Speed;
   procedure Update_Power;

   function Get_Steam_Level return Reading_Value;
   function Get_Power_Output return Reading_Value;

private
   Steam_Level : Reading_Value := 0.00;
   Target_Level : Reading_Value := 0.00;
   Turbine_Usage : Reading_Value := 0.00;
   Power_Demand : Reading_Value := 0.00;
   Power_Output : Reading_Value;

end Steam_Generator_Component;
