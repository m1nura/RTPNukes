

package body Steam_Generator_Component is


   procedure Generate_Steam (Water_Level : in out Natural; Steam_Level : out Natural) is
   begin

      --could use a case statement to control the rate based on the temperature
      Water_Level := Water_Level - 1;
      Steam_Level := Steam_Level + 1;
   end Generate_Steam;


   function Get_Water_Level return Natural is
   begin
      return Water_Level;
   end Get_Water_Level;


   function Get_Steam_Level return Natural is
   begin
      return Steam_Level;
   end Get_Steam_Level;



end Steam_Generator_Component;
