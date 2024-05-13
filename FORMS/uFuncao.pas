unit uFuncao;

interface

uses Forms,Vcl.StdCtrls;

Procedure LimpaEdit(form: Tform);
Procedure EDEdit(form: Tform; estado :boolean);

implementation

uses
  Vcl.Mask, Vcl.ComCtrls;

Procedure LimpaEdit(form: Tform);
var i : Integer;
begin
   for i := 0 to Form.ComponentCount -1 do
       begin

             if Form.Components[i] is TEdit then
                TEdit(Form.Components[i]).Clear
             else
                if Form.Components[i] is Tmaskedit then
                   Tmaskedit(form.Components[i]).Clear
                else
                   if form.Components[i] is Tcombobox then
                      begin
                         if Tcombobox(form.Components[i]).Style = csDropDown then
                            Tcombobox(form.Components[i]).Text:= ''
                         else
                            Tcombobox(form.Components[i]).ItemIndex:= -1;
                      end
                   else
                      if form.Components[i] is Tcheckbox then
                         Tcheckbox(form.Components[i]).Checked:= false
                      else
                         if form.Components[i] is Tmemo then
                            Tmemo(form.Components[i]).Clear
                         else
                             if form.Components[i] is TListBox then
                                     Tlistbox(form.Components[i]).Clear
                                  else
                                     if form.Components[i] is TRichEdit then
                                        TRichEdit(form.Components[i]).Clear;
       end;
end;

Procedure EDEdit(form: Tform; estado :boolean);
var
i : Integer;
begin
   for i := 0 to Form.ComponentCount -1 do
      if Form.Components[i] is TEdit then
            TEdit(Form.Components[i]).Enabled:= estado
      else
         if form.Components[I] is Tmaskedit then
            Tmaskedit(form.Components[i]).Enabled:= estado
         else
            if form.Components[i] is Tcombobox then
               Tcombobox(form.Components[i]).Enabled:= estado
            else
               if form.Components[i] is Tcheckbox then
                  Tcheckbox(form.Components[i]).Enabled:= estado
               else
                  if form.Components[i] is Tmemo then
                     Tmemo(form.Components[i]).Enabled:= estado
                  else
                     if form.Components[i] is TDateTimePicker then
                        Tdatetimepicker(form.Components[i]).Enabled:= estado;

end;

end.
