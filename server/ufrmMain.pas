unit ufrmMain;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, IdHTTPWebBrokerBridge, Web.HTTPApp,
  System.ImageList, Vcl.ImgList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Vcl.Menus,
  System.Actions, Vcl.ActnList;

type
  TfrmMain = class(TForm)
    AE: TApplicationEvents;
    ImageList1: TImageList;
    grpRestServer: TGroupBox;
    Label1: TLabel;
    ButtonStart: TButton;
    ButtonStop: TButton;
    EditPort: TEdit;
    ButtonOpenBrowser: TButton;
    grpDB: TGroupBox;
    lblServer: TLabel;
    lblUser: TLabel;
    lblPassword: TLabel;
    lblEngine: TLabel;
    lblDatabase: TLabel;
    lblPort: TLabel;
    edServer: TcxTextEdit;
    edUser: TcxTextEdit;
    edPassword: TcxTextEdit;
    cbbEngine: TComboBox;
    edDatabase: TcxTextEdit;
    edPort: TcxTextEdit;
    btnKonekDB: TButton;
    Button1: TButton;
    mmMainMenu: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    ools1: TMenuItem;
    ModelGenerator1: TMenuItem;
    actlstMenu: TActionList;
    actFileExit: TAction;
    actToolsGenerateModel: TAction;
    procedure actToolsGenerateModelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AEIdle(Sender: TObject; var Done: Boolean);
    procedure btnKonekDBClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
  private
    FServer: TIdHTTPWebBrokerBridge;
    procedure StartServer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
{$R *.dfm}

uses
  WinApi.Windows, Winapi.ShellApi, Datasnap.DSSession, uDBUtils, uAppUtils,
  ServerContainerUnit, uModTest, uModBank, ufrmGenerateModel;

procedure TfrmMain.AEIdle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled := not FServer.Active;
  ButtonStop.Enabled  := FServer.Active;
  EditPort.Enabled    := not FServer.Active;
end;

procedure TfrmMain.ButtonOpenBrowserClick(Sender: TObject);
var
  LURL: string;
begin
  StartServer;
  LURL := Format('http://localhost:%s', [EditPort.Text]);
  ShellExecute(0,
        nil,
        PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure TfrmMain.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure TerminateThreads;
begin
  if TDSSessionManager.Instance <> nil then
    TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure TfrmMain.actToolsGenerateModelExecute(Sender: TObject);
begin
  frmGenerateModel := TfrmGenerateModel.Create(Self);
  frmGenerateModel.ShowModal;
end;

procedure TfrmMain.btnKonekDBClick(Sender: TObject);
begin
  if btnKonekDB.Caption = 'Connect' then
  begin
    if TDBUtils.ConnectDB(cbbEngine.Text, edServer.Text, edDatabase.Text, edUser.Text, edPassword.Text, edPort.Text) then
    begin
      btnKonekDB.Caption := 'Disconect';
      grpRestServer.Enabled := True;
//      mmoLogs.Lines.Add('Menambungkan DB ke ' + edServer.Text);
    end;
  end else begin
    FDConnection.Close;
    btnKonekDB.Caption := 'Connect';
    grpRestServer.Enabled := False;
//    mmoLogs.Lines.Add('Memutus DB dari ' + edServer.Text);
  end;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  lTest: TModTest;
  i: Integer;
  lTestItem: TModTestItem;
begin
  lTest         := TModTest.Create;
  lTest.RefNo   := 'Halo';
  lTest.Bank    := TModBank.Create;
  lTest.Bank.ID := TDBUtils.GetNextIDGUIDToString;
  lTest.RefDate := Now();

  for i := 0 to 5 do
  begin
    lTestItem          := TModTestItem.Create;
    lTestItem.ItemCode := 'ItemCode_' + inttostr(i);
    lTestItem.ItemName := 'ItemName_' + inttostr(i);
    lTestItem.QTY      := i;

    lTest.Items.Add(lTestItem);
  end;

  With TDBUtils.GenerateSQL(lTest) do
  begin
    SaveToFile('D:\GenerateSQL.txt');
  end;

//  TDBUtils.LoadFromDB(lTest,'5E76958A-D9D9-4377-A7E8-1192D48B2E7A');
//  showmessage(lTest.RefNo);

end;

procedure TfrmMain.ButtonStopClick(Sender: TObject);
begin
  TerminateThreads;
  FServer.Active := False;
  DSServer.Stop;
  FServer.Bindings.Clear;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);

  if TAppUtils.BacaRegistry('Server') <> '' then
  begin
    cbbEngine.ItemIndex := cbbEngine.Items.IndexOf(TAppUtils.BacaRegistry('Engine'));
    edServer.Text       := TAppUtils.BacaRegistry('Server');
    edDatabase.Text     := TAppUtils.BacaRegistry('Database');
    edUser.Text         := TAppUtils.BacaRegistry('User_Name');
    edPassword.Text     := TAppUtils.BacaRegistry('Password');
    edPort.Text         := TAppUtils.BacaRegistry('Port');
  end;

  StartServer;

end;

procedure TfrmMain.StartServer;
begin
  btnKonekDB.Click;
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := StrToInt(EditPort.Text);
    FServer.Active      := True;
    DSServer.Start;
  end;
end;

end.
