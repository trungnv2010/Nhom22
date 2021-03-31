<?php

echo "Hello, ". $_POST["username"]."<br>";
echo "You are studying at ".$_POST["class"].", ".$_POST["uni"]."<br>";
echo "Your hobby: <br>";
$hoc = isset($_POST['hobby3']);
$movie = isset($_POST['hobby1']); if($movie) echo "Watching movie".'<br>';
$music = isset($_POST['hobby2']); if($music) echo "Listening to music".'<br>';
$study = isset($_POST['hobby3']); if($study) echo "Studying".'<br>';


?> 
