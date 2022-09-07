/// Реквизиты заполнения формы
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.DataForm Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.ReportIDType, Sb.xsd.lt.TwoDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "DataForm";

Parameter XMLSEQUENCE = 1;

/// Идентификатор (номер) формы
Property ReportID As Sb.xsd.lt.ReportIDType(XMLNAME = "ReportID", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Условный номер графы формы
Property DataCode As Sb.xsd.lt.TwoDigitCodeType(XMLNAME = "DataCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="DataFormDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ReportID</Value>
</Value>
<Value name="3">
<Value>DataCode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.DataFormD</DataLocation>
<DefaultData>DataFormDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.DataFormD</IdLocation>
<IndexLocation>^Sb.xsd.ed.DataFormI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.DataFormS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

