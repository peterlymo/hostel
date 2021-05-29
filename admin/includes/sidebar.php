<?php
include('includes/config.php');
// include('includes/checklogin.php');
// check_login();
?>
<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
			
				<li class="ts-label">Main</li>
				<li><a href="dashboard.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
				<li><a href="#"><i class="fa fa-money"></i> Payments</a>
					<ul>
						<li><a href="pending.php">
						<i class="icon-tasks"></i>
						Pending
						
						<?php
$result ="SELECT count(*) FROM payment where status is null";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($count);
$stmt->fetch();
$stmt->close();
?>
					<b class="label white pull-right"><?php echo $count;?></b>	</a></li>
						<li><a href="accepted.php">
							<i class="icon-tasks"></i>
						Accepted
						
						<?php
$result ="SELECT count(*) FROM payment where status = 'Accepted' ";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($count1);
$stmt->fetch();
$stmt->close();
?>
					<b class="label orange pull-right"><?php echo $count1;?></b>	</a></li>

						</a></li>
					</ul>
				</li>
					<li><a href="#"><i class="fa fa-files-o"></i> Courses</a>
					<ul>
						<li><a href="add-courses.php">Add Courses</a></li>
						<li><a href="manage-courses.php">Manage Courses</a></li>
					</ul>
				</li>
					<li><a href="#"><i class="fa fa-bed"></i> Rooms</a>
					<ul>
						<li><a href="create-room.php">Add a Room</a></li>
						<li><a href="manage-rooms.php">Manage Rooms</a></li>
					</ul>
				</li>
				</li>
					<li><a href="#"><i class="fa fa-users"></i> Manage Admins</a>
					<ul>
					<li><a href="add-admin.php"><i class="fa fa-user"></i>Add Admin</a></li>
					<li><a href="manage-admin.php"><i class="fa fa-user"></i>Manage Admin</a></li>
					</ul>
				</li>

				<li><a href="registration.php"><i class="fa fa-user"></i>Student Registration</a></li>
				<li><a href="manage-students.php"><i class="fa fa-users"></i>Manage Students</a></li>

				<li><a href="access-log.php"><i class="fa fa-file"></i>User Access logs</a></li>

			
		</nav>