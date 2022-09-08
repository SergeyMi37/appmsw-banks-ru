/// Financial Institution Attributes in FTI.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.FinOrg Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberSWIFTIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.BICSWIFTIDType, Sb.xsd.lt.Max140TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "FinOrg";

Parameter XMLSEQUENCE = 1;

/// Name of Bank (fields 81.1, 82.1, 85.1, 86.1).
Property Name As Sb.xsd.lt.Max140TextType(XMLNAME = "Name");

/// Bank National BIC (fields 81.2, 82.2, 85.2, 86.2).
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE");

/// SWIFT BIC (fields 81.3, 82.3, 85.3, 86.3).
Property SWBIC As Sb.xsd.lt.BICSWIFTIDType(XMLNAME = "SWBIC", XMLPROJECTION = "ATTRIBUTE");

/// Account Number (fields 81.4, 82.4, 85.4, 86.4).
Property BankAccount As Sb.xsd.lt.AccountNumberSWIFTIDType(XMLNAME = "BankAccount", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="FinOrgDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>BIC</Value>
</Value>
<Value name="4">
<Value>SWBIC</Value>
</Value>
<Value name="5">
<Value>BankAccount</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.FinOrgD</DataLocation>
<DefaultData>FinOrgDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.FinOrgD</IdLocation>
<IndexLocation>^Sb.xsd.ed.FinOrgI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.FinOrgS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

