with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO;

package Words is
   package SU renames Ada.Strings.Unbounded;
   package SU_IO renames Ada.Strings.Unbounded.Text_IO;
   package String_Vector is new
     Ada.Containers.Vectors
       (Index_Type   => Natural,
        Element_Type => SU.Unbounded_String);

   function Read_File (File_Name : String) return String_Vector.Vector;
   function Get_Word return String;
end Words;
