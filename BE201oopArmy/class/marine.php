<?php

class Marine extends SoldierAbstract implements NavyInterface
{

    function __construct($life, $attackPower)
    {
        parent::__construct($life, $attackPower);
    }

}

?>