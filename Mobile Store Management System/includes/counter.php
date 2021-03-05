<?php 
include "config.php";
$q = "SELECT date from visits where id = (Select max(id) from visits)";
$query = mysqli_query($con, $q);
while($row = mysqli_fetch_array($query)){
    $dat = strval($row['date']);
}
if ($dat == date('Y-m-d')){
    mysqli_query($con, "Update visits set count = count+1 where date = '$dat'");
}
else{
    $d = date('Y-m-d');
    mysqli_query($con, "Insert into visits(date, count) values('$d', 1)");
}
?>