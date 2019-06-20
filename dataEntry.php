<?php
ob_start();

require_once "./includes/db.php";
require_once "./includes/queries.php";
include "includes/header.php";

$queries = New \database\Queries($connection);

// get categories
    $categories     = $queries->getSelectOptions("category");
    $manufacturers  = $queries->getSelectOptions("manufacturer");
    $operatingSystems = $queries->getSelectOptions("operatingsystem");
    $screenSize     = $queries->getSelectOptions("screensize");
    $storageType    = $queries->getSelectOptions("storagetype");
    $storageCapacity = $queries->getSelectOptions("hdcapacity");

    $features   = $queries->getSelectOptions("features");
    $ramSize    = $queries->getSelectOptions("ramsize");
    $Quality    = $queries->getSelectOptions("quality");
    $Processor  = $queries->getSelectOptions("processor");
    $processorSpeed = $queries->getSelectOptions("processorspeed");

//print_r($categories);
// get row
    $singleCatRow = $queries->getRow("category", "id = 1");

// get column
    $singleColumn = $queries->getColumnValue("category", "category", "id = 1");
    //print_r($singleColumn[0]);die();

//Pressing Submit triggers the following code
    if(isset($_POST['submit'])) {
        $selectCategory = $_POST['selectCategory'];
        $manufacturers = $_POST['manufacturer'];
        $operatingSystem = $_POST['operatingSystem'];
        $screenSize = $_POST['screenSize'];
        $storageType = $_POST['storageType'];
        $storageCapacity = $_POST['storageCapacity'];
        $features = $_POST['features'];
        $ramSize = $_POST['ramSize'];
        $Condition = $_POST['condition'];
        $processor = $_POST['processor'];
        $processorSpeed = $_POST['processorSpeed'];
        //var_dump($selectCategory, $manufacturers, $operatingSystem, $screenSize, $storageType, $storageCapacity, $features, $ramSize, $Condition, $processor, $processorSpeed);
        $query = "INSERT INTO dataentry(Category, Manufacturer, Operating_System, Screen_Size, Storage_Type, HD_Capacity, Features, RAM_Size, Quality, Processor, Processor_Size) VALUE ('{$selectCategory}','{$manufacturers}','{$operatingSystem}','{$screenSize}','{$storageType}','{$storageCapacity}','{$features}','{$ramSize}','{$Condition}','{$processor}','{$processorSpeed}')";
        if (mysqli_query($connection, $query)) {
            echo "New Record created successfully";
        } else {
            echo "Error: " . $query . "<br>" . mysqli_error($connection);
        }




}



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Mezzoloth - The ITAM Eating Monster</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <script src="https://kit.fontawesome.com/1a2a8a316e.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<form method="post">
    <div class="selectDropdown" id="category">
        <label>Category: </label>
        <select name="selectCategory">
            <?php foreach ($categories as $category): ?>
                <option value="<?= $category[0] ?>"><?= $category[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>
    <div class="selectDropdown">
        <label>Manufacturer: </label>
        <select name="manufacturer">
            <?php foreach ($manufacturers as $manufacturer): ?>
                <option value="<?= $manufacturer[0] ?>"><?= $manufacturer[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>
    <div class="selectDropdown">
        <label>Operating System: </label>
        <select name="operatingSystem">
            <?php foreach ($operatingSystems as $operatingsystem): ?>
                <option value="<?= $operatingsystem[0] ?>"><?= $operatingsystem[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>
    </div>
    <div class="selectDropdown">
        <label>Screen Size: </label>
        <select name="screenSize">
            <?php foreach ($screenSize as $screensize): ?>
                <option value="<?= $screensize[0] ?>"><?= $screensize[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <div class="selectDropdown">
        <label>Storage Type: </label>
        <select name="storageType">
            <?php foreach ($storageType as $storagetype): ?>
                <option value="<?= $storagetype[0] ?>"><?= $storagetype[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <div class="selectDropdown">
        <label>Storage Capacity: </label>
        <select name="storageCapacity">
            <?php foreach ($storageCapacity as $storagecapacity): ?>
                <option value="<?= $storagecapacity[0] ?>"><?= $storagecapacity[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>



    <div class="selectDropdown">
        <label>Features: </label>
        <select name="features">
            <?php foreach ($features as $feature): ?>
                <option value="<?= $feature[0] ?>"><?= $feature[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>
    <div class="selectDropdown">
        <label>RAM Size: </label>
        <select name="ramSize">
            <?php foreach ($ramSize as $ramsize): ?>
                <option value="<?= $ramsize[0] ?>"><?= $ramsize[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <div class="selectDropdown">
        <label>Condition: </label>
        <select name="condition">
            <?php foreach ($Quality as $quality): ?>
                <option value="<?= $quality[0] ?>"><?= $quality[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <div class="selectDropdown">
        <label>Processor: </label>
        <select name="processor">
            <?php foreach ($Processor as $processor): ?>
                <option value="<?= $processor[0] ?>"><?= $processor[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <div class="selectDropdown">
        <label>Processor Speed: </label>
        <select name="processorSpeed">
            <?php foreach ($processorSpeed as $processorspeed): ?>
                <option value="<?= $processorspeed[0] ?>"><?= $processorspeed[1] ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <button type="submit" name="submit">Submit</button>
    <button type="submit" name="download">Download</button>
</form>
</body>
</html>