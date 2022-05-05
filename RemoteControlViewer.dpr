program RemoteControlViewer;

uses
  Vcl.Forms,
  RemoteViewerMainForm in 'RemoteViewerMainForm.pas' {frmRemoteViewer},
  RemoteViewer in 'RemoteViewer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRemoteViewer, frmRemoteViewer);
  Application.Run;
end.
