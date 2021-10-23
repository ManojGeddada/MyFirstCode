<?php
	session_start();
	echo 'Hi,' . ' ' . $_SESSION['myName']  . ' ' . 'welcome.';
	echo 'Your credits are: ' . $_SESSION['credits'] . '.';
?>