/// Список предоставленных платных услуг по видам
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PayServicesCodeList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.Max9QuantityType, Sb.xsd.lt.NotNegativeKopeckAmountType, Sb.xsd.lt.OneDigitCodeType, Sb.xsd.lt.UICIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PayServicesCodeList";

Parameter XMLSEQUENCE = 1;

/// Код услуги
Property ServicesCode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "ServicesCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// КП
Property ReceiverSWIFTBIC As Sb.xsd.lt.UICIDType(XMLNAME = "ReceiverSWIFTBIC", XMLPROJECTION = "ATTRIBUTE");

/// Дата предоставления услуг
Property ServicesDate As Sb.xsd.lt.DateType(XMLNAME = "ServicesDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Количество предоставленных услуг
Property ServicesQuantity As Sb.xsd.lt.Max9QuantityType(XMLNAME = "ServicesQuantity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Тариф
Property ServicesRate As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "ServicesRate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Amount.
Property Sum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Sum", XMLPROJECTION = "ATTRIBUTE") [ Required, SqlFieldName = _Sum ];

Relationship PayServicesList As Sb.xsd.ed.PayServicesList(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PayServicesCodeList ];

Storage Default
{
<Data name="PayServicesCodeListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ServicesCode</Value>
</Value>
<Value name="3">
<Value>ReceiverSWIFTBIC</Value>
</Value>
<Value name="4">
<Value>ServicesDate</Value>
</Value>
<Value name="5">
<Value>ServicesQuantity</Value>
</Value>
<Value name="6">
<Value>ServicesRate</Value>
</Value>
<Value name="7">
<Value>Sum</Value>
</Value>
<Value name="8">
<Value>PayServicesList</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PayServicesCodeListD</DataLocation>
<DefaultData>PayServicesCodeListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PayServicesCodeListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PayServicesCodeListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PayServicesCodeListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

