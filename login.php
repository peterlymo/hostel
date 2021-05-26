
    <?php
  // include('conn.php');
$msg='';
if(isset($_POST['email'])){
    $email=$_POST['email'];
  @$password=md5($_POST['password']);

  $sql2="SELECT * FROM users where email='".$email."' AND password='".$password."'";
  $result2=mysqli_query($stmt,$sql2);
  $row2=mysqli_fetch_array($result2);
  if(mysqli_num_rows($result2)>0){
    $_SESSION['user_id'] = $row2['id'];
    $_SESSION['username'] = $row2['username'];
    $_SESSION['email'] = $row2['email'];
    $_SESSION['first_name'] = $row2['first_name'];
    $_SESSION['last_name'] = $row2['last_name'];
    $_SESSION['user_type_id'] =$row2['user_type_id'];
    $user_role= $_SESSION['user_type_id'];
    if ($user_role==1) {
      $_SESSION['login']="Administrator";
      header('location: index.php?pg=admin');
    }elseif ($user_role==2) {
     $_SESSION['login']="user";
      header('location: index.php?pg=admin');
    }

  }
  else{
    $msg="<span class='alert alert-danger' style='color:red'>Incorrect Username or Password</span>";
  }
}
  

?>

    <!-- <section class="material-half-bg"> -->
      <div class="cover"></div>
    </section>
    <section class="login-content">
      <div class="logo">
        <h1>SBLG</h1>
      </div>
      <div class="login-box">
        <form class="login-form" method="POST" enctype="multipart/data">
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>SIGN IN</h3>
          <div class="form-group">
            <label class="control-label">USERNAME</label>
            <input class="form-control" name="email" placeholder="Email" required/>
          </div>
          <div class="form-group">
            <label class="control-label">PASSWORD</label>
            <input class="form-control" name="password" type="password" placeholder="Password" required/>
          </div>
          <div class="form-group">
                                             <?php
                                               echo $msg;
                                                 ?>
   
          </div>                         
          <div class="form-group">
            <div class="utility">
              <div class="animated-checkbox">
                <label>
                  <input type="checkbox"><span class="label-text">Stay Signed in</span>
                </label>

              </div>
                <p class="semibold-text mb-2" title="Please Kindly Contact System Administrator"><a href="">Forgot Password ?</a></p>
            </div>
          </div>
          <div class="form-group btn-container">
            <button type="submit" name="submit" class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN</button>
          </div>
                    <div class="form-group">

          <div class="animated-checkbox">
                <label>
                        <p class="semibold-text mb-2">Don't have an account ?<a href="index.php?pg=Register" >Register </a></p>
                      </label>
                    </div>
          </div>
        </form>
      </div>
    </section>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>