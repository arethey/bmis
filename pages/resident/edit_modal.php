<?php echo '<div id="editModal'.$row['id'].'" class="modal fade">

<form class="form-horizontal" method="post" enctype="multipart/form-data">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Edit Resident Information</h4>
        </div>
        <div class="modal-body">';

        $edit_query = mysqli_query($con,"SELECT * from tblresident where id = '".$row['id']."' ");
        $erow = mysqli_fetch_array($edit_query);

        echo '
            <div class="row">
                <div class="container-fluid">
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group">

                        <input type="hidden" value="'.$erow['id'].'" name="hidden_id" id="hidden_id"/>
                            <label class="control-label">Name:</label><br>
                            <div class="col-sm-4">
                                <input name="txt_edit_lname" class="form-control input-sm" type="text" value="'.$erow['lname'].'"/>
                            </div> 
                            <div class="col-sm-4">
                                <input name="txt_edit_fname" class="form-control input-sm" type="text" value="'.$erow['fname'].'"/>
                            </div> 
                            <div class="col-sm-4">
                                <input name="txt_edit_mname" class="form-control input-sm" type="text" value="'.$erow['mname'].'"/>
                            </div> <br>
                        </div>

                        <div class="form-group">
                            <label class="control-label" style="margin-top:10px;">Birthdate:</label>
                            <input name="txt_edit_bdate" class="form-control input-sm" type="date" value="'.$erow['bdate'].'"/> 
                        </div>


                        <div class="form-group">
                            <label class="control-label">Barangay:</label>
                            <input name="txt_edit_brgy" class="form-control input-sm input-size" type="text" value="'.$erow['barangay'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Household #:</label>
                            <input name="txt_edit_householdnum" class="form-control input-sm" type="number" min="1" value="'.$erow['householdnum'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Civil Status:</label>
                            <input name="txt_edit_cstatus" class="form-control input-sm input-size" type="text" value="'.$erow['civilstatus'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Citizenship:</label>
                            <input name="txt_edit_Citizenship" class="form-control input-sm" type="text" value="'.$erow['Citizenship'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Educational Attainment:</label>
                            <select name="ddl_edit_eattain" class="form-control input-sm">
                                <option selected>'.$erow['highestEducationalAttainment'].'</option>
                                <option>No schooling completed</option>
                                <option>Elementary</option>
                                <option>High school, undergrad</option>
                                <option>High school graduate</option>
                                <option>College, undergrad</option>
                                <option>Vocational</option>
                                <option>Bachelor’s degree</option>
                                <option>Master’s degree</option>
                                <option>Doctorate degree</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Municipality:</label>
                            <input name="txt_edit_Municipality" class="form-control input-sm" type="text" value="'.$erow['Municipality'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Username:</label>
                            <input name="txt_edit_uname" class="form-control input-sm" type="text" value="'.$erow['username'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Length of Stay: (in Months)</label>
                            <input name="txt_edit_length" class="form-control input-sm" type="number" min="1" value="'.$erow['lengthofstay'].'"/>
                        </div>
                    </div>


                    <div class="col-md-6 col-sm-12">
                        <div class="form-group">
                            <label class="control-label">Gender:</label>
                            <select name="ddl_edit_gender" class="form-control input-sm">
                                <option value="'.$erow['gender'].'" selected="">'.$erow['gender'].'</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Birthplace:</label>
                            <input name="txt_edit_bplace" class="form-control input-sm" type="text" value="'.$erow['bplace'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Province:</label>
                            <input name="txt_edit_province" class="form-control input-sm" type="text" value="'.$erow['province'].'"/>
                        </div>
                        

                        <div class="form-group">
                            <label class="control-label"> Purok/Zone #:</label>
                            <input name="txt_edit_zone" class="form-control input-sm" type="text" value="'.$erow['zone'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Total Household Member:</label>
                            <input name="txt_edit_householdmem" class="form-control input-sm" type="number" min="1" value="'.$erow['totalhousehold'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Occupation:</label>
                            <input name="txt_edit_occp" class="form-control input-sm" type="text" value="'.$erow['occupation'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Region:</label>
                            <input name="txt_edit_region" class="form-control input-sm" type="text" value="'.$erow['region'].'"/>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Former Address:</label>
                            <input name="txt_edit_faddress" class="form-control input-sm" type="text" value="'.$erow['formerAddress'].'"/>
                        </div>


                        <div class="form-group">
                            <label class="control-label">Password:</label>
                            <input name="txt_edit_upass" class="form-control input-sm" type="password" value="'.$erow['password'].'"/>
                        </div>


                        <div class="form-group">
                            <label class="control-label">Image:</label>
                            <input name="txt_edit_image" class="form-control input-sm" type="file" />
                        </div>

                    </div>

                    </div>
        </div>
        <div class="modal-footer">
            <input type="button" class="btn btn-default btn-sm" data-dismiss="modal" value="Cancel"/>
            <input type="submit" class="btn btn-primary btn-sm" name="btn_save" value="Save"/>
        </div>
    </div>
  </div>
</form>
</div>';?>