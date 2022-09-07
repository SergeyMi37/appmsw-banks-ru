/// Bank Attributes in FTI.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BankRU Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BankRU";

Parameter XMLSEQUENCE = 1;

/// Bank, Bank Branch or CBR Subdivision BIC (Field 11 or 14).
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Payer Agent Account Number (Field 12) or Beneficiary Agent Account Number (Field 15) opened in CBR Subdivision.
Property CorrespAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CorrespAcc", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="BankRUDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>CorrespAcc</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BankRUD</DataLocation>
<DefaultData>BankRUDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BankRUD</IdLocation>
<IndexLocation>^Sb.xsd.ed.BankRUI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BankRUS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

