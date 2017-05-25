with Console, Controller, Sensor_System, Cooling_System_Component, Steam_Generator_Component, Reactor_Component, typedefs, Ada.Real_Time, Ada.Numerics.discrete_Random;
use Cooling_System_Component, typedefs, Ada.Real_Time;

procedure Main is

   task Task_Simulator;
   task body Task_Simulator is
   begin
      loop
	 Steam_Generator_Component.Update_Steam;
	 Protected_Cooling.Steam_Set_Level(Steam_Generator_Component.Get_Steam_Level);
	 Protected_Cooling.Reactor_Set_Level(Reactor_Component.Get_Current_Level);
	 delay until (Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(100));
      end loop;
   end Task_Simulator;

   task Task_Sensor_System;
   task body Task_Sensor_System is
      subtype Random_Range is Integer range 0 .. 5;
      package Random_Int is new Ada.Numerics.Discrete_Random(Random_Range); use Random_Int;

      Generator : Random_Int.Generator;
      Random_Value: Random_Range;

      Demand : Reading_Value := 1200.0;

   begin
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
