<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kolkata');
include('includes/checklogin.php');
check_login();
$ai=$_SESSION['id'];
?>


<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Pay Room</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>



</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Pay-Room </h2>
	
						<div class="row">
	
								<div class="col-md-10">
								<div class="panel panel-default">
									<div class="panel-heading">

                                                    <form method="post">
 						 <div class="form-group">
  <input type="submit" name="code" Value="Genarate control code" class="btn btn-primary">
</form>



<!-- randomly -->
<?php

if(isset($_POST['code'])){

function gen(){
    $len = 10 ;
    $x = '';
        for ($i = 0 ; $i < $len ; $i ++)
        {
            $x .= intval(rand(0,9));
        }
    return $x;
    }
    
    $x = gen();
    echo "<h2>Thanks your Control number is <b>$x</b></h2>",PHP_EOL;


}

?>

<!--ref submit-->
<?php
if(isset($_POST['submit']))
{
$fname=$_POST['firstName'];
$lname=$_POST['lastName'];
$email=$_POST['email'];
$ref=$_POST['pincode'];
$room=$_POST['roomno'];
$cost=$_POST['cost'];
$paydate=date('d-m-Y h:i:s', time());;
$query="insert into  payment(firstName,lastName,emailid,refNo,room_no,cost) values(?,?,?,?,?,?)";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('ssssss',$fname,$lname,$email,$ref,$room,$cost);
$stmt->execute();
echo "<span style='color:green'><h2> payment detail sucessfull sent</h2>.</span>";
}
?>

							</div>                           
							</div>
                            <table id="zctb" class="table table-bordered " cellspacing="0" width="100%">
                            <tbody>
<?php	
$aid=$_SESSION['login'];
$ret="select * from registration where emailid=?";
$stmt= $mysqli->prepare($ret) ;
$stmt->bind_param('s',$aid);
$stmt->execute() ;
$res=$stmt->get_result();
$cnt=1;
while($row=$res->fetch_object())
	  {
	  	?>

<tr>
<td colspan="4"><h4>Room Realted Info</h4></td>
</tr>

<tr>
<td><b>Room no :</b></td>
<td><?php echo $row->roomno;?></td>
<td><b>Seater :</b></td>
<td><?php echo $row->seater;?></td>
<td><b>Fees PM :</b></td>
<td><?php echo $fpm=$row->feespm;?></td>

</tr>

<tr>
<td colspan="6"><h4></h4></td>
</tr>


</tbody>	


</table>
<div class="form-group"></br>
<label class="col-sm-2 control-label">Enter reference Number : </label>
<div class="col-sm-8">	<form method="post">
<input type="text" name="pincode" id="pincode" placeholder="enter reference number here"  class="form-control" required="required">
</br>

<div class="col-sm-6 col-sm-offset-4">	
													
													
 						 <div class="form-group">
						  <input type="text"  name="firstName" value="<?php echo $row->firstName;?>"hidden />
<input type="text"  name="lastName" value="<?php echo $row->lastName;?>" hidden/>
<input type="text"  name="email" value="<?php echo $row->emailid;?>" hidden/>
<input type="text"  name="roomno" value="<?php echo $row->roomno;?>" hidden />
<input type="text"  name="cost" value="<?php echo $row->feespm; ?>" hidden/>
						  <input type="submit" name="submit" Value="Submit Now" class="btn btn-primary">
</form>
                                                    </br>    </br> 
											</div>
                                        
</div>
</div>	
        
<?php

} ?>                              

							</div>
						</div>

					</div>
				</div> 	
				

			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

<script>

</body>

</html>