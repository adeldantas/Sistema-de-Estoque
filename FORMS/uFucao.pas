unit uFuncao;

interface

uses Forms;

Procedure LimpaEdit(form: Tform);

implementation

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
                            if form.Components[i] is TOpenPictureDialog then
                               TOpenPictureDialog(form.Components[i]).FileName:= ''
                            else
                               if form.Components[i] is TCurrencyEdit then
                                  TCurrencyEdit(form.Components[i]).Text:= '0,00'
                               else
                                if form.Components[i] is tJvCalcEdit then
                                  tJvCalcEdit(form.Components[i]).value:= 0
                               else
                                  if form.Components[i] is TListBox then
                                     Tlistbox(form.Components[i]).Clear
                                  else
                                     if form.Components[i] is TRichEdit then
                                        TRichEdit(form.Components[i]).Clear;
       end;
end;

end.
