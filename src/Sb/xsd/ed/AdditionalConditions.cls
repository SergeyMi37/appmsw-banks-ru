/// Дополнительные условия проведения платежей или осуществления расчетов.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AdditionalConditions Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.Indicator1Type, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AdditionalConditions";

Parameter XMLSEQUENCE = 1;

/// Разрешение экстренных платежей.
Property UrgentPayments As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "UrgentPayments", XMLPROJECTION = "ATTRIBUTE");

/// Признак изменения реквизита "Разрешение экстренных платежей".
Property ChangeUrgentPayments As Sb.xsd.lt.Indicator1Type(XMLNAME = "ChangeUrgentPayments", XMLPROJECTION = "ATTRIBUTE");

/// Вид обработки внутридневной очереди при завершении расчетов.
Property SuspendedMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "SuspendedMode", XMLPROJECTION = "ATTRIBUTE");

/// Признак изменения реквизита "Вид обработки внутридневной очереди при завершении расчетов".
Property ChangeSuspendedMode As Sb.xsd.lt.Indicator1Type(XMLNAME = "ChangeSuspendedMode", XMLPROJECTION = "ATTRIBUTE");

/// Вид лимитирования платежей.
Property LimitedMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "LimitedMode", XMLPROJECTION = "ATTRIBUTE");

/// Признак изменения реквизита "Вид лимитирования платежей".
Property ChangeLimitedMode As Sb.xsd.lt.Indicator1Type(XMLNAME = "ChangeLimitedMode", XMLPROJECTION = "ATTRIBUTE");

/// Разрешение установления Банком России ликвидности для расчетов ПУР до начала операционного дня.
Property LiquidityBfOD As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "LiquidityBfOD", XMLPROJECTION = "ATTRIBUTE");

/// Признак изменения реквизита "Разрешение установления Банком России ликвидности для расчетов ПУР до начала операционного дня".
Property ChangeLiquidityBfOD As Sb.xsd.lt.Indicator1Type(XMLNAME = "ChangeLiquidityBfOD", XMLPROJECTION = "ATTRIBUTE");

/// Разрешение установления Банком России ликвидности для расчетов ПУР в течение операционного дня.
Property LiquidityInOD As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "LiquidityInOD", XMLPROJECTION = "ATTRIBUTE");

/// Признак изменения реквизита "Разрешение установления Банком России ликвидности для расчетов ПУР в течение операционного дня".
Property ChangeLiquidityInOD As Sb.xsd.lt.Indicator1Type(XMLNAME = "ChangeLiquidityInOD", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="AdditionalConditionsDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UrgentPayments</Value>
</Value>
<Value name="3">
<Value>ChangeUrgentPayments</Value>
</Value>
<Value name="4">
<Value>SuspendedMode</Value>
</Value>
<Value name="5">
<Value>ChangeSuspendedMode</Value>
</Value>
<Value name="6">
<Value>LimitedMode</Value>
</Value>
<Value name="7">
<Value>ChangeLimitedMode</Value>
</Value>
<Value name="8">
<Value>LiquidityBfOD</Value>
</Value>
<Value name="9">
<Value>ChangeLiquidityBfOD</Value>
</Value>
<Value name="10">
<Value>LiquidityInOD</Value>
</Value>
<Value name="11">
<Value>ChangeLiquidityInOD</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AdditionalC6277D</DataLocation>
<DefaultData>AdditionalConditionsDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AdditionalC6277D</IdLocation>
<IndexLocation>^Sb.xsd.ed.AdditionalC6277I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AdditionalC6277S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

