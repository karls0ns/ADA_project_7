generic
   type ElemType is delta <> digits <>;
package Stack is
   type StArray is array (Integer range <>) of Elemtype;
   type StackType (MaxSize : Integer) is record
      Counter : Integer := 0;
      St: StArray (1..MaxSize);
   end record;

   procedure Push (St : in out StackType; Elem : in Elemtype);
   procedure Print (St : in StackType);
   procedure Pop (St: in out StackType; Elem: out Elemtype);
end Stack;
