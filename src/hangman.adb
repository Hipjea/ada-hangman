with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded;
with Words;       use Words;

procedure Hangman is
   Input_Max_Length : constant Positive := 100;

   -- Functions declarations
   function Get_Name return String;
   function User_Guess return String;

   -- Functions definitions
   function Get_Name return String is
      Input  : String (1 .. Input_Max_Length);
      Length : Natural;
   begin
      Put_Line ("What's your name?");
      Get_Line (Input, Length);

      return Input (1 .. Length);
   end Get_Name;

   function User_Guess return String is
      Input  : String (1 .. Input_Max_Length);
      Length : Natural;
   begin
      Put_Line ("Write your guess:");
      Get_Line (Input, Length);

      return Input (1 .. Length);
   end User_Guess;

   -- Variables declarations & value assignment
   Name       : constant String := Get_Name;
   SecretWord : constant String := Get_Word;
   Guess      : String := User_Guess;
begin
   Put_Line ("Hello, " & Name & "!");
   Put_Line ("The secret word is: " & SecretWord);
   Put_Line ("Your guess is: " & Guess);
   Put_Line (Boolean'Image (SecretWord = Guess));
end Hangman;
