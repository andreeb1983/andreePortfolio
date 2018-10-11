<?php require 'connexion.php'; ?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <?php
    // requête pour une seule info :
    $sql = $pdoCV -> query(" SELECT * FROM t_users ");
    $line_user = $sql->fetch();

   
    

    ?>
    <title>Back-office : <?php echo $line_user['username']; ?> </title>
</head>
<body>
    <h1>Test</h1>

    <p><?php echo $line_user['firstname'] .' ' . $line_user['lastname']; ?></p>

    <hr>
    <?php

        // requête pour compter et chercher plusieurs enregistrements :
        $sql = $pdoCV -> prepare("SELECT * FROM t_hobbies");
        $sql -> execute();
        $nbr_hobbies = $sql -> rowCount();

    ?>
        
        <h5>Il y a <?php echo $nbr_hobbies; ?></h5>

            <ul>
            
            <?php
                while($line_hobby = $sql -> fetch())
                {
            ?> 
                <li><?php echo $line_hobby['hobby']; ?></li> 
            <?php
                } // ferme le while
            ?>

            </ul>
        

        
    
   
    

   

     

</body>
</html>