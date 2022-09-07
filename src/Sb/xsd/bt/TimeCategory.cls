/// Время. Применяется для обозначения конкретного момента в последовательности времени.  [ГОСТ ИСО 8601-2001]. Формат hh:mm:ss.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_basetypes_v2018.3.0.xsd
Class Sb.xsd.bt.TimeCategory Extends %Time [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:basetypes:v2.0";

Parameter XMLPATTERN = "\d{2}:\d{2}:\d{2}";

}

