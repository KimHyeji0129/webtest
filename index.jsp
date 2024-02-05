<!DOCTYPE html>
<html lang="ko">
<head>
    
    <meta charset="UTF-8"><title>Sin(x) graph</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);
        
		var arrsin = [
			['x', 'sin(x)'],
			//[0, 0],
	        //[0.01, Math.sin(0.01)],
	        //[0.02, Math.sin(0.02)],
	        //[1.98, Math.sin(1.98)],
	        //[1.99, Math.sin(1.99)],
	        //[2, 0]
			];
		//x를 0으로 시작해서 0.1씩 증가해서 0.5까지
		//y는 x의 곱하기 10.
		//for (var i = 0; i <= 5; i++) {
            //for (var j = 0; j <= 10; j++) {
                //arrsin.push([i * 0.1, j * 0.1 * 10]);
            //}
        //}
		for (var i = 0; i <= 200; i++) {
            arrsin.push([i * 0.01 * Math.PI, Math.sin(i * 0.01 * Math.PI)]);
        }
			
        function drawChart() {        	
            var data = google.visualization.arrayToDataTable(arrsin);

            var options = {
           	    title: 'Sin(x) chart',
           	    curveType: 'function',
           	    legend: { position: 'bottom' },
	           	hAxis: {
	                tickFormat: '0.0'
	            }
           	};
            var chart = new google.visualization.LineChart(document.getElementById('chart'));
            chart.draw(data, options);
        }
    </script>
</head>
<body>
    <div id="chart"></div>
</body>
</html>
