<?php


	//旅游超市


	class travelStoreAction extends Action{
		public function smsousuojieguo(){
			if(IS_POST){
				$mudidi = I('zhusousuomudidi');
				$ruzhuriqi = I('smruzhuri');
				$tuifang = I('smtuifangri');
				$p0 = I('p0');
				$p1 = I('p1');
				$p2 = I('p2');
				$p3 = I('p3');
				$p4 = I('p4');

				if(p0==''&&$p1==''&&$p2==''&&p3==''&&p4==''){
					import('ORG.Util.Page');
					$count = M('hotel')->count();
					$page = new Page($count,7);
					$limit = $page->firstRow .','. $page->listRows;

					$content = M('hotel')->order('id DESC')->limit($limit)->select();
					$this->content = $content;
					$this->page = $page->show();
				}

			}else{
				import('ORG.Util.Page');
				$count = M('hotel')->count();
				$page = new Page($count,7);
				$limit = $page->firstRow .','. $page->listRows;

				$content = M('hotel')->order('id DESC')->limit($limit)->select();
				$this->content = $content;
				$this->page = $page->show();
			}
			$this->display();
		}

		public function travelStore(){
				if(IS_POST){
					$shifadi = I('smshifadi');
					$mudidi= I('smmudidi');
					$qishiri= I('smqishiri');
					$jiezhiri= I('smjiezhiri');

					if($shifadi!=''){
						$data['startPos'] = array('LIKE',"%".I('smshifadi')."%");
					}
					if($mudidi!=''){
						$data['endPos'] = array('LIKE',"%".I('smmudidi')."%");
					}
					if($qishiri!=''){
						$data['startTime'] = array('EGT',I('smqishiri'));
					}
					if($jiezhiri!=''){
						$data['endTime'] = array('ELT',I('smjiezhiri'));
					}

					$store = M('travelscency')->where($data)->order("id DESC")->select();
					$this->assign("store",$store);

					//

					$smudidi = I('chisousuomudidi');
					$dianming = I('chisousuodianming');

					if($smudidi!=''){
						$eat['destination'] = array('LIKE',"%".I('chisousuomudidi')."%");
					}
					if($dianming!=''){
						$eat['storeName'] = array('LIKE',"%".I('chisousuodianming')."%");
					}

					import('ORG.Util.Page');
					$count = M('food')->where($eat)->count();
					$page = new Page($count,3);
					$limit = $page->firstRow .','. $page->listRows;

					$content = M('food')->order('id DESC')->limit($limit)->where($eat)->select();
					$this->content = $content;
					$this->page = $page->show();


				}else{
					$store = M('travelscency')->where($data)->order("id DESC")->select();
					$this->assign("store",$store);

					import('ORG.Util.Page');
					$count = M('food')->count();
					$page = new Page($count,3);
					$limit = $page->firstRow .','. $page->listRows;

					$content = M('food')->order('id DESC')->limit($limit)->select();
					$this->content = $content;
					$this->page = $page->show();
				}
				$this->display();
			}



		public function living(){
			$mudidi = $_POST['data'];
			//$eat=M('city')->where(array('cityName'=>$mudidi))->select();
			$data['shangyequ'] = M('city')->where(array('cityName'=>$mudidi))->field('business')->select();
			$data['jichang'] =  M('city')->where(array('cityName'=>$mudidi))->field('station')->select();
			$data['xingzhengqu'] = M('city')->where(array('cityName'=>$mudidi))->field('xian')->select();
			$data['jingdian'] = M('city')->where(array('cityName'=>$mudidi))->field('jingdian')->select();;
			$this->ajaxReturn($data);
		}

		public function jiudian(){
			$id = $_GET['id'];
			$data = M('hotel')->where(array('id'=>$id))->find();
			$this->assign('hotel',$data);
			$this->display();

		}


	}


?>
