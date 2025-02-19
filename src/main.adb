--------------------------------------------------------------------------------
-- (c) copyright 2024 Lawrence D. Kern /////////////////////////////////////////
--------------------------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Scheme : constant String := "gemini";
   Host   : constant String := "geminiprotocol.net";
   Port   : constant String := "1965";
   Path   : constant String := "/";

   Url : constant String := Scheme & "://" & Host & Path;

   function Has_Prefix (S, Prefix : String) return Boolean is
   begin
      if S'Length < Prefix'Length then
         return False;
      end if;

      return Prefix = S (S'First .. S'First + Prefix'Length - 1);
   end Has_Prefix;

begin
   Put_Line ("BROWSER V0.0");

   if Has_Prefix(Url, "gemini://") then
      Put_line (Url);
   else
      Put_line ("ERROR: Unsupported protocol.");
   end if;
end Main;
