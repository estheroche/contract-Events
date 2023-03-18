contract Events{
    //defined our event
    //indexed arguments are easier to access
    event Withdrawal(address indexed receiver , uint indexed amount);

    function withdrawFunds() public{
        //The withdraw logic
        (bool success, ) = payable(msg.sender).call{value: 0}("");

        //emit the event 
        emit Withdrawal(msg.sender, 0);
    }
}