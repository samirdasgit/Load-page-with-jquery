<?php
include "connection.php";
$main_data_sl=$_REQUEST['main_data_sl'];
?>
<select name="sub_data" id="sub_data">
  <option value="">-- Select --</option>
  <?php
  $getSubData=mysqli_query($conn,"SELECT * FROM `sub_table` WHERE `main_table_sl`='$main_data_sl' ORDER BY `sub_name`");
  while($rowSubData=mysqli_fetch_array($getSubData)){
    $sub_table_sl=$rowSubData['sl'];
    $sub_name=$rowSubData['sub_name'];
    ?><option value="<?php echo $sub_table_sl; ?>"><?php echo $sub_name; ?></option><?php
  }
  ?>
</select>
