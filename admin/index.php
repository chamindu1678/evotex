<?php
  	session_start();
  	if(isset($_SESSION['admin'])){
    	header('location:home.php');
  	}
?>
<?php include 'includes/header.php'; ?>
<font color="white"><marquee> 2023 Presidential Election | Sri Lanka | Online Voting System  </marquee></font>
<body class="hold-transition login-page" style="background-image: url('images/bg3.jpg'); background-repeat: no-repeat; background-size: cover;">
<body class="hold-transition login-page">
<div class="login-box">
  	<div class="login-logo">
	  <b><font color="white">E-VoteX</b></font>
  	</div>
  
  	<div class="login-box-body">
	  <center> <img src="images/vote1.gif" alt="Image description" width="100" height="100" class="my-image">
    	<p class="login-box-msg">E-VoteX Admin Login</p>

    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="username" placeholder="Username" required>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
        		</div>
      		</div>
    	</form>
  	</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p> 
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>