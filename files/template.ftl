<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="icon" type="image/x-icon" href="http://192.168.1.154/favicon.ico?any=param">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>CloudBLM | ${date}</title>
    <style>
        /* width */
        ::-webkit-scrollbar {
            width: 10px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #888;
            background: #24387E;
        }

        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            /* background: #555; */
            background: #D72327;

        }

        th,td{
            font-weight: 500;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            font-size: 18px;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #ffffff;
        }

        body {
            
            background-color: #F3F6F9;
        }

        .header {
            display: flex;
            justify-content: center;
        }
        table{
            border-radius: 2px;
        }
        img {
            width: 40px;
            height: 40px;
            margin-bottom: inherit;
        }

        .logo {
            display: flex;
            align-items: center;
            padding: 10px;
        }

        h1 {
            /* font-family: Bebas Neue; */
            font-family: avenir;
            margin-left: 5px;
            font-size: 42px;
        }

        .table-striped>tbody>tr:nth-child(2n)>td,
        .table-striped>tbody>tr:nth-child(2n)>th {
            /* background-color: #dfdddd; */
            /* background-color: #e9faff; */
            background-color: #ECECFF;
        }

        td:nth-child(7) {
            width: 35%;
        }

        td:nth-child(1) {
            text-align: center;
        }

        th {
            text-align: center;
            background-color: #24387E;
            color: #ffffff;
        }

        
        .table-striped tbody tr:nth-of-type(odd):hover,.table-striped tbody tr:nth-of-type(even):hover {
            background-color: #F8F6FF;
            cursor: pointer;
        }

        th span {
            display: block;
            text-align: center;
        }

        h1 {
            margin-top: 2%;
            font-weight: 700;
        }

        .sticky {
            display: table;
            position: fixed;
            top: 0;
            width: 98%;
        }


        .sticky th:nth-child(1),
        .content td:nth-child(1) {

            width: 3.5%;
        }

        .sticky th:nth-child(2),
        .content td:nth-child(2) {

            width: 14%;
            text-align: left;
            text-transform: capitalize;

        }

        th:nth-child(2),
        td:nth-child(2) {

            width: 14%;
            text-align: left;
            text-transform: capitalize;

        }

        td {
            max-width: 50px;
            overflow: hidden;
            /* text-overflow: clip; */
            /* white-space: nowrap; */
            overflow-wrap: break-word;
        }

        .sticky th:nth-child(3),
        .content td:nth-child(3) {

            width: 8%;
            text-align: center;
        }

        td:nth-child(3),
        td:nth-child(4),
        td:nth-child(5),
        td:nth-child(6) {
            text-align: center;
        }

        .sticky th:nth-child(4),
        .content td:nth-child(4) {

            width: 13%;
            text-align: center;
        }

        .sticky th:nth-child(5),
        .content td:nth-child(5) {

            width: 10%;
            text-align: center;
        }

        .sticky th:nth-child(6),
        .content td:nth-child(6) {

            width: 10%;
            text-align: center;
        }

        .sticky th:nth-child(7),
        .content td:nth-child(7) {
            width: 34%;
        }

         th:nth-child(8),
         td:nth-child(8) {
            text-align: center;
        }

        .sticky th:nth-child(8),
        .content td:nth-child(8) {

            width: 7%;
            text-align: center;
        }

        @media only screen and (max-width: 1920px) {
            .sticky {
                width: 98.5%;
            }
        }

        @media only screen and (max-width: 1600px) {
            .sticky {
                width: 98%;
            }
            th,td{
                font-size: 16px;;
            }
            
        }

        @media (max-width:1280px) and (min-width: 768px) {
            .sticky {
                width: 97.6%;
            }
            th,td{
                font-size: 14px;;
            }
            
        }

        .new {
            overflow: hidden;
        }

        h1 span {
            border-bottom: 4px solid #D72327;
        }

    </style>
    
</head>

