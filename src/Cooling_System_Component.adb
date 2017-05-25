with typedefs, Steam_Generator_Component, Reactor_Component;
use typedefs, Steam_Generator_Component, Reactor_Component;

package body Cooling_System_Component is

   procedure Set_Coolant_Level(Level : in Reading_Value) is
   begin
      Coolant_Level := Level;
   end Set_Coolant_Level;

   function Get_Coolant_Level return Reading_Value is
   begin
      return Coolant_Level;
   end Get_Coolant_Level;

   protected body Protected_Cooling is

      entry Reactor_Set_Level(Level : in Integer) when Open is
      begin
	 Open := false;
	 Coolant_Level := Coolant_Level + Reading_Value(Level / 2);
	 Open := true;
      end Reactor_Set_Level;

      entry Steam_Set_Level(Level : in Reading_Value) when Open is
      begin
	 Open := false;
	 Coolant_Level := 50.0 - (Level / 2);
	 Open := true;
      end Steam_Set_Level;

   end Protected_Cooling;

end Cooling_System_Component;


