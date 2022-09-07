/// Информация о лице.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.OfficialPersonInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.Max150TextType, Sb.xsd.lt.Max60TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "OfficialPersonInfo";

Parameter XMLSEQUENCE = 1;

/// Должность.
Property HoldPosition As Sb.xsd.lt.Max150TextType(XMLNAME = "HoldPosition", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ФИО.
Property Name As Sb.xsd.lt.Max60TextType(XMLNAME = "Name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="OfficialPersonInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>HoldPosition</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.OfficialPersonInfoD</DataLocation>
<DefaultData>OfficialPersonInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.OfficialPersonInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.OfficialPersonInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.OfficialPersonInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

