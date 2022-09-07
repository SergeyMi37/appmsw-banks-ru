/// Beneficiary Attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PayeeRU Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.INNIDTextType, Sb.xsd.lt.KPPIDTextType, Sb.xsd.lt.Max160TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PayeeRU";

Parameter XMLSEQUENCE = 1;

/// Beneficiary's Name (Field 16).
Property Name As Sb.xsd.lt.Max160TextType(XMLNAME = "Name") [ Required ];

/// Beneficiary's serving Bank Attributes.
Property Bank As Sb.xsd.ed.BankRU(XMLNAME = "Bank") [ Required ];

/// Beneficiary's Account (Field 17).
Property PersonalAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "PersonalAcc", XMLPROJECTION = "ATTRIBUTE");

/// Beneficiary's INN if assigned (Field 61).
Property INN As Sb.xsd.lt.INNIDTextType(XMLNAME = "INN", XMLPROJECTION = "ATTRIBUTE");

/// Beneficiary's Tax Registration Code (KPP) if assigned (Field 103).
Property KPP As Sb.xsd.lt.KPPIDTextType(XMLNAME = "KPP", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="PayeeRUDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Bank</Value>
</Value>
<Value name="4">
<Value>PersonalAcc</Value>
</Value>
<Value name="5">
<Value>INN</Value>
</Value>
<Value name="6">
<Value>KPP</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PayeeRUD</DataLocation>
<DefaultData>PayeeRUDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PayeeRUD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PayeeRUI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PayeeRUS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

