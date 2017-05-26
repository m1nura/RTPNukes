with typedefs, Controller, Sensor_System, Steam_Generator_Component, Reactor_Component;
use typedefs, Controller, Sensor_System;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Console is


   procedure Set_Mode is
   begin
      Put("Please enter mode of operation: ");
      Get(Mode); Skip_Line;
   end Set_Mode;

   function Get_Mode return Natural is
   begin
      return Mode;
   end Get_Mode;

   procedure Set_Input is
   begin
      Put("Please enter required power: ");
      Get(Input); Skip_Line;
   end Set_Input;

   function Get_Input return Natural is
   begin
      return Input;
   end Get_Input;

   procedure Start_Menu is
   begin
      Put_Line("Set operation mode");
      Put_Line("1 - System OFF");
      Put_Line("2 - Manual");
      Put_Line("3 - Random");
      Put_Line("4 - Meltdown");

      Set_Mode;

      if (Mode /= 3) then
         Set_Input;
      end if;

   end Start_Menu;

   procedure Display_Values is
   begin
      --use data from sensors, display it here
      Put_Line("");
      Put("Control Rod Level:");
      Put(Get_Control_Rod_Level'Img);
      Put(" , ");
      Put(Reactor_Component.Get_Current_Level'Img);
      Put_Line(" %");

      Put("Reactor Temp     :");
      Put_Line(Get_Reactor_Temperature'Img);

      Put("Steam Pressure   :"); --display some other value maybe
      Put(Get_Steam_Pressure'Img);
      Put_Line(" bar");

      Put_Line("");

      Put("Demand ");
      Put(Sensor_System.Get_Power_Demand'Img);
      Put_Line(" MW");

      Put("Power Output ");
      Put(Get_Power_Output'Img);
      Put_Line(" MW");

      Put(ASCII.ESC & "[2J"); -- clear screen
   end Display_Values;



end Console;
