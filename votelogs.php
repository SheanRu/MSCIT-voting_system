<?php
include('db_connect.php');


?>

<?php
    $voting = $conn->query("SELECT * FROM voting_list where is_default = 1 ");
    foreach ($voting->fetch_array() as $key => $value) {
        $$key = $value;
    }
    $mvotes = $conn->query("SELECT * FROM votes where voting_id = $id and user_id = ".$_SESSION['login_id']." ");
    $vote_arr = array();
    while($row=$mvotes->fetch_assoc()){
        $vote_arr[$row['category_id']][] = $row;
    }
    $opts = $conn->query("SELECT * FROM voting_opt where voting_id=".$id);
    $opt_arr = array();
    while($row=$opts->fetch_assoc()){
        $opt_arr[$row['id']] = $row;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Voting Logs</title>
    <style>
        /* Add any additional styles here */
        @media print {
            body * {
                visibility: hidden;
            }
            #printableTable, #printableTable * {
                visibility: visible;
            }
            #printableTable {
                position: absolute;
                left: 0;
                top: 0;
            }
        }
    .printtb{

    background-color:blue;
    }

  


/* CSS */
.button-15 {
  background-image: linear-gradient(#42A1EC, #0070C9);
  border: 1px solid #0077CC;
  border-radius: 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  direction: ltr;
  display: block;
  font-family: "SF Pro Text","SF Pro Icons","AOS Icons","Helvetica Neue",Helvetica,Arial,sans-serif;
  font-size: 17px;
  font-weight: 400;
  letter-spacing: -.022em;
  line-height: 1.47059;
  min-width: 30px;
  overflow: visible;
  padding: 4px 15px;
  text-align: center;
  vertical-align: baseline;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
}

.button-15:disabled {
  cursor: default;
  opacity: .3;
}

.button-15:hover {
  background-image: linear-gradient(#51A9EE, #147BCD);
  border-color: #1482D0;
  text-decoration: none;
}

.button-15:active {
  background-image: linear-gradient(#3D94D9, #0067B9);
  border-color: #006DBC;
  outline: none;
}

.button-15:focus {
  box-shadow: rgba(131, 192, 253, 0.5) 0 0 0 3px;
  outline: none;
}

th {
    text-align: center;
    


    background-color: #ffcc80; 
    color: #000; 
    /* font-weight: bold; */
    border: 1px solid #ffcc80; 
    font-size:15px;
  }
  .tr1{
  


  }
    </style>
</head>
<body>

  <br>

    <!-- Add a print button -->
   
    <button class="float-right text-white mt-3 button-15" onclick="printLogs()"> <i class="fa fa-print  "style="color: black;"></i>   Print</button>
<br><br><br>


<?php 
$cats = $conn->query("SELECT * FROM category_list WHERE id IN (SELECT category_id FROM voting_opt WHERE voting_id = '".$id."')");
?>


   
        <table id="printableTable" border="1" class="table table-bordered table-hover">
        <h3>Voter's Logs</h3>
            <thead>
         
                <tr class="tr1">   <th>School ID</th>
                    <?php while ($row = $cats->fetch_assoc()): ?>
                        <th><?php echo $row['category']; ?></th>
                    <?php endwhile; ?>
                </tr>
            </thead>
            <tbody>

            
        <td>Mark jonas Macasieb</td>
        <td>Asi</td>
        <td>carl</td>
        <td>jimil</td>
        <td>mort</td>
        <td>jaylin</td>
        <td>brianna</td>
        <td>billy</td>
        <td>pedro katrina</td>
        <td>nick cindy</td>
        <td>amber</td>
        <td>talon</td>
        <td>janet vexil van</td>
        <td>den tyson </td>
       
                
            </tbody>
        </table>
 



   
					
    <!-- <?php
 // Fetch categories
    $sql = $conn->query("SELECT * FROM category_list");

    // // Fetch headers from the 'category' table
    // $headers_query = $conn->query("SHOW COLUMNS FROM category");
    // $header_names = [];
    // while ($header = $headers_query->fetch_assoc()) {
    //     $header_names[] = $header['category'];
    // }
?>
   -->

    <script>
        function printLogs() {
            // Use the print function to print the table
            window.print();
        }
    </script>

</body>
</html>
