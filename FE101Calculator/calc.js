/**
 * Created by JetBrains PhpStorm.
 * User: FIRAT
 * Date: 28.06.2011
 * Time: 22:49
 * To change this template use File | Settings | File Templates.
 */
function initCalculator()
{

    $calcBody = $("<div id='calc_body'>");
    $('body').append($calcBody);

    $calcScreen = $('<div id="calcScreen">');
    $calcBody.append($calcScreen);

    $calcOperatorDisplay = $('<div id="calcOperatorDisplay">');
    $calcScreen.append($calcOperatorDisplay);

    $calcDisplay = $('<div id="calcDisplay">');
    $calcScreen.append($calcDisplay);

    $numPad = $("<div id='num_pad'>");
    $calcBody.append($numPad);

    $operatorKeyPad = $("<div id='operator_key_pad'>");
    $calcBody.append($operatorKeyPad);

     for(var i = 9; i >= 0; i--){
          $number = $('<div class="number">');
          $number.html(i);
          $numPad.append($number);
    }


    var operators = ['+','-','*','/'];
    for(var i = 0, l = operators.length; i < l; i++) {
          var operator = operators[i];
          $operator = $('<div class="operator">');
          $operator.html(operator);
          $operatorKeyPad.append($operator);
    }


    $calcClear = $('<div id="calcClear">');
    $calcClear.html("C");
    $numPad.append($calcClear);
    
    $equals = $('<div class="equals">');
    $equals.html("=");
    $numPad.append($equals);

}

function initFunctions()
{
    $(".number").click(function(){
          if($calcDisplay.html()== '0'){
            $calcDisplay.html("");
          }

            if($calcDisplay.html().length < 9){
                $calcDisplay.html($calcDisplay.html() + $(this).html());
            }
    });
    var firstNumber;
    var secondNumber;
    var calcFunction;
    $('.operator').click(function(){
        calcFunction = $(this).html();
        firstNumber =  $calcDisplay.html();
        $calcDisplay.html('');
        $calcOperatorDisplay.html($(this).html());
        $calc_function_display = $('<div class="calc_function_display">');
        $calc_function_display.html();
        $('#calc_body').append($calc_function_display);
    });

    function clearCalculator()
    {

        $calcDisplay.html('0');
        $calcOperatorDisplay.html('');

        firstNumber = null;
        secondNumber = null;
        calcFunction =null;
    }

    $('#calcClear').click(function(){
        clearCalculator();
    });

    $('.equals').click(function(){

       secondNumber =  $calcDisplay.html();
       if(firstNumber != null && secondNumber != null){

           var calcResult;
            switch(calcFunction){
                case '+': calcResult = Number(firstNumber) + Number(secondNumber);
                break;
                 case '-': calcResult = Number(firstNumber) - Number(secondNumber);
                break;
                 case '*': calcResult = Number(firstNumber) * Number(secondNumber);
                break;
                case '/': calcResult  = Number(firstNumber) / Number(secondNumber);
                break;
            }
           if(calcResult.toString().length > 9) {
             clearCalculator();
             $calcDisplay.html('LEBLEBI');
           }
           else {
              $calcDisplay.html(calcResult);
           }

       }

    });

}

$(function(){


    initCalculator();
    initFunctions();


});