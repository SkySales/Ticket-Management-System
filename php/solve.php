<?php
$host = "localhost";
$username = "root";
$pass = "";
$database = "tickets";

$con = new mysqli($host, $username, $pass, $database);

if($con->connect_error){
    echo $con->connect_error;
}

$sql = "SELECT * FROM ticket WHERE status='Ticket Solve'";
$player = $con->query($sql) or die ($con->error);
$row = $player->fetch_assoc();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/admin.css">
    <title>Customer Solve Tickets</title>
</head>
<body style="margin: 50px;">
    <center>
        <h1>CUSTOMER SOLVE TICKETS</h1>
        <h3>
            <?php
                if ($result = $con->query("SELECT * FROM `ticket` LIMIT 1"))
                {
                
                    if ($obj = $result->fetch_object())
                    {
                
                        echo "The table contains information. ";
                
                    }
                    else
                    {
                
                        echo "[ERROR CATCHING] There is no data to show. ";
                
                    }
                
                
                    $result->close();
                
                }
            ?>
        </h3>
    </center>
    <br/>
    <br/>
    <button>Admin Panel
        <br>
        <a href="/html/adminPanel.html">Click Here</a>
    </button>
    <table class="table table-hover table-bordered table-striped">
        <thead>
        <tr>
            <th>Ticket ID</th>
            <th>Customer Name</th>
            <th>Contact/Email</th>
            <th>Issue</th>
            <th>Priority</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
            <?php do{ ?>
                <tr>
                    <td><?php echo $row["Ticketid"]; ?></td>
                    <td><?php echo $row["customer"]; ?></td>
                    <td><?php echo $row["email"]; ?></td>
                    <td><?php echo $row["issue"]; ?></td>
                    <td><?php echo $row["priority"]; ?></td>
                    <td><?php echo $row["status"]; ?></td>
                </tr>
            <?php }while($row = $player->fetch_assoc()); ?>
        </tbody>
    </table>
</body>
</html>