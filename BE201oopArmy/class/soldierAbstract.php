<?php

/**
 * 
 */

/**
 * 
 */
abstract class SoldierAbstract
{

    /**
     * 
     * Askerin healti
     * @var integer
     */
    private $_life;

    /**
     * 
     * Asker adi
     * @var string
     */
    private $_name;

    /**
     * asker hayatta mi
     * @var boolean
     */
    private $_isAlive = true;

    /**
     * saldiri gucu ...
     * @var integer
     */
    private $_attackPower;

    /**
     * askerin olustugu yer
     * 
     * @param integer $life
     * 
     * askerin saldiri gucu
     * @param integer $attackPower
     */
    function __construct($life, $attackPower)
    {
        $this->setLife($life);
        $this->setAttackPower($attackPower);
    }
    
    /**
     * askerin adi
     * 
     * @param string $name
     */
    protected function setName($name)
    {
        $this->_name = $name;
    }

    /**
     * askerin adini veren method 
     * 
     * @return string
     */
    public function getName()
    {
        return $this->_name;
    }

    public function getLiveStatus()
    {
        return $this->_isAlive;
    }

    /**
     * @return integer
     */
    public function getLife()
    {
        return $this->_life;
    }

    /**
     * Enter description here ...
     * 
     * @param integer $life
     * 
     * @return
     */
    private function setLife($life)
    {
        $this->_life = $life;
    }

    /**
     * askerin saldiri gucu
     * 
     * @return integer
     */
    public function getAttackPower()
    {
        return $this->_attackPower;
    }

    /**
     * askerin atak gucunu set ediyoruz.
     * 
     * @param integer $attackPower
     * 
     * @return 
     */
    protected function setAttackPower($attackPower)
    {
        $this->_attackPower = $attackPower;
    }

    /**
     * Askerin saldiri methodu
     * 
     * @param soldierAbstract
     * 
     * @return mixed
     */
    function attack($soldier)
    {
        if ($soldier instanceof SoldierAbstract) {
            if ($soldier->_life > 0) {
                $soldier->setLife($soldier->getLife() - $this->getAttackPower());
            } else {
                $soldier->_isAlive = false;
            }
        }
    }

}

?>