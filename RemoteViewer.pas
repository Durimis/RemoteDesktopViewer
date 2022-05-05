unit RemoteViewer;

interface

uses Classes, HTTPApp, IdHTTP;

type

TRemoteViewer = Class(TObject)
  private
    FName: string;
    FSupporterID: string;
    FState: string;
    FPassword: string;
    FInvitation: string;
    FServerAddress: string;
    procedure SetName(const Value: string);
    procedure SetSupporterID(const Value: string);
    procedure SetState(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetInvitation(const Value: string);
    procedure SetServerAddress(const Value: string);

  public
    constructor Create;
    property Name: string read FName write SetName;
    property ServerAddress:string read FServerAddress write SetServerAddress;
    property SupporterID: string read FSupporterID write SetSupporterID;
    property State: string read FState write SetState;
    property Password: string read FPassword write SetPassword;
    property Invitation: string read FInvitation write SetInvitation;
    procedure StateSet(value: string);
    procedure NameSet(value:string);
 end;

implementation
{ TRemoteViewer }
constructor TRemoteViewer.Create;
begin
  ServerAddress := 'http://remote.jointdots.com';
  SupporterID := '1';
end;

procedure TRemoteViewer.NameSet(value: string);
var
  HTTP: TIdHTTP;
  Query: string;
begin
  Name := value;
  HTTP := TIdHTTP.Create;
  try
    Query := ServerAddress + '/name.php?id=' + SupporterID + '&name=' + String(HTTPEncode(Name));
    HTTP.Get(Query);
  finally
    HTTP.Free;
  end;
end;

procedure TRemoteViewer.StateSet(value:string);
var
  HTTP: TIdHTTP;
  Query: string;
begin
  State := value;
  HTTP := TIdHTTP.Create;
  try
    Query := ServerAddress + '/state.php?id=' + SupporterID + '&state=' + State;
    HTTP.Get(Query);
  finally
    HTTP.Free;
  end;
end;

procedure TRemoteViewer.SetInvitation(const Value: string);
begin
  FInvitation := Value;
end;

procedure TRemoteViewer.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TRemoteViewer.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TRemoteViewer.SetServerAddress(const Value: string);
begin
  FServerAddress := Value;
end;

procedure TRemoteViewer.SetState(const Value: string);
begin
  FState := Value;
end;

procedure TRemoteViewer.SetSupporterID(const Value: string);
begin
  FSupporterID := Value;
end;

end.
