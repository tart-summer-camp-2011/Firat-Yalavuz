<?php

class HarpOkulu
{

    function __construct()
    {
        
    }

    private $asker;

    public function getSoldier()
    {

        if (rand() % 2 == 0) {
            $this->asker = new Marine(100, 5);
        } else {
            $this->asker = new Infantry(100, 5);
        }
        return $this->asker;
    }

}

?>