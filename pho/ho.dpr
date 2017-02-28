program ho;

uses
  Vcl.Forms,
  ufrmMain in 'ui\ufrmMain.pas' {frmMain},
  ufrmLogin in 'module\login\ufrmLogin.pas' {frmLogin},
  uConstanta in 'unit\uConstanta.pas',
  ufraFooter1Button in '..\system\ufraFooter1Button.pas' {fraFooter1Button: TFrame},
  ufraFooter5Button in '..\system\ufraFooter5Button.pas' {fraFooter5Button: TFrame},
  ufraLoading in '..\system\ufraLoading.pas' {fraLoading: TFrame},
  ufraProgressBar in '..\system\ufraProgressBar.pas' {fraProgressBar: TFrame},
  ufrmSplash in 'ui\ufrmSplash.pas' {frmSplash},
  ufraFooterDialog2Button in '..\system\ufraFooterDialog2Button.pas' {fraFooterDialog2Button: TFrame},
  ufrmMasterDialog in '..\system\ufrmMasterDialog.pas' {frmMasterDialog},
  ufrmMaster in '..\system\ufrmMaster.pas' {frmMaster},
  udmMain in 'ui\udmMain.pas' {dmMain: TDataModule},
  ufrmAbout in 'ui\ufrmAbout.pas' {frmAbout},
  uInfo in '..\system\uInfo.pas',
  uMenuManagement in '..\system\uMenuManagement.pas',
  uConn in '..\lib\uConn.pas',
  uFormProperty in '..\system\uFormProperty.pas',
  uGlobalProperty in '..\system\uGlobalProperty.pas',
  uNetUtils in '..\system\uNetUtils.pas',
  uTSINIFile in '..\system\uTSINIFile.pas',
  uAppUtils in '..\system\uAppUtils.pas',
  uRetnoUnit in '..\system\uRetnoUnit.pas',
  ufrmPajak in 'module\references\ufrmPajak.pas' {frmPajak},
  ufrmDialogPajak in 'module\references\ufrmDialogPajak.pas' {frmDialogPajak},
  uTSCommonDlg in '..\system\uTSCommonDlg.pas',
  uCompany in '..\classes\uCompany.pas',
  uTSBaseClass in '..\classes\uTSBaseClass.pas',
  uUnit in '..\classes\uUnit.pas',
  ufrmBank in 'module\references\ufrmBank.pas' {frmBank},
  ufrmDialogBank in 'module\references\ufrmDialogBank.pas' {frmDialogBank},
  ufrmDialogHariLibur in 'module\references\ufrmDialogHariLibur.pas' {frmDialogHariLibur},
  ufrmHariLibur in 'module\references\ufrmHariLibur.pas' {frmHariLibur},
  ufrmDialogLokasi in 'module\references\ufrmDialogLokasi.pas' {frmDialogLokasi},
  ufrmLokasi in 'module\references\ufrmLokasi.pas' {frmLokasi},
  ufrmSatuan in 'module\references\ufrmSatuan.pas' {frmSatuan},
  ufrmDialogSatuan in 'module\references\ufrmDialogSatuan.pas' {frmDialogSatuan},
  ufrmDialogSysParm in 'module\references\ufrmDialogSysParm.pas' {frmDialogSysParm},
  ufrmDialogSysParmCompTemp in 'module\references\ufrmDialogSysParmCompTemp.pas' {frmDialogSysParmCompTemp},
  ufrmSysParm in 'module\references\ufrmSysParm.pas' {frmSysParm},
  ufrmSysParmCompTemp1 in 'module\references\ufrmSysParmCompTemp1.pas' {frmSysParmCompTemp1},
  ufrmTipePerusahaan in 'module\references\ufrmTipePerusahaan.pas' {frmTipePerusahaan},
  ufrmDialogTipePerusahaan in 'module\references\ufrmDialogTipePerusahaan.pas' {frmDialogTipePerusahaan},
  ufrmDialogTipePembayaran in 'module\references\ufrmDialogTipePembayaran.pas' {frmDialogTipePembayaran},
  ufrmTipePembayaran in 'module\references\ufrmTipePembayaran.pas' {frmTipePembayaran},
  ufrmTipePengirimanPO in 'module\references\ufrmTipePengirimanPO.pas' {frmTipePengirimanPO},
  ufrmDialogTipePengirimanPO in 'module\references\ufrmDialogTipePengirimanPO.pas' {frmDialogTipePengirimanPO},
  ufrmDialogProductType in 'module\references\ufrmDialogProductType.pas' {frmDialogProductType},
  ufrmDialogProductTypeNBD in 'module\references\ufrmDialogProductTypeNBD.pas' {frmDialogProductTypeNBD},
  ufrmDialogSupplierType in 'module\references\ufrmDialogSupplierType.pas' {frmDialogSupplierType},
  ufrmProductType in 'module\references\ufrmProductType.pas' {frmProductType},
  ufrmProductTypeNBD in 'module\references\ufrmProductTypeNBD.pas' {frmProductTypeNBD},
  ufrmSupplierType in 'module\references\ufrmSupplierType.pas' {frmSupplierType},
  ufrmSearchRekening in 'module\references\ufrmSearchRekening.pas' {frmDialogSearchRekening},
  uDMClient in 'module\system\uDMClient.pas' {DMClient: TDataModule},
  uClientClasses in 'unit\uClientClasses.pas',
  ufrmTest in 'ui\ufrmTest.pas' {frmTest},
  uModApp in '..\model\uModApp.pas',
  uModTest in '..\model\uModTest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TDMClient, DMClient);
  Application.CreateForm(TfrmTest, frmTest);
  Application.Run;
end.
