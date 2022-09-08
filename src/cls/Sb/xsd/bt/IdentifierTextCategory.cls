/// Символьная строка. Используется для базовых типов "Идентификатор", "Код", если областью значений является любая текстовая строка ограниченной длины. Разрешенные символы - символы с кодами  32-126, русские буквы: А-Я а-я, №.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_basetypes_v2018.3.0.xsd
Class Sb.xsd.bt.IdentifierTextCategory Extends %String [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter MAXLEN;

Parameter NAMESPACE = "urn:cbr-ru:ed:basetypes:v2.0";

Parameter XMLPATTERN = "[ ]*[!-~А-яЁё№][ -~А-яЁё№]*";

}

