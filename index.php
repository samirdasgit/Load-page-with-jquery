<?php include "config.php"; ?>
<select name="main_data" id="main_data" onchange="getSubData(this.value)">
  <option value="">-- Select --</option>
  <?php
  $getMainData=mysqli_query($conn,"SELECT * FROM `main_table` ORDER BY `product_name`");
  while($rowMainData=mysqli_fetch_array($getMainData)){
    $main_table_sl=$rowMainData['sl'];
    $product_name=$rowMainData['product_name'];
    ?><option value="<?php echo $main_table_sl; ?>"><?php echo $product_name; ?></option><?php
  }
  ?>
</select>
<br><br><br>
<div id="divLoadSubData">
  <select name="sub_data" id="sub_data">
    <option value="">-- Select --</option>
  </select>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function getSubData(main_data_sl){
  $('#divLoadSubData').load("get-sub-data.php?main_data_sl="+main_data_sl).fadeIn("fast");
}
</script>
