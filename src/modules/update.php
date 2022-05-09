<?php
require_once "./inc/functions.php";



$genre = filter_input(INPUT_POST,"genre");
$name = filter_input(INPUT_POST,"name");
$releaseDate = filter_input(INPUT_POST,"releasedate");
$rating = filter_input(INPUT_POST,"rating");
$revenue = filter_input(INPUT_POST,"revenue");

try {
  $db = openDB();

  if (!$db) {
    echo "Database connection Failed!";
  }

  $sql = "UPDATE `genre` SET `genre`=? , `name`=? , `releasedate`=? , `rating`=? , `revenue`=?";

$pdoStatement = $db->prepare($sql);

  $pdoStatement->bindParam(1, $genre);
  $pdoStatement->bindParam(2, $name);
  $pdoStatement->bindParam(3, $releasedate);
  $pdoStatement->bindParam(4, $rating);
  $pdoStatement->bindParam(5, $revenue);

$pdoStatement->execute();

  exit();

} catch (PDOException $e) {
  returnError($e);
}


?>