with Ada.Text_IO; use Ada.Text_IO;

procedure Hangman is
   Input_Max_Length : constant Positive := 100;

   -- Functions declarations
   function Get_Name return String;
   function Set_Secret_Word return String;

   -- Functions definitions
   function Get_Name return String is
      Input  : String (1 .. Input_Max_Length);
      Length : Natural;
   begin
      Put_Line ("What's your name?");
      Get_Line (Input, Length);
      return Input (1 .. Length);
   end Get_Name;

   function Set_Secret_Word return String is
      Input  : String (1 .. Input_Max_Length);
      Length : Natural;
   begin
      Put_Line ("Write the secret word to guess:");
      Get_Line (Input, Length);
      return Input (1 .. Length);
   end Set_Secret_Word;

   -- Variables declarations & value assignment
   Name       : constant String := Get_Name;
   SecretWord : constant String := Set_Secret_Word;
begin
   Put_Line ("Hello, " & Name & "!");
   Put_Line ("The secret word is: " & SecretWord);
end Hangman;
