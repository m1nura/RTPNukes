with typedefs, Steam_Generator_Component, Reactor_Component, Cooling_System_Component;
use typedefs;

package body Sensor_System is

   procedure Observe_Sensor_Data(Demand : in Reading_Value) is
   begin
      Coolant_Level := Cooling_System_Component.Get_Coolant_Level;
      Steam_Level := Steam_Generator_Component.Get_Steam_Level;
      Steam_Pressure := (Steam_Generator_Component.Get_Steam_Level / 10.0) + 150.0; --transofrm this data slightly so it indicates pressure rather than just the amount of steam in closed system
      Turbine_Speed := Cooling_System_Component.Get_Coolant_Level + 1757.0; --value just added to show more interesting figures in console, goes up to 1500rpm max
      Power_Demand := Demand;
      Power_Output := Steam_Generator_Component.Get_Power_Output;
      Reactor_Temperature := Cooling_System_Component.Get_Coolant_Level + 243.0;
      Control_Rod_Level := Reactor_Component.Get_Current_Level;

   end Observe_Sensor_Data;

   function Get_Coolant_Level return Reading_Value is
   begin
      return Coolant_Level;
   end Get_Coolant_Level;

   function Get_Steam_Level return Reading_Value is
   begin
      return Steam_Level;
   end Get_Steam_Level;

   function Get_Steam_Pressure return Reading_Value is
   begin
      return Steam_Pressure;
   end Get_Steam_Pressure;

   function Get_Turbine_Speed return Reading_Value is
   begin
      return Turbine_Speed;
   end Get_Turbine_Speed;

   function Get_Power_Demand return Reading_Value is
   begin
      return Power_Demand;
   end Get_Power_Demand;

   function Get_Power_Output return Reading_Value is
   begin
      return Power_Output;
   end Get_Power_Output;

   function Get_Reactor_Temperature return Reading_Value is
   begin
      return Reactor_Temperature;
   end Get_Reactor_Temperature;

   function Get_Control_Rod_Level return Natural is
   begin
      return Control_Rod_Level;
   end Get_Control_Rod_Level;

   --sensor data needs to be returned too, should it be returned in one function or should it be split?

end Sensor_System;
