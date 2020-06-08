unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    edt_password: TEdit;
    img_show: TImage;
    img_hide: TImage;
    procedure hideShow_eyes ;
    procedure img_hideClick(Sender: TObject);
    procedure img_showClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.hideShow_eyes;
begin
   begin
    if  img_show.Visible = true then
      begin
          edt_password.passwordchar := #0 ;
          img_hide.Visible := True   ;
          img_show.Visible:= false;

      end
    else  if  img_hide.Visible = true then
       begin
         edt_password.passwordchar := '*';
         img_show.Visible := true ;
         img_hide.Visible:= false;
       end;

  end;
end;

procedure TForm1.img_hideClick(Sender: TObject);
begin
 hideShow_eyes ;
end;

procedure TForm1.img_showClick(Sender: TObject);
begin
  hideShow_eyes;
end;

end.
