/// Payer Attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PayerRU Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.INNIDTextType, Sb.xsd.lt.KPPIDTextType, Sb.xsd.lt.Max160TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PayerRU";

Parameter XMLSEQUENCE = 1;

/// Payer's Name (Field 8).
Property Name As Sb.xsd.lt.Max160TextType(XMLNAME = "Name") [ Required ];

/// Payer's serving Bank Attributes.
Property Bank As Sb.xsd.ed.BankRU(XMLNAME = "Bank") [ Required ];

/// Payer's Account (Field 9).
Property PersonalAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "PersonalAcc", XMLPROJECTION = "ATTRIBUTE");

/// Payer's INN if assigned (Field 60).
Property INN As Sb.xsd.lt.INNIDTextType(XMLNAME = "INN", XMLPROJECTION = "ATTRIBUTE");

/// Payer's Tax Registration Code (KPP) if assigned (Field 102).
Property KPP As Sb.xsd.lt.KPPIDTextType(XMLNAME = "KPP", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="PayerRUDefaultData">
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
<DataLocation>^Sb.xsd.ed.PayerRUD</DataLocation>
<DefaultData>PayerRUDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PayerRUD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PayerRUI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PayerRUS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

