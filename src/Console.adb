with typedefs, Cooling_System_Component, Steam_Generator_Component, Reactor_Component;
use typedefs;

package body Console is

   procedure Display_Values is
   begin
      Control_Rod_Level;
      Pump_Level; --or converert pump level to pump speed?
      Reactor_Temperature;
      Steam_Pressure; --based on steam amount
      Turbine_Speed; --based on steam pressure
   end Display_Values;

end Console;
