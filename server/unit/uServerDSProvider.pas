unit uServerDSProvider;

interface
uses
  System.Classes, uModApp, uDBUtils, Rtti, Data.DB, SysUtils,
  StrUtils;

type
  {$METHODINFO ON}
  TDSProvider = class(TComponent)
  private
  public
    function Bank_GetDSOverview: TDataSet;
    function Rekening_GetDSLookup: TDataSet;
    function RefPajak_GetDSOverview: TDataSet;
    function RefTipeBarang_GetDSOverview: TDataSet;
    function GroupRekening_GetDSLookup: TDataSet;
    function Rekening_GetDSOverview: TDataSet;
    function Member_GetDSOverview: TDataSet;
    function MemberActivasi_GetDSOverview: TDataSet;
    function RefDiscMember_GetDSOverview: TDataSet;
    function MemberKeluarga_GetDSOverview: TDataSet;
    function RefGrupMember_GetDSOverview: TDataSet;
    function Satuan_GetDSLookup: TDataSet;
    function CostCenter_GetDSLookup: TDataSet;
    function Company_GetDSLookup: TDataSet;
    function CostCenter_GetDSOverview: TDataSet;
    function Company_GetDSOverview: TDataSet;
    function TipePembayaran_GetDSOverview: TDataSet;
    function TipePerusahaan_GetDSOverview: TDataSet;
    function Outlet_GetDSLookup: TDataSet;
    function Lokasi_GetDSLookup: TDataSet;
    function Merchandise_GetDSLookup: TDataSet;
    function MerchandiseGroup_GetDSLookup: TDataSet;
    function SubGroup_GetDSLookup: TDataSet;
    function Satuan_GetDSOverview: TDataSet;
    function Kategori_GetDSLookup: TDataSet;
    function Merk_GetDSLookUp: TDataSet;
    function RefPajak_GetDSLookup: TDataSet;
    function RefTipeBarang_GetDSLookup: TDataSet;
    function TipeSuplier_GetDSOverview: TDataSet;
    function Unit_GetDSOverview: TDataSet;
    function Unit_GetDSLookUp: TDataSet;
    function UnitType_GetDSLookUp: TDataSet;
    function UnitType_GetDSOverview: TDataSet;
    function App_GetDSLookUp: TDataSet;
    function App_GetDSOverview: TDataSet;
    function Barang_GetDSOverview: TDataSet;


  end;
  {$METHODINFO OFF}
implementation

function TDSProvider.Bank_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'SELECT Bank_ID, BANK_CODE, BANK_NAME, BANK_BRANCH, BANK_ADDRESS,'
      +' BANK_REK_CODE, BANK_DESCRIPTION,'
      +' BANK_REK_COMP_ID, OP_CREATE, DATE_CREATE, DATE_MODIFY'
      +' FROM BANK';

  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Rekening_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select REKENING_ID, REK_CODE, REK_NAME, REK_DESCRIPTION, REF$GRUP_REKENING_ID from REKENING';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.RefPajak_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'SELECT * from REF$PAJAK';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.RefTipeBarang_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'SELECT * from REF$TIPE_BARANG';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.GroupRekening_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select REF$GRUP_REKENING_ID, GROREK_NAME, GROREK_DESCRIPTION from REF$GRUP_REKENING';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Rekening_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select REKENING_ID, (REK_CODE + '' - ''+ REK_NAME) as REKENING, REK_CODE, REK_NAME, REK_DESCRIPTION, REKENING_PARENT_ID, REF$GRUP_REKENING_ID from REKENING';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Member_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select * from MEMBER';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.MemberActivasi_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select * from MEMBER_ACTIVASI';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.RefDiscMember_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select * from REF$DISC_MEMBER';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.MemberKeluarga_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select * from MEMBER_KELUARGA';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.RefGrupMember_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select * from REF$GRUP_MEMBER';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Satuan_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select sat_name, sat_code, sat_group, ref$satuan_id' +
       ' from ref$satuan' +
       ' ORDER by sat_code';

  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.CostCenter_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select COCTER_CODE, COCTER_NAME, COST_CENTER_ID from COST_CENTER';

  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Company_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select COMP_CODE, COMP_NAME, COMPANY_ID from COMPANY';

  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Satuan_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select sat_code, sat_name,sat_group, ref$satuan_id' +
       ' from ref$satuan' +
       ' ORDER by sat_code';

  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.CostCenter_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select COCTER_CODE, COCTER_NAME, COST_CENTER_ID from COST_CENTER';

  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Company_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select COMP_CODE, COMP_NAME, COMPANY_ID from COMPANY';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.TipePembayaran_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select REF$TIPE_PEMBAYARAN_ID, TPBYR_CODE, TPBYR_NAME from REF$TIPE_PEMBAYARAN';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.TipePerusahaan_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'SELECT * FROM REF$TIPE_PERUSAHAAN';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Outlet_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select OUTLET_NAME, OUTLET_CODE, REF$OUTLET_ID'
      +' from REF$OUTLET';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Lokasi_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select REF$LOKASI_ID, LOK_NAME, LOK_CODE, LOK_DESCRIPTION'
      +' from REF$LOKASI ORDER BY LOK_CODE';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Merchandise_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select MERCHAN_NAME, MERCHAN_CODE, REF$MERCHANDISE_ID'
      +' FROM REF$MERCHANDISE ORDER BY MERCHAN_CODE';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.MerchandiseGroup_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'select A.REF$MERCHANDISE_ID, A.REF$MERCHANDISE_GRUP_ID,'
      +' A.MERCHANGRUP_CODE, A.MERCHANGRUP_NAME, B.MERCHAN_NAME'
      +' from REF$MERCHANDISE_GRUP A'
      +' INNER JOIN REF$MERCHANDISE B ON A.REF$MERCHANDISE_ID = B.REF$MERCHANDISE_ID';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.SubGroup_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'SELECT A.SUBGRUP_NAME, A.SUBGRUP_CODE, B.MERCHANGRUP_NAME,'
      +' A.REF$SUB_GRUP_ID , A.REF$MERCHANDISE_GRUP_ID'
      +' FROM REF$SUB_GRUP A'
      +' INNER JOIN REF$MERCHANDISE_GRUP B'
      +' ON A.REF$MERCHANDISE_GRUP_ID = B.REF$MERCHANDISE_GRUP_ID';

  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Kategori_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'Select A.KAT_NAME, A.KAT_CODE, B.SUBGRUP_NAME, A.REF$KATEGORI_ID, A.REF$SUB_GRUP_ID'
      +' from REF$KATEGORI A'
      +' INNER JOIN REF$SUB_GRUP B ON A.REF$SUB_GRUP_ID=B.REF$SUB_GRUP_ID'
      +' ORDER BY KAT_CODE';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Merk_GetDSLookUp: TDataSet;
