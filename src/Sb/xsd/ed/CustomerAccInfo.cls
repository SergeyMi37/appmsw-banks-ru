/// Реквизиты ОУР и АУР, не являющегося КО
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.CustomerAccInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.Max160TextType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "CustomerAccInfo";

Parameter XMLSEQUENCE = 1;

/// Наименование клиента
Property Name As Sb.xsd.lt.Max160TextType(XMLNAME = "Name") [ Required ];

/// Список счетов.
Relationship AccModifList As Sb.xsd.ed.AccModifList(XMLNAME = "AccModifList", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = CustomerAccInfo ];

/// Список балансовых счетов.
Relationship AccBrfModifList As Sb.xsd.ed.AccBrfModifList(XMLNAME = "AccBrfModifList", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = CustomerAccInfo1 ];

/// БИК ОУР
Property OURBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "OURBIC", XMLPROJECTION = "ATTRIBUTE");

/// БИК обслуживающего подразделения Банка России.
Property OCBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "OCBIC", XMLPROJECTION = "ATTRIBUTE");

/// Уникальный идентификатор, присвоенный составителю/получателю ЭС
Property UIS As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "UIS", XMLPROJECTION = "ATTRIBUTE");

/// Категория участника расчетов
Property MemberType As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "MemberType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Разрешение направления ЭПС-получателя.
Property DispatchPayeePayts As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "DispatchPayeePayts", XMLPROJECTION = "ATTRIBUTE");

/// Признак участия в иностранной платежной системе.
Property ForeignPaytsSystemMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "ForeignPaytsSystemMode", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="CustomerAccInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>OURBIC</Value>
</Value>
<Value name="4">
<Value>OCBIC</Value>
</Value>
<Value name="5">
<Value>UIS</Value>
</Value>
<Value name="6">
<Value>MemberType</Value>
</Value>
<Value name="7">
<Value>DispatchPayeePayts</Value>
</Value>
<Value name="8">
<Value>ForeignPaytsSystemMode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.CustomerAccInfoD</DataLocation>
<DefaultData>CustomerAccInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.CustomerAccInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.CustomerAccInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.CustomerAccInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

