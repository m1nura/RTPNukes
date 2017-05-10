with typedefs;
use typedefs;

package Steam_Generator_Component is

   procedure Generate_Steam; --Water_Level : in out Natural; Steam_Level : out Natural
   procedure Set_Rate_of_Change(temp : in Natural);
   procedure Set_Rate_of_Condensation;
   function Get_Water_Level return Reading_Value;
   function Get_Steam_Level return Reading_Value;

private
   Threshold_Water_Level : constant := 50; -- not sure if the controller should be keeping track of this
   Steam_Level : Reading_Value := 0.00;
   Water_Level : Reading_Value := 100.00;
   Pump_Level : Natural := 0;
   W_2_S_Rate_of_Change : Reading_Value := 0.00;
   S_2_W_Rate_of_Change : Reading_Value := 0.00;

end Steam_Generator_Component;
