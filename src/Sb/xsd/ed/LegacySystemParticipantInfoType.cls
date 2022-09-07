/// Legacy systems information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.LegacySystemParticipantInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.DateType, Sb.xsd.lt.Max1TextType, Sb.xsd.lt.Max40TextType, Sb.xsd.lt.Max4TextType, Sb.xsd.lt.Max75TextType, Sb.xsd.lt.Max7TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "LegacySystemParticipantInfoType";

Parameter XMLSEQUENCE = 1;

/// Region Name for legacy systems.
Property RayonName As Sb.xsd.lt.Max75TextType(XMLNAME = "RayonName", XMLPROJECTION = "ATTRIBUTE");

/// Legacy system participant’s type.
Property UER As Sb.xsd.lt.Max1TextType(XMLNAME = "UER", XMLPROJECTION = "ATTRIBUTE");

/// Available of legacy services code.
Property Real As Sb.xsd.lt.Max4TextType(XMLNAME = "Real", XMLPROJECTION = "ATTRIBUTE") [ SqlFieldName = _Real ];

/// Validation date.
Property DateCh As Sb.xsd.lt.DateType(XMLNAME = "DateCh", XMLPROJECTION = "ATTRIBUTE");

/// BIC of Head CBR Subdivision in MER System.
Property KGURBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "KGURBIC", XMLPROJECTION = "ATTRIBUTE");

/// Region name for legacy systems.
Property NameT As Sb.xsd.lt.Max40TextType(XMLNAME = "NameT", XMLPROJECTION = "ATTRIBUTE");

/// Telegraph number 1.
Property AT1 As Sb.xsd.lt.Max7TextType(XMLNAME = "AT1", XMLPROJECTION = "ATTRIBUTE");

/// Telegraph number 2.
Property AT2 As Sb.xsd.lt.Max7TextType(XMLNAME = "AT2", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="LegacySystemParticipantInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RayonName</Value>
</Value>
<Value name="3">
<Value>UER</Value>
</Value>
<Value name="4">
<Value>Real</Value>
</Value>
<Value name="5">
<Value>DateCh</Value>
</Value>
<Value name="6">
<Value>KGURBIC</Value>
</Value>
<Value name="7">
<Value>NameT</Value>
</Value>
<Value name="8">
<Value>AT1</Value>
</Value>
<Value name="9">
<Value>AT2</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.LegacySyste631ED</DataLocation>
<DefaultData>LegacySystemParticipantInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.LegacySyste631ED</IdLocation>
<IndexLocation>^Sb.xsd.ed.LegacySyste631EI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.LegacySyste631ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