<body>
    <div >
        <div class="header">
            <div class="logo">
                <img src="http://192.168.1.154/favicon.ico?any=param" alt="">
                <h1 ><span>Cl</span>oudBLM - Performance Test Report</h1>
            </div>
            
            
        </div>
        

        <div class="col-md-12">
        <table id="myTable"  class="table table-hover table-striped ">
            <thead id="Tablehead">
                <tr>
                    <th  scope="col">#</th>
                    <th  scope="col">Test Case Name</th>
                    <th  scope="col">User Count</th>
                    <th  scope="col">Failed User Count</th>
                    <th  scope="col">Min Response<span id="submsg">(ms)</span></th>
                    <th  scope="col">Max Response<span id="submsg">(ms)</span></th>
                    <th  scope="col">URL</th>
                    <th style="cursor: pointer;" onclick="sortTable(7)" scope="col">
                    Status
                    <i><img class="filter" src="http://192.168.1.154/Projects/teststtolt_3b4aed80-4724-11ea-b660-90b11c61d394.png"
                                    style="width: 20px; height: 20px;" alt=""></i>
                    </th>
                </tr>
            </thead>
            <tbody id="tablebody">
               <#list systems as system>
                <tr>
                    <td>${system_index + 1}</td>
                    <td style="font-weight:bold;">${system.sample_name}</td>
                    <td>${system.sampler_count}</td>
                    <#if (system.error_count>0)>
                        <td style="color:red">${system.error_count}</td>    
                    <#else>
                        <td style="color:green">${system.error_count}</td>
                    </#if>
                    
                    <td>${system.minresponse}</td>
                    <td>${system.maxresponse}</td>
					 
                    <td><a href=<#if system.url??>${system.url}<#else>none</#if>
                            target="_blank"><#if system.url??>${system.url}<#else>none</#if></a>
                    </td>
                    <#if (system.error_count>0)>
                        <td style="color:red">Fail</td>    
                    <#else>
                        <td style="color:green">Pass</td>
                    </#if>
                    
                </tr>
            </#list>
            </tbody>
        </table>
		</div>
    </div>

</body>
<script>
        //Sort function
    
        function sortTable(n) {
            var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
            table = document.getElementById("myTable");
            switching = true;
            //Set the sorting direction to ascending:
            dir = "asc";
            /*Make a loop that will continue until
            no switching has been done:*/
            while (switching) {
                //start by saying: no switching is done:
                switching = false;
                rows = table.rows;
                /*Loop through all table rows (except the
                first, which contains table headers):*/
                for (i = 1; i < (rows.length - 1); i++) {
                    //start by saying there should be no switching:
                    shouldSwitch = false;
                    /*Get the two elements you want to compare,
                    one from current row and one from the next:*/
                    x = rows[i].getElementsByTagName("TD")[n];
                    y = rows[i + 1].getElementsByTagName("TD")[n];
                    /*check if the two rows should switch place,
                    based on the direction, asc or desc:*/
                    if (dir == "asc") {
                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                            //if so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    } else if (dir == "desc") {
                        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                            //if so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    }
                }
                if (shouldSwitch) {
                    /*If a switch has been marked, make the switch
                    and mark that a switch has been done:*/
                    rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                    switching = true;
                    //Each time a switch is done, increase this count by 1:
                    switchcount++;
                } else {
                    /*If no switching has been done AND the direction is "asc",
                    set the direction to "desc" and run the while loop again.*/
                    if (switchcount == 0 && dir == "asc") {
                        dir = "desc";
                        switching = true;
                    }
                }
            }
            
        }
		
	if(document.body.scrollHeight>800){
			window.onscroll = function () { myFunction() };
	}

    // Get the header
    var header = document.getElementById("Tablehead");
    var spanmsg = document.querySelectorAll("#submsg");
    var tablebody=document.getElementById("tablebody");
	var heading=document.getElementById("head");
    
    // Get the offset position of the navbar
    var sticky = header.offsetTop;
    
    // Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
    function myFunction() {	
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky");        
            spanmsg.forEach(value=>value.style.display = "none")
            tablebody.classList.add("content"); 
        } else {
            header.classList.remove("sticky");
            spanmsg.forEach(value=>value.style.display = "block")
            tablebody.classList.remove("content");  			
        }
    }

    changefiltercolor=()=>{
        var filterimage=document.getElementsByClassName("filter")
        if(filterimage[0].src !=="https://img.icons8.com/ios-filled/24/000000/filter.png"){
            filterimage[0].src ="https://img.icons8.com/ios-filled/24/000000/filter.png"
        }else{
            filterimage[0].src ="https://img.icons8.com/android/24/000000/filter.png"
        };
        
    }
    </script>

</html>