with typedefs,Reactor_Component;
use typedefs;

package body Steam_Generator_Component is


   procedure Generate_Steam is
   begin

      Set_Rate_of_Change(Reactor_Component.Get_Temp);
      Water_Level := Water_Level - W_2_S_Rate_of_Change;
      Steam_Level := Steam_Level + W_2_S_Rate_of_Change;
   end Generate_Steam;

   procedure Set_Rate_of_Change(temp : in Natural) is
   begin
      if temp > 100 then
          W_2_S_Rate_of_Change := Reading_Value(temp) / 100.00;
      end if;

   end Set_Rate_of_Change;


   function Get_Water_Level return Reading_Value is
   begin
      return Water_Level;
   end Get_Water_Level;


   function Get_Steam_Level return Reading_Value is
   begin
      return Steam_Level;
   end Get_Steam_Level;



end Steam_Generator_Component;
