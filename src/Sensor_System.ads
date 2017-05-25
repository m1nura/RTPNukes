with typedefs;
use typedefs;

package Sensor_System is

   procedure Observe_Sensor_Data(Demand : in Reading_Value);

   function Get_Coolant_Level return Reading_Value;
   function Get_Steam_Level return Reading_Value;
   function Get_Steam_Pressure return Reading_Value;
   function Get_Turbine_Speed return Reading_Value;
   function Get_Power_Demand return Reading_Value;
   function Get_Power_Output return Reading_Value;
   function Get_Reactor_Temperature return Reading_Value;
   function Get_Control_Rod_Level return Natural;

private
   Coolant_Level : Reading_Value := 0.00;
   Steam_Level : Reading_Value := 0.00;
   Steam_Pressure : Reading_Value := 0.00;
   Turbine_Speed : Reading_Value := 0.00;
   Power_Demand : Reading_Value := 0.00;
   Power_Output : Reading_Value := 0.00;
   Reactor_Temperature : Reading_Value := 0.00;
   Control_Rod_Level : Natural := 0;

end Sensor_System;
