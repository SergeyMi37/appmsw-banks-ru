/// Реквизиты клиента, по которому предоставляется информация об атрибутах участия в системе БЭСП
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.RTGSCustomerInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.DateType, Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.Max160TextType, Sb.xsd.lt.Max300TextType, Sb.xsd.lt.OneDigitCodeType, Sb.xsd.lt.TwoDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "RTGSCustomerInfo";

Parameter XMLSEQUENCE = 1;

/// Наименование клиента
Property Name As Sb.xsd.lt.Max160TextType(XMLNAME = "Name") [ Required ];

/// Дополнительные условия проведения платежей или осуществления расчетов.
Property AdditionalConditions As Sb.xsd.ed.AdditionalConditions(XMLNAME = "AdditionalConditions");

/// Информация о БИК ПУР, в отношении которых применяется двусторонний лимит.
Relationship PURBICInfo As Sb.xsd.ed.BICInfo(XMLNAME = "PURBICInfo", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = RTGSCustomerInfo ];

/// Список счетов.
Relationship ListAcc As Sb.xsd.ed.ListAcc(XMLNAME = "ListAcc", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = RTGSCustomerInfo1 ];

/// Список балансовых счетов.
Relationship ListAccBrf As Sb.xsd.ed.ListAccBrf(XMLNAME = "ListAccBrf", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = RTGSCustomerInfo2 ];

/// Реквизиты получателя.
Relationship PayeeInfo As Sb.xsd.ed.PayeeInfo(XMLNAME = "PayeeInfo", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = RTGSCustomerInfo3 ];

/// БИК ОУР
Property OURBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "OURBIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// БИК обслуживающего подразделения Банка России.
Property OCBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "OCBIC", XMLPROJECTION = "ATTRIBUTE");

/// БИК КО.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE");

/// Уникальный идентификатор, присвоенный составителю/получателю ЭС.
Property UIS As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "UIS", XMLPROJECTION = "ATTRIBUTE");

/// БИК головной КО.
Property ParentBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "ParentBIC", XMLPROJECTION = "ATTRIBUTE");

/// Категория участника расчетов
Property MemberType As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "MemberType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Вид регистрации
Property RegistrationMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "RegistrationMode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата регистрации
Property RegistrationDate As Sb.xsd.lt.DateType(XMLNAME = "RegistrationDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата исключения из расчетов.
Property ExceptionDate As Sb.xsd.lt.DateType(XMLNAME = "ExceptionDate", XMLPROJECTION = "ATTRIBUTE");

/// Вид ограничения участия.
Property StoppageMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "StoppageMode", XMLPROJECTION = "ATTRIBUTE");

/// Дата установки ограничения участия.
Property StoppageDate As Sb.xsd.lt.DateType(XMLNAME = "StoppageDate", XMLPROJECTION = "ATTRIBUTE");

/// Дата снятия ограничения участия.
Property StoppageEndDate As Sb.xsd.lt.DateType(XMLNAME = "StoppageEndDate", XMLPROJECTION = "ATTRIBUTE");

/// Причина введения ограничения участия.
Property StoppageReason As Sb.xsd.lt.TwoDigitCodeType(XMLNAME = "StoppageReason", XMLPROJECTION = "ATTRIBUTE");

/// Дополнительный текст.
Property ReasonAddText As Sb.xsd.lt.Max300TextType(XMLNAME = "ReasonAddText", XMLPROJECTION = "ATTRIBUTE");

/// Разрешение проведения платежей на основании ЭПС-получателя.
Property ExecPayeePayts As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "ExecPayeePayts", XMLPROJECTION = "ATTRIBUTE");

/// Разрешение направления ЭПС-получателя
Property DispatchPayeePayts As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "DispatchPayeePayts", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Признак участия в иностранной платежной системе.
Property ForeignPaytsSystemMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "ForeignPaytsSystemMode", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="RTGSCustomerInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>AdditionalConditions</Value>
</Value>
<Value name="4">
<Value>OURBIC</Value>
</Value>
<Value name="5">
<Value>OCBIC</Value>
</Value>
<Value name="6">
<Value>BIC</Value>
</Value>
<Value name="7">
<Value>UIS</Value>
</Value>
<Value name="8">
<Value>ParentBIC</Value>
</Value>
<Value name="9">
<Value>MemberType</Value>
</Value>
<Value name="10">
<Value>RegistrationMode</Value>
</Value>
<Value name="11">
<Value>RegistrationDate</Value>
</Value>
<Value name="12">
<Value>ExceptionDate</Value>
</Value>
<Value name="13">
<Value>StoppageMode</Value>
</Value>
<Value name="14">
<Value>StoppageDate</Value>
</Value>
<Value name="15">
<Value>StoppageEndDate</Value>
</Value>
<Value name="16">
<Value>StoppageReason</Value>
</Value>
<Value name="17">
<Value>ReasonAddText</Value>
</Value>
<Value name="18">
<Value>ExecPayeePayts</Value>
</Value>
<Value name="19">
<Value>DispatchPayeePayts</Value>
</Value>
<Value name="20">
<Value>ForeignPaytsSystemMode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.RTGSCustomerInfoD</DataLocation>
<DefaultData>RTGSCustomerInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.RTGSCustomerInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.RTGSCustomerInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.RTGSCustomerInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

