<%--
  Created by IntelliJ IDEA.
  User: lko
  Date: 2014-11-05
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>navigator</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/resources/css/ui.jqgrid.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="/resources/css/ui-lightness/jquery-ui.css"/>

    <style type="text/css">
        html, body {
            margin: 0;
            padding: 0;
            font-size: 75%;
        }
    </style>

    <script type="text/javascript" src="/resources/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.jqGrid.min.js"></script>
    <script type="text/javascript" src="/resources/js/i18n/grid.locale-kr.js"></script>
    <script type="text/javascript" src="/resources/js/JsonXml.js"></script>
    <script type="text/javascript" src="/resources/js/grid.import.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            'use strict';
            var data = {
                "page": "1",
                "records": "1",
                "total": "1",
                "rows": [
                    {
                        "invid" : "1",
                        "invdateStrange" : "20141021",
                        "invdate" : "20141021",
                        "amount" : "20000",
                        "tax" : "2000",
                        "note" : ""
                    }
                ]
            };
            $("#list").jqGrid({
                //url: "example.php",
                datatype : "jsonstring", //datatype: "xml", local json data 사용
                //mtype: "GET",
                colNames: ["Inv No", "Date", "Amount", "Tax", "Notes"],
                colModel: [
                    { name: "invid", width: 55},
                    { name: "invdate", width: 90, formatter: dateFormatter
                    },
                    { name: "amount", width: 80, align: "right", formatter:'currency', formatoptions:{decimalSeparator:"", thousandsSeparator: ",", decimalPlaces: 0}},
                    { name: "tax", width: 80, align:"right", formatter:'currency', formatoptions:{decimalSeparator:"", thousandsSeparator: ",", decimalPlaces: 0}},
                    { name: "note", width: 150, sortable: false}
                ],
                //pager: "#pager",
                rowNum: 10,
                rowList: [10, 20, 30],
                sortname: "invid",
                sortorder: "desc",
                viewrecords: true,
                girdview: true,
                //autoencode: true,
                caption:"Importing and Exporting Methods",
                datastr: data,
                height: "auto"
            });
            function dateFormatter(cellvalue, options, rowObject) {
                return cellvalue.substr(0, 4) + "-" + cellvalue.substr(4, 2) + "-" + cellvalue.substr(6, 2);
            }
            //$("#list").jqGrid('jqGridImport');
            var xml = $("#list").jqGrid('jqGridExport');
            console.log("xml = " + xml);
        });
    </script>
</head>
<body>
<h1></h1>
<table id="list">
    <tr>
        <td></td>
    </tr>
</table>
<div id="pager"></div>
</body>
</html>