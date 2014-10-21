<html>
<head>
    <link rel="stylesheet" type="text/css" media="screen" href="/resources/css/ui.jqgrid.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="/resources/css/ui-lightness/jquery-ui.css"/>
    <script type="text/javascript" src="/resources/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.jqGrid.min.js"></script>
    <script type="text/javascript" src="/resources/js/i18n/grid.locale-kr.js"></script>
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
                    "invdate" : "20141021",
                    "amount" : "2000",
                    "tax" : "200",
                    "note" : ""
                }
            ]
        };
        $("#list").jqGrid({
            datastr: data,
            datatype : "jsonstring",
            colModel: [
                { name: "invid", width: 55},
                { name: "invdate", width: 90},
                { name: "amount", width: 80, align: "right"},
                { name: "tax", width: 80, align:"right"},
                { name: "note", width: 150, sortable: false}
            ],
                height: "auto",
                colNames: ["Inv No", "Date", "Amount", "Tax", "Notes"]
        });
    });
    </script>
</head>
<body>
	<h1></h1>
    <table id="list">
        <tr>
            <td></td>
        </tr>
        <div id="pager"></div>
    </table>
</body>
</html>