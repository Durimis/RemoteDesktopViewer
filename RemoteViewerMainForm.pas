unit RemoteViewerMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RDPCOMAPILib_TLB, Vcl.StdCtrls,
  Vcl.OleCtrls ,HTTPApp, IdHTTP, RemoteViewer;

type
  TfrmRemoteViewer = class(TForm)
  RDPViewer1: TRDPViewer;
  btnConnect: TButton;
  btnDisconnect: TButton;
  edtInvitation: TEdit;
  edtPassword: TEdit;
  Label1: TLabel;
  Label2: TLabel;
  lblState: TLabel;
  btnActive: TButton;
  btnPassive: TButton;
  edtName: TEdit;
  btnSetName: TButton;
  Label4: TLabel;
  lblName: TLabel;
  lblID: TLabel;
  Label7: TLabel;
  Label8: TLabel;
  Label9: TLabel;
  procedure btnConnectClick(Sender: TObject);
  procedure btnDisconnectClick(Sender: TObject);
  procedure btnPassiveClick(Sender: TObject);
  procedure btnSetNameClick(Sender: TObject);
  procedure btnActiveClick(Sender: TObject);
  private
    { Private declarations }
    FViewer: TRemoteViewer;
  public
    { Public declarations }
  end;

var
  frmRemoteViewer: TfrmRemoteViewer;

implementation

{$R *.dfm}

procedure TfrmRemoteViewer.btnConnectClick(Sender: TObject);
begin
  if not Assigned(FViewer) then
    begin
      FViewer := TRemoteViewer.Create;
    end;
  lblID.Caption := FViewer.SupporterID;
  FViewer.Password := edtPassword.Text;
  FViewer.Invitation := edtInvitation.Text;
  RDPViewer1.Connect(FViewer.Invitation, 'User1', FViewer.Password);
  FViewer.StateSet('busy');
  lblState.caption := FViewer.State;
end;

procedure TfrmRemoteViewer.btnDisconnectClick(Sender: TObject);
begin
  if Assigned(FViewer) then
    begin
      try
        RDPViewer1.Disconnect;
        FViewer.StateSet('Active');
        lblState.Caption := FViewer.State;
      finally
        FViewer.Free;
        FViewer := nil;
      end;
  end;
end;

procedure TfrmRemoteViewer.btnActiveClick(Sender: TObject);
var
  stater: TRemoteViewer;
begin
  if not Assigned(FViewer) then
    begin
      FViewer := TRemoteViewer.Create;
    end;
  FViewer.StateSet('Active');
  lblState.Caption := FViewer.State;
end;

procedure TfrmRemoteViewer.btnPassiveClick(Sender: TObject);
var
  stater: TRemoteViewer;
begin
  if not Assigned(FViewer) then
    begin
      FViewer := TRemoteViewer.Create;
    end;
  FViewer.StateSet('Passive');
  lblState.Caption := FViewer.State;
end;

procedure TfrmRemoteViewer.btnSetNameClick(Sender: TObject);
begin
  if not Assigned(FViewer) then
    begin
      FViewer := TRemoteViewer.Create;
    end;
  FViewer.NameSet(edtName.Text);
  lblName.Caption :=  FViewer.Name;
end;

end.
