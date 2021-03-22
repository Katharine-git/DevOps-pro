<?php
header("content-type: text");

$host = "db"; //the host name "db" from our docker-compose.yml file
$username = "root"; //we use the root user:
$pw = "my!!root!!!pw"; // that the password we set as env variable

$conn = new mysqli($host, $username, $pw);

if($conn->connect_errno > 0){
    echo $db->connect_error;
}else{
    echo "DB CONNECTION SUCCEssful \n\n";

    $results = mysqli_query($conn, "SHOW DATABASES;");

    while( $row = mysqli_fetch_row( $results)){
        echo $row[0]. "\n";
    }
}
 