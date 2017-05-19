with typedefs, Steam_Generator_Component, Reactor_Component, Cooling_System_Component;
use typedefs;

package body Sensor_System is

   procedure Observe_Sensor_Data is
   begin
      Pump_Level := Cooling_System_Component.Get_Pump_Level;
      Steam_Pressure := Steam_Generator_Component.Get_Steam_Level; --transofrm this data slightly so it indicates pressure rather than just the amount of steam in closed system
      Turbine_Speed := (Steam_Generator_Component.Get_Steam_Level * 15); --value just added to show more interesting figures in console, goes up to 1500rpm max
      Reactor_Temperature := Reactor_Component.Get_Temp;
      Control_Rod_Level := Reactor_Component.Get_Current_Level;

   end Observe_Sensor_Data;

   --sensor data needs to be returned too, should it be returned in one function or should it be split?


end Sensor_System;
