with Ada.Text_IO;

procedure Hangman is
   -- Declare the function
   function Get_Name return String;

   -- Define the function
   function Get_Name return String is
      Input  : String (1 .. 100);
      Length : Natural;
   begin
      Ada.Text_IO.Get_Line (Input, Length);
      return Input (1 .. Length);
   end Get_Name;

   -- Declare the variable and assign its value from the function return value
   Name : constant String := Get_Name;

begin
   Ada.Text_IO.Put_Line ("Hello, " & Name & "!");
end Hangman;
