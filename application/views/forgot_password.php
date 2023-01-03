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
		<!-- Custom styles for this template-->
		<link href="<?php echo base_url();?>css/sb-admin-2.min.css" rel="stylesheet">
		<style>
			#accordionSidebar, nav.navbar.navbar-expand.navbar-light.bg-white.topbar.mb-4.static-top.shadow {
				display:none!important;
			}
			#content {
				background-color:#01689b!important;
			}
			h1 {
				margin-left:0.5em;
			}
			h4 {
				font-size:20px;
				margin:10px 5px;
			}
			#inputEmail {
				margin:5px;
			}
			.form-group {
				margin-bottom:10px;
			}
		</style>
	</head>
	<body class="bg-gradient-primary">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-10 col-lg-12 col-md-9">
					<div class="card o-hidden border-0 shadow-lg my-5" style="max-width:30em;">
						<div class="card-body p-0">
							<div class="row" style="display: contents!important;">
								<div class="col-lg-6" style="max-width:30em;">
									<div class="p-5">
										<div>
											<h1 class="h4 text-gray-900 mb-4">
												<?php if($hres[0]['setting_value']==""){ echo $this->lang->line('savsoft_quiz'); }else{ echo $hres[0]['setting_value']; }?>
											</h1>
										</div>
										<?php
										if($this->session->flashdata('message')) { ?>
											<div class="alert ">
												<?php echo $this->session->flashdata('message');?>
											</div> 
											<?php
										} else {
											?>
											<form method="post" class="form-signin" action="<?php echo site_url('login/forgot');?>">
												<h4 class="form-signin-heading"><?php echo $this->lang->line('send_new_password');?></h4>			  
												<div class="form-group">	 
													<label for="inputEmail" style=""><?php echo $this->lang->line('email_linked_account');?></label>
													<input type="email" id="inputEmail" name="email" class="form-control" placeholder="<?php echo $this->lang->line('email_address');?>" required autofocus>
												</div>
												<div class="form-group">	  				 
													<button class="btn btn-lg btn-primary btn-block btn-round btn-left" type="submit"><?php echo $this->lang->line('send_new_password');?></button>
												</div>
											</form>
											<?php 
										}
										if($this->config->item('user_registration'))	{ ?>
											<a href="<?php echo site_url('login/registration');?>"><?php echo $this->lang->line('register_new_account');?></a>
											&nbsp;&nbsp;&nbsp;&nbsp; 
											<?php
										}
										?>
										<a href="<?php echo site_url('login');?>"><?php echo $this->lang->line('login');?></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
	</body>
</html>