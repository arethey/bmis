<?php if(isset($_SESSION['edited'])){
    echo '<script>$(document).ready(function (){success();});</script>';
    unset($_SESSION['edited']);
    } ?>
<div class="alert alert-success alert-autocloseable-success" style=" position: fixed; top: 10em; right: 35em; z-index: 9999; display: none;">
     Edit Successfully Saved!
</div>