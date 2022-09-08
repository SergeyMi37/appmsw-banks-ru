/// Destination Account.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.DestinationInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "DestinationInfo";

Parameter XMLSEQUENCE = 1;

/// Destination BIC.
Property DestinationBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "DestinationBIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Destination Account.
Property DestinationAccount As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "DestinationAccount", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="DestinationInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DestinationBIC</Value>
</Value>
<Value name="3">
<Value>DestinationAccount</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.DestinationInfoD</DataLocation>
<DefaultData>DestinationInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.DestinationInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.DestinationInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.DestinationInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

