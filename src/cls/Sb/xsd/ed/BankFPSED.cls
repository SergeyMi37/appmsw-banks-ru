/// Bank Attributes in FTI.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BankFPSED Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BankFPSED";

Parameter XMLSEQUENCE = 1;

/// Bank, Bank Branch.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Payer Agent Account Number or Beneficiary Agent Account Number opened in CBR Subdivision.
Property CorrespAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CorrespAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="BankFPSEDDefaultData">
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
<DataLocation>^Sb.xsd.ed.BankFPSEDD</DataLocation>
<DefaultData>BankFPSEDDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BankFPSEDD</IdLocation>
<IndexLocation>^Sb.xsd.ed.BankFPSEDI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BankFPSEDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

