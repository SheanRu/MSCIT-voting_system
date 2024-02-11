<?php 

?>

<style>
	 .container-fluid {
        margin-top: 40px; /* Adjust the margin-top value as needed */
    }

	.card {
    border: 1px solid #3498db; 
    border-radius: 10px; 
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
  }

  th {
    text-align: center;
    padding: 10px;
    background-color: #ffcc80; 
    color: #1d3557; 
    font-weight: bold;
    border: 1px solid #ffcc80; 
  }

</style>
<div class="container-fluid">
	
	<div class="row">
	<div class="col-lg-12">
			<button class="btn btn-primary float-right btn-sm" id="new_user"><i class="fa fa-plus"></i> New user</button>
	</div>
	</div>
	<br>
	<div class="row">
		<div class="card col-lg-12">
			<div class="card-body">
				
				<table class="table-striped table-bordered col-md-12">
			<thead>
				<tr>
					<th class="text-center">#</th>
					<th class="text-center">Name</th>
					<th class="text-center">School ID</th>
					<th class="text-center">Department</th>
					<th class="text-center">Action</th>
				</tr>
			</thead>
			<tbody>
				<?php
 					include 'db_connect.php';
 					$users = $conn->query("SELECT * FROM users order by name asc");
 					$i = 1;
 					while($row= $users->fetch_assoc()):
				 ?>
				 <tr>
				 	<td>
				 		<?php echo $i++ ?>
				 	</td>
				 	<td>
				 		<?php echo $row['name'] ?>
				 	</td>
				 	<td>
				 		<center><?php echo $row['username'] ?></center>
				 	</td>
					 <td>
				 	<center>	<?php echo $row['department'] ?></center>
				 	</td>
				 	<td>
				 		<center>
								<div class="btn-group">
								  <button type="button" class="btn btn-primary">Action</button>
								  <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    <span class="sr-only">Toggle Dropdown</span>
								  </button>
								  <div class="dropdown-menu">
								    <button class="dropdown-item edit_user" href="javascript:void(0)" data-id = '<?php echo $row['id'] ?>'>Edit</button>
								    <div class="dropdown-divider"></div>
									<button class="dropdown-item delete_user" href="javascript:void(0)" data-id = '<?php echo $row['id'] ?>'>Delete</button>

									
								  </div>
								</div>
								</center>     
				 	</td>
				 </tr>
				<?php endwhile; ?>
			</tbody>
		</table>
			</div>
		</div>
	</div>

</div>
<script>
	
$('#new_user').click(function(){
	uni_modal('New User','manage_user.php')
})
$('.edit_user').click(function(){
	uni_modal('Edit User','manage_user.php?id='+$(this).attr('data-id'))
})

$('.delete_user').click(function(){
	var user_id = $(this).attr('data-id'); // Capture the data-id attribute
	_conf("Are you sure to delete this user?","delete_user",[user_id])
})

function delete_user(user_id){
	start_load()
	$.ajax({
		url:'ajax.php?action=delete_user',
		method:'POST',
		data:{id: user_id}, // Use the captured user_id instead of undefined $id
		success:function(resp){
			if(resp==1){
				alert_toast("Data successfully deleted",'success')
				setTimeout(function(){
					location.reload()
				},1500)
			}
		}
	})
}
</script>

