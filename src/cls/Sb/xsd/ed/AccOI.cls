/// Информация по ответисполнителям
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccOI Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.Max50TextType, Sb.xsd.lt.OneDigitCodeType, Sb.xsd.lt.UserIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccOI";

Parameter XMLSEQUENCE = 1;

/// БИК подразделения ответисполнителя
Property BICOI As Sb.xsd.lt.BICRUIDType(XMLNAME = "BICOI", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер ответисполнителя, которому даны права к счету
Property OINo As Sb.xsd.lt.UserIDType(XMLNAME = "OINo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Фамилия ответисполнителя
Property OISurname As Sb.xsd.lt.Max50TextType(XMLNAME = "OISurname", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Имя ответисполнителя
Property OIName As Sb.xsd.lt.Max50TextType(XMLNAME = "OIName", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Отчество ответисполнителя(при наличии)
Property OIPatronymic As Sb.xsd.lt.Max50TextType(XMLNAME = "OIPatronymic", XMLPROJECTION = "ATTRIBUTE");

/// Тип доступа к счету
Property AccessType As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "AccessType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="AccOIDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BICOI</Value>
</Value>
<Value name="3">
<Value>OINo</Value>
</Value>
<Value name="4">
<Value>OISurname</Value>
</Value>
<Value name="5">
<Value>OIName</Value>
</Value>
<Value name="6">
<Value>OIPatronymic</Value>
</Value>
<Value name="7">
<Value>AccessType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccOID</DataLocation>
<DefaultData>AccOIDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccOID</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccOII</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccOIS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

