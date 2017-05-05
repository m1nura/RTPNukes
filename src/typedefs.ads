
--typedefs.ads
--
-- The file contains all the type definitions defining all required types,
-- subtypes and constants for use in the project RTPNukes.

with Ada.Float_Text_IO;

package typedefs is

   type Reading_Value is delta 0.01 range 0.00..10000.00;
   subtype Percentage_Value is Reading_Value range 0.00..100.00;
end typedefs;
