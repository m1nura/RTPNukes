with typedefs, Sensor_System, Reactor_Component, Cooling_System_Component, Steam_Generator_Component, Console;
use typedefs, Sensor_System, Console;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time;

package body Controller is

   --detects what values come from sensors, uses defined thresholds to adjust values of components
   procedure Threshold_Reaction is
   begin
      Put_Line("");
   end Threshold_Reaction;

   --initialises simulation, sets initial values depending on user input from console
   procedure Start_Simulation is
   begin
      Sensor_System.Start;
   end Start_Simulation;

   --sets value of reactor or whatever needed depending on user input/scenario selected
   procedure Adjust_Values is
   begin
      if (Get_Power_Output < Get_Power_Demand - 15.0) then
	 Steam_Generator_Component.Raise_Pump_Speed;
      elsif (Get_Power_Output > Get_Power_Demand + 15.0) then
	 Steam_Generator_Component.Lower_Pump_Speed;
      end if;

      if (Get_Coolant_Level < 45.0) then
	 Reactor_Component.Raise_Rods;
      elsif (Get_Coolant_Level > 55.0) then
	 Reactor_Component.Lower_Rods;
      end if;
   end Adjust_Values;

end Controller;
