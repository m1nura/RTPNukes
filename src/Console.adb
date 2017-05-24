with typedefs, Controller, Sensor_System;
use typedefs, Controller, Sensor_System;

with Ada.Text_IO; use Ada.Text_IO;

package body Console is

   procedure Display_Values is
   begin
      --use data from sensors, display it here
      Put_Line("");
      Put("Control Rod Level:");
      Put(Get_Control_Rod_Level'Img);
      Put_Line(" %");

      Put("Reactor Temp     :");
      Put_Line(Get_Reactor_Temperature'Img);

      Put("Steam Pressure   :"); --display some other value maybe
      Put(Get_Steam_Pressure'Img);
      Put_Line(" bar");

      Put("Coolant Level    :");
      Put(Get_Coolant_Level'Img);
      Put_Line(" %");

      Put_Line("");

      Put("Demand ");
      Put(Controller.Demand'Img);
      Put_Line(" MW");

      Put("Power Output ");
      Put(Get_Power_Output'Img);
      Put_Line(" MW");

      Ada.Text_IO.Put(ASCII.ESC & "[2J"); -- clear screen
   end Display_Values;



end Console;
