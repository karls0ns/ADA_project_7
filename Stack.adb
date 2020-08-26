with Text_IO;
use Text_IO;
package body Stack is

   package MyDecIO is new Decimal_IO(ElemType);
   use MyDecIO;

   procedure Push(St : in out Stacktype; Elem: in Elemtype) is

   begin

      If St.Counter < St.MaxSize then

         St.Counter := St.Counter + 1;
         St.St(St.Counter):=Elem;

      else

         Put_Line("Steks ir pilns");

      end if;
   end Push;

   procedure Pop (St: in out StackType; Elem: out Elemtype) is
      Temp: StackType := St;
      Temp1: StackType (Temp.MaxSize);
      i: integer := 1;
   begin

      If Temp.Counter > 0 then

         Elem := Temp.St(Temp.Counter);
         St:=Temp1;
         St.Counter:=Temp.Counter-1;

         while i /= St.Counter+1 loop
            St.St(i):= Temp.St(i);
            i:=i+1;
         end loop;

      else

         Put_Line("Steks ir tuks");

      end if;
   end Pop;




   procedure Print(St : in Stacktype) is
      i: integer := 1;
   begin

      if St.Counter = 0 then

         put_line("Steks ir tuks");

      else
         while i /= St.Counter+1    loop

            put(St.St(i));
            i:=i+1;

         end loop;
         put_line("");
      end if;
   end Print;


End Stack;
