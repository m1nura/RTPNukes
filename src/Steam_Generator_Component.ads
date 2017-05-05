package Steam_Generator_Component is


   procedure Generate_Steam (Water_Level : in out Natural; Steam_Level : out Natural);

   function Get_Water_Level return Natural;
   function Get_Steam_Level return Natural;

private
   Threshold_Water_Level : constant := 50; -- not sure if the controller should be keeping track of this
   Steam_Level : Natural := 0;
   Water_Level : Natural := 0;

end Steam_Generator_Component;
