with typedefs;
use typedefs;

package body Reactor_Component is

   procedure Set_Level (Level : in Natural) is
   begin
      Target_Control_Rod_Level := Level;
   end Set_Level;

   procedure Update_Reactor is -- Called every second by the simulator maybe?
   begin
      if Current_Control_Rod_Level /= Target_Control_Rod_Level then
	 if Current_Control_Rod_Level > Target_Control_Rod_Level then
	    Current_Control_Rod_Level := Current_Control_Rod_Level - 1;
	 else
	    Current_Control_Rod_Level := Current_Control_Rod_Level + 1;
	 end if;
      end if;

      Update_Temp;
   end Update_Reactor;

   procedure Update_Temp is -- Reactor temp heats up faster depending on the level of the control rods. Currently between 0 and 15.

      Temp_Rate_Of_Change : Reading_Value := 0.0;

   begin
      Temp_Rate_Of_Change := Reading_Value((Current_Control_Rod_Level * 15) / 100);

      Reactor_Temp := Reactor_Temp + Integer(Reading_Value'Rounding(Temp_Rate_Of_Change));
   end Update_Temp;

   function Get_Current_Level return Natural is
   begin
      return Current_Control_Rod_Level;
   end Get_Current_Level;

   function Get_Target_Level return Natural is
   begin
      return Target_Control_Rod_Level;
   end Get_Target_Level;

   function Get_Temp return Reading_Value is
   begin
      return Reactor_Temp;
   end Get_Temp;

end Reactor_Component;
