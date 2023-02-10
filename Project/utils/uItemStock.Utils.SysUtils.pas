unit uItemStock.Utils.SysUtils;

interface
  type



    TUtils = class
      private

      public
        class function IndexToStr(_Index : Integer)  : String;
    end;

implementation

uses
  System.SysUtils;


{ TUtils }

class function TUtils.IndexToStr(_Index: Integer): String;
begin
   case _Index of
     0:Result := 'ITEMNAME';
     1:Result := 'TYPES';
     2:Result := 'CONTAINER';
   else
     raise Exception.Create('Valor não registrado');
   end;
end;

end.
