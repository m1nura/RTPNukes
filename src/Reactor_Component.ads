package Reactor_Component is

   procedure Set_Level (Level : in Natural); -- Might need to use a new type with range 1..100 instead of Natural.
   procedure Update_Reactor;
   procedure Update_Temp;

   function Get_Current_Level return Natural;
   function Get_Target_Level return Natural;
   function Get_Temp  return Natural;

private
   Current_Control_Rod_Level : Natural := 0;
   Target_Control_Rod_Level : Natural := 0;
   Reactor_Temp : Natural := 0;

end Reactor_Component;
