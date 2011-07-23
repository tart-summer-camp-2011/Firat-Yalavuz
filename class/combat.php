<?php

class Combat
{

    /**
     * @var array
     */
    protected $_soldierTeamA;

    /**
     * @var array
     */
    protected $_soldierTeamB;

    function __construct()
    {
        $this->_soldierTeamA = array();
        $this->_soldierTeamB = array();
    }

    function war()
    {
        echo "--- Savas Basladi ---<br>";
        while ($this->checkVictory() == 0) {
            $this->fight($this->selectSoldier($this->_soldierTeamA), $this->selectSoldier($this->_soldierTeamB));
        }
        echo "--- Savas Bitti ---<br>";
    }

    function createWar($size)
    {
        $Okul = new HarpOkulu();
        for ($i = 0; $i < $size; $i++) {

            $this->_soldierTeamA[] = $Okul->getSoldier();
            $this->_soldierTeamB[] = $Okul->getSoldier();
        }
    }

    function selectSoldier($soldierTeam)
    {
        return $soldierTeam[array_rand($soldierTeam)];
    }

    function fight($soldierA, $soldierB)
    {
        $ilkSaldiran = rand(0, 1);

        switch ($ilkSaldiran) {
            case 0:
                $soldierA->attack($soldierB);
                echo "A -> B: TAKIM A'dan bir asker TAKIM B'ye saldirdi.<br>";
                $soldierB->attack($soldierA);
                echo "B -> A: TAKIM B'den bir asker TAKIM A'ya saldirdi.<br>";
                break;

            case 1:
                $soldierB->attack($soldierA);
                echo "B -> A: TAKIM B'den bir asker TAKIM A'ya saldirdi.<br>";
                $soldierA->attack($soldierB);
                echo "A -> B: TAKIM A'dan bir asker TAKIM B'ye saldirdi.<br>";

                break;
            default:
                break;
        }

        if ($soldierA->getLife() <= 0) {
            unset($this->_soldierTeamA[array_search($soldierA, $this->_soldierTeamA)]);
            echo "TAKIM A Bir Asker kaybeti<br>";
        } elseif ($soldierB->getLife() <= 0) {
            unset($this->_soldierTeamB[array_search($soldierB, $this->_soldierTeamB)]);
            echo "TAKIM B Bir Asker kaybeti<br>";
        }
    }

    function checkVictory()
    {
        $teamASoldiersLeft = sizeof($this->_soldierTeamA);
        $teamBSoldiersLeft = sizeof($this->_soldierTeamB);

        //savasi devam etme durumu
        if ($teamASoldiersLeft > 0 && $teamBSoldiersLeft > 0) {
            echo 'A Kalan: ' . $teamASoldiersLeft . '<br>';
            echo 'B Kalan: ' . $teamBSoldiersLeft . '<br>';
            return 0;
        } else {
            if ($teamBSoldiersLeft <= 0 && $teamASoldiersLeft > 0) {
                echo $teamBSoldiersLeft . ' ASKER ILE TAKIM B Kazandi<br>';
                return 1;
            } else if ($teamASoldiersLeft <= 0 && $teamBSoldiersLeft > 0) {
                echo $teamBSoldiersLeft . ' ASKER ILE TAKIM B Kazandi<br>';
                return 2;
            }
        }
    }

}

?>
