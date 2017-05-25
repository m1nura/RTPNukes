with typedefs;
use typedefs;

package Cooling_System_Component is

   --Controller should try to keep coolant level at 50.
   --Higher than 50 == control rods too high
   --Lower than 50 == control rods too low

   procedure Set_Coolant_Level(Level : in Reading_Value);

   function Get_Coolant_Level return Reading_Value;

   protected Protected_Cooling is

      entry Reactor_Set_Level(Level : in Integer);
      entry Steam_Set_Level(Level : in Reading_Value);

   private
      Open : Boolean := true;

   end Protected_Cooling;

private
   Coolant_Level : Reading_Value := 50.0;

end Cooling_System_Component;
