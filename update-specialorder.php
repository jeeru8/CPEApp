<?php

if (isset($_POST['submit'])) {
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cpe";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$setid = $_REQUEST['id'];
$setannouncement = $_REQUEST['announcement'];

$sql = "UPDATE special_order SET announcement='$setannouncement' WHERE id='$setid'";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CPE-Notice App</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->


  	<script src="js/jquery-1.11.1.min.js"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="datatables/jquery.dataTables.min.js"></script>
    <script src="datatables/dataTables.bootstrap.min.js"></script>


</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="#"><span>CPE-NOTICE</span>APP</a>
				
						
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">MONITORING DASHBOARD</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Administrator</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		
		<ul class="nav menu">
			<li  class=""><a href="dashboard.php"><em class="fa fa-dashboard">&nbsp;</em> Home</a></li>
			<li><a href="color.php"><em class="fa fa-bar-chart">&nbsp;</em> Change Color</a></li>
			<li><a href="school_activity.php"><em class="fa fa-bar-chart">&nbsp;</em> School Activity</a></li>
			<li><a href="office_advisory.php"><em class="fa fa-bar-chart">&nbsp;</em> Office Advisory</a></li>
			<li><a href="notice_meeting.php"><em class="fa fa-bar-chart">&nbsp;</em>Notice of Meeting</a></li>
			<li><a href="special_order.php"><em class="fa fa-bar-chart">&nbsp;</em>Special Order</a></li>
			<li><a href="office_memorandum.php"><em class="fa fa-bar-chart">&nbsp;</em>Office Memorandum</a></li>
			<li><a href="others.php"><em class="fa fa-bar-chart">&nbsp;</em>Others</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div><!--/.row-->

		
		


		<div class="row">
                    
     
					<div class="col-md-12">

					<h1 class="alert alert-success" align="center">Update Announcement</h1>

					<div class="col-md-6">
						<div class="form-group">

							<?php if (isset($note)) {echo "<div class=\"alert alert-success\"><strong>Note: </strong>" .$note. "</div>"; 

						 		
							}

						 ?>
       					<?php if (isset($alert)) {echo "<div class=\"alert alert-danger\"><strong>Note: </strong>" .$alert. "</div>"; }?>

							<form action="update-specialorder.php" method="post">

										<label>ID</label>
										<input class="form-control" name="id" value="<?php echo $_REQUEST['id'];?>"/>
										<hr>
										<label>Announcement</label>
										<textarea class="form-control" name="announcement"/></textarea>

										

										<button type="submit" name="submit" class="btn btn-warning">Update</button>

						</form>				
						</div>

                    </div>


		</div><!--/.row-->
		
		
	</div>	<!--/.main-->
	

	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
	</script>
		
</body>
</html>