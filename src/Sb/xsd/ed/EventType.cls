/// Event.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.EventType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.ChangeType, Sb.xsd.lt.EventCodeType, Sb.xsd.lt.Max3NumberType, Sb.xsd.lt.Max4NumberType, Sb.xsd.lt.OneDigitCodeType, Sb.xsd.lt.TimeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "EventType";

Parameter XMLSEQUENCE = 1;

/// Event code.
Property EventCode As Sb.xsd.lt.EventCodeType(XMLNAME = "EventCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Event number.
Property EventNumber As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "EventNumber", XMLPROJECTION = "ATTRIBUTE");

/// Event frequency.
Property EventFrequency As Sb.xsd.lt.Max4NumberType(XMLNAME = "EventFrequency", XMLPROJECTION = "ATTRIBUTE");

/// Event time.
Property EventTime As Sb.xsd.lt.TimeType(XMLNAME = "EventTime", XMLPROJECTION = "ATTRIBUTE");

/// Event minimum duration.
Property EventMinimumDuration As Sb.xsd.lt.Max3NumberType(XMLNAME = "EventMinimumDuration", XMLPROJECTION = "ATTRIBUTE");

/// Тип изменения.
Property ChangeType As Sb.xsd.lt.ChangeType(XMLNAME = "ChangeType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="EventTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EventCode</Value>
</Value>
<Value name="3">
<Value>EventNumber</Value>
</Value>
<Value name="4">
<Value>EventFrequency</Value>
</Value>
<Value name="5">
<Value>EventTime</Value>
</Value>
<Value name="6">
<Value>EventMinimumDuration</Value>
</Value>
<Value name="7">
<Value>ChangeType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.EventTypeD</DataLocation>
<DefaultData>EventTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.EventTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.EventTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.EventTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

