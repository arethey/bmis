<?php echo '<div id="editModal'.$row['pid'].'" class="modal fade">
<form method="post">
  <div class="modal-dialog modal-sm" style="width:300px !important;">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Edit Clearance</h4>
        </div>
        <div class="modal-body">
        <div class="row">
            <div class="col-md-12">
                <input type="hidden" value="'.$row['pid'].'" name="hidden_id" id="hidden_id"/>
               
                <div class="form-group">
                    <label>Resident: </label>
                    <input class="form-control input-sm" type="text" value="'.$row['residentname'].'" readonly/>
                </div>
                <div class="form-group">
                    <label>Type of Clearance : </label>
                    <select name="txt_edit_Clearance" class="form-control input-sm" required=""/>
                        <option selected="" disabled="">-- Select Type of Clearance -- </option>
                             <option value="Barangay Clearance">Barangay Clearance</option>
                            <option value="Barangay Indigency">Barangay Indigency</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label>OR Number : </label>
                    <input name="txt_edit_ornum" class="form-control input-sm" type="text" value="'.$row['orNo'].'" />
                </div>
                <div class="form-group">
                    <label>Amount : </label>
                    <input name="txt_edit_amount" class="form-control input-sm" type="text" value="'.$row['samount'].'" />
                </div>
            </div>
        </div>
        </div>
        <div class="modal-footer">
            <input type="button" class="btn btn-default btn-sm" data-dismiss="modal" value="Cancel"/>
            <input type="submit" class="btn btn-primary btn-sm" name="btn_save" value="Update"/>
        </div>
    </div>
  </div>
</form>
</div>';?>