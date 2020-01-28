<?php session_start();
    include 'administrator/connection.php';
    include 'administrator/function.php';
    $pdo_auth = authenticate();
    $pdo = new PDO($dsn, $user, $pass, $opt);  
   
    $table = "request_access";
    $key_list = "`vendor_tx`, `patient_tx`, `tx`,`status`";        
    $value_list  = "'".$pdo_auth['tx_address']."',";
    $value_list  .= "'".$_REQUEST['address']."',";
    $value_list  .= "'request_to_access',";
    $value_list  .= "'Pending'";

    //echo "INSERT INTO `$table` ($key_list) VALUES ($value_list)";
    
    $result = $pdo->exec("INSERT INTO `$table` ($key_list) VALUES ($value_list)");
    header('Location:view_request_to_access.php?choice=success&value=Support Request Added Successfully');              
    exit();
?>
