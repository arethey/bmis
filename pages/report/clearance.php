<!DOCTYPE html>
<html>
<?php
    session_start();
    if(!isset($_SESSION['role']))
    {
        header("Location: ../../login.php"); 
    }
    else
    {
    ob_start();
    include('../head_css.php'); ?>

<body class="skin-black">
    <!-- header logo: style can be found in header.less -->
    <?php 
        include "../connection.php";
        ?>
    <?php include('../header.php'); ?>

    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <?php include('../sidebar-left.php'); ?>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Clearance Reports
                </h1>

            </section>

            <!-- Main content -->
            <section class="content">
                <form class="form-inline" action="" method="GET">
                    <div class="form-group">
                        <label for="from_date">From Date</label>
                        <input type="date" class="form-control" id="from_date" name="from_date"
                            value="<?php if(isset($_GET['from_date'])){ echo $_GET['from_date']; } ?>" />
                    </div>
                    <div class="form-group">
                        <label for="to_date">To Date:</label>
                        <input type="date" class="form-control" id="to_date" name="to_date"
                            value="<?php if(isset($_GET['to_date'])){ echo $_GET['to_date']; } ?>" />
                    </div>
                    <button type="submit" class="btn btn-primary">Filter</button>
                </form>

                <div style="margin-top: 1rem">
                    <table id="table" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Resident Name</th>
                                <th>Type of Clearance</th>
                                <th>OR Number</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                        if(isset($_GET['from_date']) && isset($_GET['to_date']))
                        {
                            $from_date = $_GET['from_date'];
                            $to_date = $_GET['to_date'];

                            $query = "SELECT *,CONCAT(r.lname, ', ' ,r.fname, ' ' ,r.mname) as residentname,p.id as pid FROM tblclearance p left join tblresident r on r.id = p.residentid WHERE dateRecorded BETWEEN '$from_date' AND '$to_date'";
                            $result = $con->query($query);

                            if($result->num_rows > 0)
                            {
                                while($row = $result->fetch_assoc()) {
                                    echo '
                                            <tr>
                                                <td>'.$row['residentname'].'</td>
                                                <td>'.$row['Clearance'].'</td>
                                                <td>'.$row['orNo'].'</td>
                                                <td>₱ '.number_format($row['samount'],2).'</td>
                                            </tr>
                                        ';
                                }
                            }
                            else
                            {
                                echo "
                                        <tr>
                                            <td>No Record Found</td>
                                        </tr>
                                    ";
                            }
                        }
                    ?>
                        </tbody>
                    </table>
                </div>
            </section><!-- /.content -->
        </aside><!-- /.right-side -->
    </div><!-- ./wrapper -->
    <!-- jQuery 2.0.2 -->
    <?php }
        include "../footer.php";
        ?>
</body>

</html>