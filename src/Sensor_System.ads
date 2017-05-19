with typedefs;
use typedefs;

package Sensor_System is

   procedure Observe_Sensor_Data;

private
   Pump_Level : Natural := 0;
   Steam_Pressure : Reading_Value := 0.00;
   Turbine_Speed : Reading_Value := 0.00;
   Reactor_Temperature : Reading_Value := 0.00;
   Control_Rod_Level : Natural := 0;

end Sensor_System;
