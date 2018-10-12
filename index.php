<!DOCTYPE html>
<html>
<head>
	<title>Tool List</title>
	<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	<style type ="text/css">
		.img{
			object-fit: cover;
			object-position: center;
			width: 450px;
			
	}
	</style>
</head>
<body>
	<h1>AVIA Tool Catalogue</h1>
	<h4>Update 11 October 2018</h4>
	<?php
	
	display();
	function display(){
	$con = mysqli_connect("localhost", "root","","dbtools");
	mysqli_set_charset($con, "utf8");
	$sql = "SELECT tb_tools.Tool_ID, tb_tools.Tool_Image, tb_tools.Tool_Avia_ID, tb_tools.Tool_Name,tb_sub_category.Sub_Category_Name,tb_tools.Remark, tb_status.Status_Name, tb_location.Location_Name\n"
    . "FROM `tb_tools` \n"
    . "JOIN tb_status ON tb_tools.Tool_Status_ID = tb_status.Status_ID\n"
    . "JOIN tb_location ON tb_tools.Tool_Location_ID = tb_location.Locatio_ID\n"
    . "JOIN tb_sub_category ON tb_tools.Tool_SubCat_ID = tb_sub_category.Sub_Category_ID";
	$query = mysqli_query($con,$sql);
	$num = mysqli_num_rows($query);
	
	if($query){

		echo '<table border="1" style ="width:100%">
		<tr> <th>Category</th><th>Tool ID</th><th>Tool Name</th><th>Image</th><th>Location</th><th>Status</th><th>Remark</th>
		</tr>';
		for ($i=0; $i<$num; $i++){
		$result = mysqli_fetch_array($query);
		$cat = $result['Sub_Category_Name'];
		$id = $result['Tool_Avia_ID'];
		$name = $result['Tool_Name'];
		$loc = $result['Location_Name'];
		$status = $result['Status_Name'];
		$remark = $result['Remark'];
		$img = $result['Tool_Image'];
		echo '<tr><td>'.$cat.'</td><td>'.$id.'</td><td>'.$name.'</td><td><img class="img" src="images/'.$img.'"></td><td>'.$loc.'</td><td>'.$status.'</td><td>'.$remark.'</td></tr>';

		}
	}
	
}

	?>

</body>
</html>