var
  S: string;
begin
  S := 'select Merk_Name,Merk_Description, Merk_ID from Merk';
//  if Test <> nil then
//    Test.fields[0].AsString;
  Result := TDBUtils.OpenQuery(S);
//  Test := Result;
end;

function TDSProvider.RefPajak_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'Select PJK_NAME, PJK_CODE, Ref$Pajak_ID FROM REF$PAJAK';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.RefTipeBarang_GetDSLookup: TDataSet;
var
  S: string;
begin
  S := 'Select TPBRG_NAME, TPBRG_CODE, REF$TIPE_BARANG_ID FROM REF$TIPE_BARANG';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.TipeSuplier_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select TPSUP_CODE, TPSUP_NAME from REF$TIPE_SUPLIER';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Unit_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'SELECT * FROM AUT$UNIT';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Unit_GetDSLookUp: TDataSet;
var
  S: string;
begin
  S := 'SELECT UNT_CODE, UNT_NAME, AUT$UNIT_ID FROM AUT$UNIT';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.UnitType_GetDSLookUp: TDataSet;
var
  S: string;
begin
  S := 'SELECT TYPE_NAME, TYPE_DESC, UNIT_TYPE_ID from UNIT_TYPE';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.UnitType_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'SELECT TYPE_NAME, TYPE_DESC, UNIT_TYPE_ID from UNIT_TYPE';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.App_GetDSLookUp: TDataSet;
var
  S: string;
begin
  S := 'select APP_CODE, APP_NAME, APP_DESCRIPTION,AUT$APP_ID from AUT$APP';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.App_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'select APP_CODE, APP_NAME, APP_DESCRIPTION,AUT$APP_ID from AUT$APP';
  Result := TDBUtils.OpenQuery(S);
end;

function TDSProvider.Barang_GetDSOverview: TDataSet;
var
  S: string;
begin
  S := 'SELECT A.BARANG_ID,'
      +' A.BRG_CODE, A.BRG_CATALOG,'
      +' I.MERK_NAME, A.BRG_NAME, B.MERCHAN_NAME, C.MERCHANGRUP_NAME,'
      +' E.SUBGRUP_NAME, D.KAT_NAME, F.TPBRG_NAME, G.SAT_NAME, H.OUTLET_NAME'
      +' FROM BARANG A'
      +' LEFT JOIN REF$MERCHANDISE B ON A.REF$MERCHANDISE_ID = B.REF$MERCHANDISE_ID'
      +' LEFT JOIN REF$MERCHANDISE_GRUP C ON C.REF$MERCHANDISE_GRUP_ID = A.REF$MERCHANDISE_GRUP_ID'
      +' LEFT JOIN REF$KATEGORI D ON D.REF$KATEGORI_ID=A.REF$KATEGORI_ID'
      +' LEFT JOIN REF$SUB_GRUP E ON E.REF$SUB_GRUP_ID=D.REF$SUB_GRUP_ID'
      +' LEFT JOIN REF$TIPE_BARANG F ON A.REF$TIPE_BARANG_ID=F.REF$TIPE_BARANG_ID '
      +' LEFT JOIN REF$SATUAN G ON G.REF$SATUAN_ID = A.REF$SATUAN_STOCK'
      +' LEFT JOIN REF$OUTLET H ON H.REF$OUTLET_ID = A.REF$OUTLET_ID'
      +' INNER JOIN MERK I ON I.MERK_ID = A.MERK_ID';

  Result := TDBUtils.OpenQuery(S);
end;

end.
