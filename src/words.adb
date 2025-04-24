with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Numerics;              use Ada.Numerics;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

package body Words is
   function Read_File (File_Name : String) return String_Vector.Vector is
      F      : File_Type;
      Line   : SU.Unbounded_String;
      StrVec : String_Vector.Vector;
   begin
      Open (F, In_File, File_Name);
      while not End_Of_File (F) loop
         Line := SU_IO.Get_Line (F);
         StrVec.Append (Line);
      end loop;
      Close (F);
      return StrVec;
   end Read_File;

   function Get_Word return String is
      Words            : String_Vector.Vector :=
        Read_File ("data/dictionary.txt");
      Random_Index     : Natural;
      Random_Generator : Generator;
      Random_Value     : Float;
      Word_Count       : Natural;
   begin
      -- Instantiate the random generator without a seed
      Reset (Random_Generator);

      -- Get the number of words in the vector
      Word_Count := Natural (Words.Length);

      -- Avoid empty vector error
      if Word_Count = 0 then
         return "";
      end if;

      -- Generate a random index between 0 and Word_Count-1
      Random_Value := Random (Random_Generator);
      Random_Index := Natural (Random_Value * Float (Word_Count));

      -- Ensure index is within bounds
      if Random_Index = Word_Count then
         Random_Index := Word_Count - 1;
      end if;

      return SU.To_String (Words (Random_Index));
   end Get_Word;
end Words;
