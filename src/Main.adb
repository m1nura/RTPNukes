with Console, Controller, Sensor_System, Cooling_System_Component, Steam_Generator_Component, Reactor_Component, typedefs, Semaphore, Ada.Real_Time, Ada.Numerics.discrete_Random;
use Cooling_System_Component, typedefs, Semaphore, Ada.Real_Time;

procedure Main is

   task Task_Reactor;
   task body Task_Reactor is
   begin
      delay until Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(10100);
      loop
	 Binary_Semaphore.Acquire;
	 Protected_Cooling.Reactor_Set_Level(Reactor_Component.Get_Current_Level);
	 Binary_Semaphore.Release;
	 delay until (Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(500));
      end loop;
   end Task_Reactor;

   task Task_Steam_Generator;
   task body Task_Steam_Generator is
   begin
      delay until Ada.Real_Time.Clock + Ada.Real_Time.Seconds(10);
      loop
	 Binary_Semaphore.Acquire;
	 Steam_Generator_Component.Update_Steam;
	 Protected_Cooling.Steam_Set_Level(Steam_Generator_Component.Get_Steam_Level);
	 Binary_Semaphore.Release;
	 delay until (Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(500));
      end loop;
   end Task_Steam_Generator;

   task Task_Sensor_System;
   task body Task_Sensor_System is
      subtype Random_Range is Integer range 0 .. 5;
      package Random_Int is new Ada.Numerics.Discrete_Random(Random_Range); use Random_Int;

      Generator : Random_Int.Generator;
      Random_Value: Random_Range;

      Demand : Reading_Value := 1200.0;

   begin
      delay until Ada.Real_Time.Clock + Ada.Real_Time.Seconds(10);
      loop
	 Random_Int.Reset(Generator);
	 Random_Value := Random(Generator);

	 if (Random_Value = 4 and Demand < 1600.0) then
	    Demand := Demand + 15.0;
	 elsif (Random_Value = 5 and Demand > 0.0) then
	    Demand := Demand - 15.0;
	 end if;

	 Sensor_System.Observe_Sensor_Data(Demand);
	 delay until Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(1000);
      end loop;
   end Task_Sensor_System;

   task Task_Controller;
   task body Task_Controller is
   begin
      Controller.Start_Simulation;
      loop
	 Controller.Adjust_Values;
	 delay until Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(1000);
      end loop;
   end Task_Controller;

   task Task_Console;
   task body Task_Console is
   begin
      Console.Start_Menu;
      if (Console.Mode /= 0) then
         loop
	 Console.Display_Values;
	 delay 0.1;
         end loop;
      end if;


   end Task_Console;

begin
   null;
end Main;
