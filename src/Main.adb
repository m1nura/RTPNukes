with Console, Controller, Sensor_System, Cooling_System_Component, Steam_Generator_Component, Ada.Real_Time;
use Ada.Real_Time;

procedure Main is

   task Task_Steam_Generator;
   task body Task_Steam_Generator is
   begin
      loop
	 Steam_Generator_Component.Update_Steam;
	 delay until (Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(100));
      end loop;
   end Task_Steam_Generator;

   task Task_Cooling_System;
   task body Task_Cooling_System is
   begin
      loop
	 Cooling_System_Component.Update_Cooling;
	 delay until Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(100);
      end loop;
   end Task_Cooling_System;

   task Task_Sensor_System;
   task body Task_Sensor_System is
   begin
      loop
	 Sensor_System.Observe_Sensor_Data;
	 delay until Ada.Real_Time.Clock + Ada.Real_Time.Seconds(1);
      end loop;
   end Task_Sensor_System;

   task Task_Controller;
   task body Task_Controller is
   begin
      loop
	 Controller.Adjust_Values;
	 delay until Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(100);
      end loop;
   end Task_Controller;

   task Task_Console;
   task body Task_Console is
   begin
      loop
	 Console.Display_Values;
	 delay 0.1;
      end loop;
   end Task_Console;

begin
   null;
end Main;
