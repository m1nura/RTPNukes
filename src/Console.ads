package Console is

   procedure Display_Values;

   procedure Set_Mode;
   function Get_Mode return Natural;
   procedure Set_Input;
   function Get_Input return Natural;

   procedure Start_Menu;

   Mode : Natural := 0;
   Input: Natural := 0;

end Console;
