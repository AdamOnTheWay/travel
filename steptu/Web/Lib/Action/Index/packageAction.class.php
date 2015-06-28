<?php
	class packageAction extends Action{

		public function package(){
			$data = M('travelscency')->select();
			$this->assign('scency',$data);
			$this->display();
		}
	}



?>