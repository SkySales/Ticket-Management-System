<?php

$conn = mysqli_connect("localhost", "root", "", "tickets");
 
if($conn === false){
    die("ERROR: Could not connect. "
        . mysqli_connect_error());
}
 
$update =  $_REQUEST['up_data'];
$id =  $_REQUEST['Tid'];

$sql = "UPDATE ticket SET status='$update' WHERE Ticketid='$id'";
 
if(mysqli_query($conn, $sql)){
    echo "<h3>data stored in a database successfully."
        . " Please browse your localhost php my admin"
        . " to view the updated data</h3>";

    echo nl2br("\n$c_name\n $email\n "
        . "$issue\n $prio");
} else{
    echo "ERROR: Hush! Sorry $sql. "
        . mysqli_error($conn);
}
 
mysqli_close($conn);
header('Location: table_data.php');
?>