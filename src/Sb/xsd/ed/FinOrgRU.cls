/// Financial Institution Attributes in FTI.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.FinOrgRU Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.BICSWIFTIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "FinOrgRU";

Parameter XMLSEQUENCE = 1;

/// Bank National BIC (fields 83.2, 84.2).
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// SWIFT BIC (fields 83.3, 84.3).
Property SWBIC As Sb.xsd.lt.BICSWIFTIDType(XMLNAME = "SWBIC", XMLPROJECTION = "ATTRIBUTE");

/// Bank Account Number (fields 83.4, 84.4).
Property CorrespAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CorrespAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="FinOrgRUDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>SWBIC</Value>
</Value>
<Value name="4">
<Value>CorrespAcc</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.FinOrgRUD</DataLocation>
<DefaultData>FinOrgRUDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.FinOrgRUD</IdLocation>
<IndexLocation>^Sb.xsd.ed.FinOrgRUI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.FinOrgRUS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

