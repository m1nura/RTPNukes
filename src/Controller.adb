with typedefs, Sensor_System, Reactor_Component, Cooling_System_Component, Steam_Generator_Component, Console;
use typedefs, Sensor_System, Console;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time;
with Ada.Numerics.discrete_Random;

package body Controller is

   --detects what values come from sensors, uses defined thresholds to adjust values of components
   procedure Threshold_Reaction is
   begin
      Put_Line("");
   end Threshold_Reaction;

   --initialises simulation, sets initial values depending on user input from console
   procedure Start_Simulation is
   begin
Put_Line("");
   end Start_Simulation;

   --sets value of reactor or whatever needed depending on user input/scenario selected
   procedure Adjust_Values is

      subtype Random_Range is Integer range 0 .. 5;
      package Random_Int is new Ada.Numerics.Discrete_Random(Random_Range); use Random_Int;

      Generator : Random_Int.Generator;
      Random_Value: Random_Range;

   begin
      Random_Int.Reset(Generator);
      Random_Value := Random(Generator);

      if (Random_Value = 4 and Demand < 1600.0) then
	 Demand := Demand + 15.0;
      elsif (Random_Value = 5 and Demand > 0.0) then
	 Demand := Demand - 15.0;
      end if;

      if (Get_Power_Output < Demand - 15.0) then
	 Steam_Generator_Component.Raise_Pump_Speed;
      elsif (Get_Power_Output > Demand + 15.0) then
	 Steam_Generator_Component.Lower_Pump_Speed;
      end if;

      if (Get_Coolant_Level < 45.0) then
	 Reactor_Component.Raise_Rods;
      elsif (Get_Coolant_Level > 60.0) then
	 Reactor_Component.Lower_Rods;
      end if;
   end Adjust_Values;

end Controller;
