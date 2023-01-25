	<?php
	if ($this->config->item('tinymce')) {
		if ($this->uri->segment(2) != 'attempt') {
			if ($this->uri->segment(2) != 'view_result') {
				if ($this->uri->segment(2) != 'config') {
					if ($this->uri->segment(2) != 'css') {
						if ($this->uri->segment(2) != 'edit_advertisment') {
							?>
							<script type="text/javascript" src="<?php
							echo base_url(); ?>editor/tinymce.min.js"></script>
							<?php
							if ($this->uri->segment(2) == 'edit_quiz' || ($this->uri->segment(2) == 'add_new' && $this->uri->segment(1) == 'quiz')) {
								?>
								<script type="text/javascript">
									tinymce.init({
										selector: '.tinymce_textarea',
										height: 100,
										theme: 'modern',
										plugins: [
											'advlist autolink lists link image jbimages <?php if($this->config->item('eqneditor')){ ?>eqneditor<?php } ?> charmap print preview hr anchor pagebreak',
											'searchreplace wordcount visualblocks visualchars code fullscreen',
											'insertdatetime media nonbreaking save table contextmenu directionality',
											'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc help'
										],
										toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image |  jbimages | <?php if($this->config->item('eqneditor')){ ?>eqneditor<?php } ?>',
										toolbar2: 'print preview media | forecolor backcolor emoticons | codesample help',
										image_advtab: true,
										templates: [
											{title: 'Test template 1', content: 'Test 1'},
											{title: 'Test template 2', content: 'Test 2'}
										],
										content_css: [
											'<?php echo base_url(); ?>css/font5/font.css',
											'//www.tinymce.com/css/codepen.min.css'
										]
									});
								</script>
								<?php
							} else {
								?>
								<script type="text/javascript">
									tinymce.init({
										selector: 'textarea',
										images_dataimg_filter: function (img) {
											return img.hasAttribute('internal-blob');
										},
										height: 100,
										theme: 'modern',
										plugins: [
											'advlist autolink lists link image jbimages <?php if($this->config->item('eqneditor')){ ?>eqneditor<?php } ?> <?php if($this->config->item('wiris')){ ?>tiny_mce_wiris<?php } ?>  charmap print preview hr anchor pagebreak',
											'searchreplace wordcount visualblocks visualchars code fullscreen',
											'insertdatetime media nonbreaking save table contextmenu directionality',
											'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc help'
										],
										toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image |  jbimages | <?php if($this->config->item('eqneditor')){ ?>eqneditor<?php } ?> <?php if($this->config->item('wiris')){ ?> | tiny_mce_wiris_formulaEditor | tiny_mce_wiris_formulaEditorChemistry | tiny_mce_wiris_CAS <?php } ?>',
										toolbar2: 'print preview media | forecolor backcolor emoticons | codesample help',
										image_advtab: true,
										templates: [
											{title: 'Test template 1', content: 'Test 1'},
											{title: 'Test template 2', content: 'Test 2'}
										],
										content_css: [
											'<?php echo base_url(); ?>css/font5/font.css'
										]
									});
								</script>
								<?php
							}
							?><?php
						}
					}
				}
			}
		}
	}
	?>
