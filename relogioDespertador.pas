unit relogioDespertador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbdtCompleto: TLabel;
    lbHoraAtual: TLabel;
    edtHorDesp: TEdit;
    rgControle: TRadioGroup;
    Despertar: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  rgControle.ItemIndex:=0;
  lbdtCompleto.Caption:=FormatDateTime('dddd, dd "de" mmmm "de" yyy', Date);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if (edtHorDesp.Text <= TimeToStr(Time)) then
  begin
    beep;
    beep;
    beep;
    SndPlaySound('C:WindowsMediaSom.wav',SND_ASYNC);
    // n�o esqueceer de adicionar a biblioteca mmsystem na clausula uses
    //  ou usando mediaplayer
  end;
  lbHoraAtual.Caption:=TimeToStr(Time);
end;

end.
