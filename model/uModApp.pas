unit uModApp;

interface

uses
  SysUtils, System.Rtti, System.TypInfo;

type

  TAttributeClass = class of TCustomAttribute;

  AttributeOfCustom = class(TCustomAttribute)
  private
    FCustomField: String;
  public
    constructor Create(aCustomField: string = '');
    property CustomField: String read FCustomField write FCustomField;
  end;
  AttributeOfCode = class(AttributeOfCustom)
  end;
  AttributeOfForeign = class(AttributeOfCustom)
  end;
  AttributeOfHeader = class(AttributeOfForeign)
  end;


{$TYPEINFO ON}
  TModApp = class;
{$TYPEINFO OFF}

  TModApp = class(TObject)
  private
    FDate_Create: TDatetime;
    FDate_Modify: TDatetime;
    FID: string;

    FObjectState: Integer;

  protected
  public
    constructor Create; reintroduce;
    constructor CreateID(AID : String);
    function FieldNameOf(aprop: TRttiProperty): String;
    function GetCodeField: String;
    function GetCodeValue: String;
    function GetHeaderField: String;
    function GetHeaderKey: String;
    function GetHeaderProperty: String;
    class function GetPrimaryField: String; dynamic;
    class function GetTableName: String; dynamic;
    function PropFromAttr(attr: TAttributeClass; WithException: Boolean = True):
        TRttiProperty;
    function QuotValue(AProp: TRttiProperty): String;
    class procedure RegisterRTTI;

    property ObjectState: Integer read FObjectState write FObjectState;   // 1 Baru, 3 Edit, 5 Hapus
  published
    property Date_Create: TDatetime read FDate_Create write FDate_Create;
    property Date_Modify: TDatetime read FDate_Modify write FDate_Modify;
    property ID: string read FID write FID;
  end;


//  TModAppItem = class(TModApp)
//  public
//    class function GetHeaderField: string; dynamic; abstract;
//    procedure SetHeaderProperty(AHeaderProperty : TModApp); dynamic; abstract;
//  end;


  TModAppClass = class of TModApp;
//  TModAppClassItem = class of TModAppItem;

implementation

uses
  StrUtils;

constructor AttributeOfCustom.Create(aCustomField: string = '');
begin
  Self.CustomField := aCustomField;
end;


constructor TModApp.Create;
begin
  inherited;
//  MappingDBField;
  ObjectState := 1;
  Date_Create := Now();
  Date_Modify := Now();
end;


constructor TModApp.CreateID(AID: String);
begin
  Self    := inherited Create;
  Self.ID := AID;
end;

function TModApp.FieldNameOf(aprop: TRttiProperty): String;
var
  a: TCustomAttribute;
begin
  Result := '';
  if UpperCase(aProp.Name) = 'ID' then
    Result := Self.GetPrimaryField
  else begin
    for a in aprop.GetAttributes do
    begin
      if a.InheritsFrom(AttributeOfCustom) then
      begin
        if AttributeOfCustom(a).CustomField <> '' then
          Result := AttributeOfCustom(a).CustomField;
        Break;
      end;
    end;
    if (Result = '') and (aProp.PropertyType.TypeKind = tkClass) then
      Result := aProp.Name + '_ID';
    if Result = '' then Result := aProp.Name;
  end;
end;

function TModApp.GetCodeField: String;
begin
  Result := FieldNameOf( PropFromAttr(AttributeOfCode) );
end;

function TModApp.GetCodeValue: String;
begin
  Result := PropFromAttr(AttributeOfCode).GetValue(Self).AsString;
end;

function TModApp.GetHeaderField: String;
begin
  Result := FieldNameOf( PropFromAttr(AttributeOfHeader) );
end;

function TModApp.GetHeaderKey: String;
begin
  Result := PropFromAttr(AttributeOfHeader).GetValue(Self).AsString;
end;

function TModApp.GetHeaderProperty: String;
begin
  Result := PropFromAttr(AttributeOfHeader).Name;
end;

class function TModApp.GetPrimaryField: String;
begin
  Result := Self.GetTableName + '_ID';
end;

class function TModApp.GetTableName: String;
begin
  Result := AnsiRightStr( Self.ClassName , Length(Self.ClassName)-4);
end;

function TModApp.PropFromAttr(attr: TAttributeClass; WithException: Boolean =
    True): TRttiProperty;
var
  a: TCustomAttribute;
  ctx : TRttiContext;
  rt : TRttiType;
  prop : TRttiProperty;
begin
  Result := nil;
  rt := ctx.GetType(Self.ClassType);
  for prop in rt.GetProperties do
  begin
    If prop.Visibility <> mvPublished then continue;
    for a in prop.GetAttributes do
    begin
      if a is attr then
      begin
        Result := prop;
        break;
      end;
    end;
    if Result <> nil then break;
  end;

  if (Result = nil) and (WithException) then
    raise Exception.Create(
      'Attribute : ' + attr.ClassName + ' can''t be found in '
      + Self.ClassName
    );
end;

function TModApp.QuotValue(AProp: TRttiProperty): String;
var
  lDate: TDateTime;
  lObj: TObject;
begin
  If LowerCase(AProp.PropertyType.Name) = LowerCase('TDateTime') then
  begin
    lDate := AProp.GetValue(Self).AsExtended;
    Result := QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',lDate));
  end else begin
    case AProp.PropertyType.TypeKind of
      tkInteger, tkInt64:
        Result := InttoStr(AProp.GetValue(Self).AsInteger);
      tkFloat:
        Result := FloatToStr(AProp.GetValue(Self).AsExtended);
      tkString, tkLString, tkUString, tkChar, tkWString, tkVariant:
        Result := QuotedStr(AProp.GetValue(Self).AsString);
      tkEnumeration:
        Result := BoolToStr(AProp.GetValue(Self).AsBoolean);
      tkClass:
        begin
          Result := 'NULL';
          lObj := AProp.GetValue(Self).AsObject;
          if (lObj.InheritsFrom(TModApp)) and (lObj <> nil) then
            if TModApp(lObj).ID <> '' then
              Result := QuotedStr(TModApp(lObj).ID);
        end
    else
      Raise Exception.Create(
        'Property Type tidak terdaftar atas ' + Self.ClassName + ',' + AProp.Name);
    end;
  end;
end;

class procedure TModApp.RegisterRTTI;
begin
  //dummy method agar rtti diregister secara full
  //akan error "delphi cannot instantiate type" pada datasnapserver kalau ini tidak dilakukan
  //jalankan di initialization section
end;

end.
