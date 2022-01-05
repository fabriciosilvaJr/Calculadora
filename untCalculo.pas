unit untCalculo;



interface

type
  TSomar = class
   function SomaValores(n1,n2:real): string;
end;

type
  TSubtrair = class
   function SubtrairValores(n1, n2: real): string;
end;


type
  TMultiplicar = class
   function MultiplicarValores(n1, n2: real): string;
end;

type
  TDiv = class
   function DivValores(n1, n2: real): string;
end;









implementation

uses System.SysUtils;

 { TCalculo }

function TSomar.SomaValores(n1, n2: real): string;
begin
     result:= FloatToStr(n1+n2);
end;


function TSubtrair.SubtrairValores(n1,n2:real): string;
begin
  result:=  FloatToStr(n1-n2);
end;

function TMultiplicar.MultiplicarValores(n1, n2: real): string;

begin
  result:=  FloatToStr(n1*n2);

 end;

function Tdiv.DivValores(n1, n2: real): string;

begin
  result:= FloatToStr(n1/n2);

end;




end.
