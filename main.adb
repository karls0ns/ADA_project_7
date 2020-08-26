with Stack;

procedure Main is

   type Elem is delta 0.1 digits 2;

   package StackInt is new Stack(Elem);
   use StackInt;

   S: StackType(5);
   Em: Elem;

begin
   Print(S);

   Push(S, 5.0);
   Print(S);

   Push(S, 4.0);
   Print(S);


   Push(S, 3.0);
   Print(S);

   Push(S, 2.0);
   Print(S);

   Pop(S, Em);
   Print(S);

   Push(S, Em);
   Print(S);

   Pop(S, Em);
   Print(S);

   Pop(S, Em);
   Print(S);

   Pop(S, Em);
   Print(S);

   Pop(S, Em);
   Print(S);

end Main;
