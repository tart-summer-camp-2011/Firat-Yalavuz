<?php

class Infantry extends SoldierAbstract implements landForcesInterface
{

    function __construct($life, $attackPower)
    {
        parent::__construct($life, $attackPower);
    }

}

?>
