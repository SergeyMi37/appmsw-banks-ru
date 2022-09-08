/// List of Indirect Participant BIC’s for Direct Participant.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.IPListType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.BICRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "IPListType";

Parameter XMLSEQUENCE = 1;

/// БИК косвенного участника.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="IPListTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.IPListTypeD</DataLocation>
<DefaultData>IPListTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.IPListTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.IPListTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.IPListTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

