<?php

$conn = mysqli_connect("localhost", "root", "", "tickets");
 
if($conn === false){
    die("ERROR: Could not connect. "
        . mysqli_connect_error());
}
 
$c_name =  $_REQUEST['customer_name'];
$email = $_REQUEST['email'];
$issue =  $_REQUEST['issue'];
$prio = $_REQUEST['priority'];

$sql = "INSERT INTO ticket (customer, email, issue, priority, status) 
 VALUES ('$c_name','$email','$issue','$prio','Active')";
 
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
header('Location: /html/sent.html');
?>