

		var timeFormat = 'MM/DD/YYYY HH:mm';
		function newDate(days) {
			return moment().add(days, 'HH').toDate();
		}
		function newDateString(days) {
			return moment().add(days, 'd').format(timeFormat);
		}
		var color = Chart.helpers.color;
		
		
		
		var config = {
			type: 'line',
			data: {
				labels: [ // Date Objects
					newDate(0),
					newDate(1),
					newDate(2),
					newDate(3),
					newDate(4),
					newDate(5),
					newDate(6)
				],
				datasets: [{
					label: 'ICMP',
					backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
					borderColor: window.chartColors.red,
					fill: false,
					data:  []
				}, {
					label: 'UDP',
					backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
					borderColor: window.chartColors.blue,
					fill: false,
					data:  []
				}, {
					label: 'ARP',
					backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
					borderColor: window.chartColors.green,
					fill: false,
					data:  []
				}, {
					label: 'SYN',
					backgroundColor: color(window.chartColors.yellow).alpha(0.5).rgbString(),
					borderColor: window.chartColors.yellow,
					fill: false,
					data:  []
				}, {
					label: 'HTTP-GET',
					backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
					borderColor: window.chartColors.purple,
					fill: false,
					data:  []
				}, {
					label: 'DHCP',
					backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
					borderColor: window.chartColors.orange,
					fill: false,
					data:  []
				},
				{
					label: 'Paquetes',
					backgroundColor: color(window.chartColors.grey).alpha(0.5).rgbString(),
					borderColor: window.chartColors.grey,
					fill: false,
					data:  []
				}
				]
			},
			options: {
				title: {
					text: 'Calipso'
				},
				scales: {
					xAxes: [{
						type: 'time',
						time: {
							parser: timeFormat,
							// round: 'day'
							tooltipFormat: 'll HH:mm'
						},
						scaleLabel: {
							display: true,
							labelString: 'Date'
						}
					}],
					yAxes: [{
						scaleLabel: {
							display: true,
							labelString: 'value'
						}
					}]
				},
			}
		};
              
		window.onload = function() {
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myLine = new Chart(ctx, config);
		};
		
		
		function datosICMP() {
			$.getJSON('/collectors/getICMP.php', function (data) {

				// console.log(data);
				$.each(data, function(index, item) {
					config.data.datasets[0].data.push({
									x: newDate(config.data.datasets[0].data.length),
									y: item
									
					});
				});
	
				window.myLine.update();
			});
		}
				function datosUDP() {
			$.getJSON('/collectors/getUDP.php', function (data) {

				// console.log(data);
				$.each(data, function(index, item) {
					config.data.datasets[1].data.push({
									x: newDate(config.data.datasets[1].data.length),
									y: item
									
					});
				});
	
				window.myLine.update();
			});
		}

		function datosARP() {
			$.getJSON('/collectors/getARP.php', function (data) {

				// console.log(data);
				$.each(data, function(index, item) {
					config.data.datasets[2].data.push({
									x: newDate(config.data.datasets[2].data.length),
									y: item
									
					});
				});
	
				window.myLine.update();
			});
		}
		function datosTCP() {
			$.getJSON('/collectors/getTCP.php', function (data) {

				// console.log(data);
				$.each(data, function(index, item) {
					config.data.datasets[3].data.push({
									x: newDate(config.data.datasets[3].data.length),
									y: item
									
					});
				});
	
				window.myLine.update();
			});
		}
		function datosHTTP() {
			$.getJSON('/collectors/getHTTP.php', function (data) {

				// console.log(data);
				$.each(data, function(index, item) {
					config.data.datasets[4].data.push({
									x: newDate(config.data.datasets[4].data.length),
									y: item
									
					});
				});
	
				window.myLine.update();
			});
		}
		function datosDHCP() {
			$.getJSON('/collectors/getDHCP.php', function (data) {

				// console.log(data);
				$.each(data, function(index, item) {
					config.data.datasets[5].data.push({
									x: newDate(config.data.datasets[5].data.length),
									y: item
									
					});
				});
	
				window.myLine.update();
			});
		}
		function datosPaquetes() {
			$.getJSON('/collectors/getPaquetes.php', function (data) {

				// console.log(data);
				$.each(data, function(index, item) {
					config.data.datasets[6].data.push({
									x: newDate(config.data.datasets[6].data.length),
									y: item
									
					});
				});
	
				window.myLine.update();
			});
		}
		
		
		
		
		// LLamar a datosICMP cada 4 segundos
	    setInterval(function(){ datosPaquetes(); }, 4000);
		setInterval(function(){ datosICMP(); }, 4000);
		setInterval(function(){ datosARP(); }, 4000);
		setInterval(function(){ datosUDP(); }, 4000);
    	setInterval(function(){ datosTCP(); }, 4000);
    	setInterval(function(){ datosHTTP(); }, 4000);
       	setInterval(function(){ datosDHCP(); }, 4000);




		

