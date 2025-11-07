unit FormConfigurar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.IniFiles, System.IOUtils,
  Vcl.Mask;

type
  TfrmConfigurar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtPorta: TEdit;
    Button1: TButton;
    edtServidor: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LerOuCriarIniFile;

  end;

var
  frmConfigurar: TfrmConfigurar;

implementation

{$R *.dfm}

procedure TfrmConfigurar.FormCreate(Sender: TObject);

var
 Host:String;
 Porta:integer;
 Ini:TIniFile;
 IniPath: string;
begin
     IniPath := TPath.Combine(ExtractFilePath(ParamStr(0)), 'config.ini');

  Ini := TIniFile.Create(IniPath);
      Host := Ini.ReadString('Servidor', 'Host', '');
      Porta := Ini.ReadInteger('Servidor', 'Porta', 0);
      edtServidor.Text := Host;
      edtPorta.Text := Porta.ToString;
end;


procedure TfrmConfigurar.LerOuCriarIniFile;
var
  Ini: TIniFile;
  IniPath: string;
  Host: string;
  Porta: Integer;
begin
  // Caminho completo do INI (mesma pasta do executável)
  IniPath := TPath.Combine(ExtractFilePath(ParamStr(0)), 'config.ini');

  Ini := TIniFile.Create(IniPath);
  try
    // Se o arquivo ainda não existir, cria com valores padrão
    if not FileExists(IniPath) then
    begin
      Ini.WriteString('Servidor', 'Host',edtServidor.Text);
      Ini.WriteInteger('Servidor', 'Porta',StrToInt(edtPorta.Text));
      Ini.UpdateFile;
      ShowMessage('Arquivo criado: ' + IniPath);
    end;

         if FileExists(IniPath) then
          begin



     // Host := Ini.ReadString('Servidor', 'Host', '');
     // Porta := Ini.ReadInteger('Servidor', 'Porta', 0);
     // edtServidor.Text := Host;
     // edtPorta.Text := Porta.ToString;

      Ini.WriteString('Servidor', 'Host',edtServidor.Text);
      Ini.WriteInteger('Servidor', 'Porta',StrToInt(edtPorta.Text));
      Ini.UpdateFile;
     end;

  finally
    Ini.Free;
  end;
end;

procedure TfrmConfigurar.Button1Click(Sender: TObject);
begin
  LerOuCriarIniFile;
  ModalResult := mrOk; // Fecha o form modal
end;

end.

