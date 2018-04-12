<?php 
Class Multithreading{
	public function post_async($url, array $params) {
            //echo $url;die;
          //var_dump($params);die;
		//$url = "http://111.118.246.35/loyalty/hooks/sendVerificationMail";
		if(is_array($params)){
			$post_string = http_build_query($params);
		}

		$parts = parse_url($url);

		$fp = fsockopen($parts['host'], isset($parts['port']) ? $parts['port'] : 80, $errno, $errstr, 30);

		$out = "POST " . $parts['path'] . " HTTP/1.1\r\n";
		$out.= "Host: " . $parts['host'] . "\r\n";
		$out.= "Content-Type: application/x-www-form-urlencoded\r\n";
		$out.= "Content-Length: " . strlen($post_string) . "\r\n";
		$out.= "Connection: Close\r\n\r\n";
		if (isset($post_string))
			$out.= $post_string;

		fwrite($fp, $out);
//		while (!feof($fp)) {
//			//echo fgets($fp, 128);
//		}
		fclose($fp);
	}
}
?>