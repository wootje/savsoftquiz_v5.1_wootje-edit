<!DOCTYPE html>
<html lang="en">
  <head>
	<script src="https://quiz.dlinders.nl/vendor/jquery/jquery.min.js"></script>
	<script src="https://quiz.dlinders.nl/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="https://quiz.dlinders.nl/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="https://quiz.dlinders.nl/js/sb-admin-2.min.js"></script>
	<!-- Page level plugins -->
	<script src="https://quiz.dlinders.nl/vendor/chart.js/Chart.min.js"></script>
	<script>
		var base_url = "https://quiz.dlinders.nl/";
	</script>
	<script src="https://quiz.dlinders.nl/js/basic.js?q=1674672831"></script>
	<link rel="manifest" href="https://quiz.dlinders.nl/js/manifest.json">
	
  <script
    type="text/javascript"
    src='/editor/plugins/tinymce/tinymce.min.js'
    referrerpolicy="origin">
  </script>
  <script type="text/javascript">  
  tinymce.init({
	selector: '#tinytextarea'
  });
  </script>
  </head>
  <body>
	<textarea  id="tinytextarea" style="border-radius: 10px;">
		<?php echo $question['description' . $lno]; echo "Hello world!";?>
	</textarea>
  </body>
 </html>