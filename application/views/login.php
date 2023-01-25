<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">		
		<title><?php echo $this->lang->line('savsoft_quiz');?></title>		
		<!-- Custom fonts for this template-->
		<link href="<?php echo base_url();?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href="<?php echo base_url(); ?>css/font/font.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>css/style.css" rel="stylesheet">		
		<!-- Custom styles for this template-->
		<link href="<?php echo base_url();?>css/sb-admin-2.min.css" rel="stylesheet">
	</head>	
	<body class="bg-gradient-primary">
								<div id="loginwindow" class="text-center">
									<div id="logincontent">
										<div class="text-center">
											<?php 
											$hquery=$this->db->query(" select * from savsoftquiz_setting where setting_name='App_Name' || setting_name='App_title' order by setting_id asc "); 
											$hres=$hquery->result_Array();
											?>
											<h1 class="h4 text-gray-900 mb-4">				
												<?php 
												if($hres[0]['setting_value']==""){ 
													echo $this->lang->line('savsoft_quiz'); 
												} else { 
													echo $hres[0]['setting_value']; 
												}
												?> 
											</h1>
										</div>
										<form class="loginform" name="login" id="login" method="post" action="<?php echo site_url('login/verifylogin');?>">	 
											<?php 
											if($this->session->flashdata('message')){
												?>
												<div class="alert alert-danger">
													<?php echo str_replace('{resend_url}',site_url('login/resend'),$this->session->flashdata('message'));?>
												</div>
												<?php 
											}
											?>	
											<div class="form-group">
												<input type="email" name="email" class="form-control form-control-user" id="username" aria-describedby="emailHelp" placeholder="<?php echo $this->lang->line('email_address');?>">
											</div>
											<div class="form-group">
												<input type="password" name="password" class="form-control form-control-user" id="password" placeholder="<?php echo $this->lang->line('password');?>">
											</div>
											<div class="form-group"></div>
											<button type="submit" class="btn btn-primary btn-user btn-block btn-submit btn-left"><?php echo $this->lang->line('login');?></button>                 
										</form>
										<div class="text-center" style="margin:10px;">
											<a class="small" href="<?php echo site_url('login/forgot');?>"><?php echo $this->lang->line('forgot_password');?> </a>
											<?php 
											if($this->config->item('open_quiz')){
												?>			 
												&nbsp;&nbsp;&nbsp;<a class="small" href="<?php echo site_url('quiz/open_quiz/0');?>" style="display:none;"><?php echo $this->lang->line('open_quizzes');?></a>			 
												<?php 
											} 
											?>			
										</div>			  
										<hr>             
										<div class="text-center">
											<a class="btn btn-danger btn-user btn-block btn-round" href="<?php echo site_url('login/registration');?>"><?php echo $this->lang->line('register_new_account');?></a>                  
											<p style="margin-top:40px;"></p>
										</div>
									</div>
								</div>
										<!-- Bootstrap core JavaScript-->
		<script src="<?php echo base_url();?>vendor/jquery/jquery.min.js"></script>
		<script src="<?php echo base_url();?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>		
		<!-- Core plugin JavaScript-->
		<script src="<?php echo base_url();?>vendor/jquery-easing/jquery.easing.min.js"></script>		
		<!-- Custom scripts for all pages-->
		<script src="<?php echo base_url();?>js/sb-admin-2.min.js"></script>
	</body>
</html>










 