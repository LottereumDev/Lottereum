pragma solidity ^0.4.2;
contract owned {
    address public owner;
    address public administrator;
 
    function owned() {
        owner = msg.sender; 
	administrator = 0x1cF460DB4a2290498616C2D9AeA2ad1Ed201fA39;
    }
 
    modifier onlyAdministrator {
        require(msg.sender == administrator || msg.sender == owner);
        _;
    }
 
    function transferOwnership(address newOwner) onlyAdministrator {
        owner = newOwner;
    }
}
 
contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
 
contract baseToken is owned {
    
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 private totalSupply;

 
 
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;
 
 
    event Transfer(address indexed from, address indexed to, uint256 value);
 
     function baseToken(string tokenName, uint8 decimalUnits, string tokenSymbol) {
        name = tokenName;                                   
        symbol = tokenSymbol;                               
        decimals = decimalUnits;                            
    }
 
    function transfer(address _to, uint256 _value) {
        require (balanceOf[msg.sender] >= _value);           
        require(balanceOf[_to] + _value >= balanceOf[_to]);  
        balanceOf[msg.sender] -= _value;                     
        balanceOf[_to] += _value;                            
        Transfer(msg.sender, _to, _value);                   
    }
 
     function approve(address _sender, uint256 _value)
        returns (bool success) {
        allowance[msg.sender][_sender] = _value;
        return true;
    }
 
     function approveAndCall(address _sender, uint256 _value, bytes _extraData)
        returns (bool success) {    
        tokenRecipient sender = tokenRecipient(_sender);
        if (approve(_sender, _value)) {
            sender.receiveApproval(msg.sender, _value, this, _extraData);
            return true;
        }
    }
 
     function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
        require(balanceOf[_from] >= _value);                 
        require(balanceOf[_to] + _value >= balanceOf[_to]);  
        require(_value <= allowance[_from][msg.sender]);     
        balanceOf[_from] -= _value;                          
        balanceOf[_to] += _value;                            
        allowance[_from][msg.sender] -= _value;
        Transfer(_from, _to, _value);
        return true;
    }
  
    function () {}
}
 

 
contract Lottereum is baseToken {
    
    uint256 private initialSupplyPerParticipantAddress; 
    
    uint256 private startTimeLotteryByTokenUTC;
    uint256 private startTimeLotteryByEthereumUTC;
    uint256 private countGenesisToken;
    uint256 private tokensOfLosers;
    uint256[] private shares;
    uint256 private ticketPriceInWei;
    uint private prizeFundInWei;
    uint numPartToken = 0;
    uint numPartEthereum = 0;
            
    uint256 public totalSupply;
    uint256 public totalFundInTokenLottery;
    uint256 public totalFundEthereumLotteryInWei;
    uint256 public ticketPriceInTokenLottery;
    string public ticketPriceInEthereumLottery;
    
    uint256 public amountOfTicketsForTokenLotteryPurchased;
    uint256 public amountOfTicketsForEthereumLotteryPurchased;
    string public startTimeLotteryByToken;
    string public startTimeLotteryByEthereum;
    mapping (address => Ticket) ticketsForTokenLottery;
    mapping (address => Ticket) ticketsForEthereumLottery;
    
    address[] public participientsTokenLottery;
    address[] public participientsEthereumLottery;
    address[] public investors;
    
    enum LotteryType { Token, Ethereum }
    
    struct Ticket {
        address participiant;
        uint256 numTicket;
    }

    
    modifier particientLottery(LotteryType typeLot) {
	    var isParticipiant = false;
	    if(typeLot == LotteryType.Token) {
	        for(uint256 i = 0; i < participientsTokenLottery.length; i++){
	            if(participientsTokenLottery[i] == msg.sender) isParticipiant = true;       
	        }
	        require(isParticipiant && ticketsForTokenLottery[msg.sender].numTicket == 0); 
	    }
	    if(typeLot == LotteryType.Ethereum)
	        for(i = 0; i < participientsEthereumLottery.length; i++){
	            if(participientsEthereumLottery[i] == msg.sender) isParticipiant = true;       
	        }
	        require(isParticipiant && ticketsForEthereumLottery[msg.sender].numTicket == 0); 
        _;
    }

    function Lottereum() baseToken ("Lottereum", 0, "LTE") { 
	    totalSupply = 0;
	    initialSupplyPerParticipantAddress = 1000;
	    amountOfTicketsForTokenLotteryPurchased = 0;
	    amountOfTicketsForEthereumLotteryPurchased = 0;
	    ticketPriceInTokenLottery = 100;
	    ticketPriceInEthereumLottery = "0.01";
	    ticketPriceInWei = 10000000000000000;
	    totalFundInTokenLottery = 0;
	    totalFundEthereumLotteryInWei = 0;
	    prizeFundInWei = 0;
	    shares = [10, 110, 10, 100, 2000, 100, 100, 100, 100, 2000, 60];
	    investors = [0xdfddcD072309E832528F3b41967d9869eE7aEA63, 0xAd7024Ff124Fb9dd2F81D675E6797D1a29F94d18, 0x9C79d57e46A5A8656810910BFe863889018d5BaD, 0xfF9ADFb4C19bFD54099A73Cec4baE6dBC79883a7, 0x5f3f6Dc5189a6Ad30281775B745FBe71158800AF,
	    0x5eA28b8b38ff9e669d26a9bA5efa791fF46C56aE, 0x486ca2D5247a582a2DA074a449e2E6F521b0E7ce,  0x93BF27a3512F28a4ce66ebd0bc0fC8DFD0602448, 0xdF31dE85deaf78407415105912546F6Aa5404a8d, 0x7D6e9F9E42271a1802FAd26040242bA29236Eb7C,
	    0x623137505BD03dC72D08c2AFbc8Ff23B7C7F83C1];
	    
    }

    function addParticipiant(address partAddress, LotteryType typeLot) {
        if(typeLot == LotteryType.Token){
	    if(numPartToken == participientsTokenLottery.length) {
               participientsTokenLottery.length += 1;
            }
            participientsTokenLottery[numPartToken++] = partAddress;
	}
	if(typeLot == LotteryType.Ethereum){
	    if(numPartEthereum == participientsEthereumLottery.length) {
               participientsEthereumLottery.length += 1;
            }
            participientsEthereumLottery[numPartEthereum++] = partAddress;
	}
    }

    function clearParticipiants(LotteryType typeLot) {
        if(typeLot == LotteryType.Token){
            numPartToken = 0;
	} else{
	    numPartEthereum = 0;
	}
    }
     
    function importAddresses(address[] users) {
        for (uint i=0;i<users.length;i++)   {
	        address user = users[i];
	    	if (balanceOf[user] == 0){
	            balanceOf[user] += initialSupplyPerParticipantAddress;
		        countGenesisToken++;
		    }
		    else {
		        if(balanceOf[user] <= countGenesisToken * (initialSupplyPerParticipantAddress - 303)){
			    balanceOf[user] += initialSupplyPerParticipantAddress;
	    		    countGenesisToken++;	
		        }
		    }     
	    }
	    
	    totalSupply += users.length*1000;
    }

    function participateInTokenLottery() {
    	if(participientsTokenLottery.length >= 1000) revert();
	    for(uint256 i = 0; i < participientsTokenLottery.length; i++){
	        if(participientsTokenLottery[i] == msg.sender) revert();
	    }
	    assert(balanceOf[msg.sender] >= 1);
        balanceOf[msg.sender] -=1;
        balanceOf[this] +=1;
        addParticipiant(msg.sender, LotteryType.Token);
    }


    function participateInEthereumLottery() {
        if(participientsEthereumLottery.length >= 1000) revert();
	    for(uint i = 0; i < participientsEthereumLottery.length; i++){
	        if(participientsEthereumLottery[i] == msg.sender) revert();
	    }
        assert(balanceOf[msg.sender] >= 1);
        balanceOf[msg.sender] -=1;
        balanceOf[this] +=1;
        addParticipiant(msg.sender, LotteryType.Ethereum);
    }    

    function buyTicketForTokenLottery() particientLottery(LotteryType.Token) {
	    require(block.timestamp > startTimeLotteryByTokenUTC);
	    if(balanceOf[msg.sender] < ticketPriceInTokenLottery) revert();
        balanceOf[msg.sender] -= ticketPriceInTokenLottery;
        totalFundInTokenLottery += ticketPriceInTokenLottery;
	    amountOfTicketsForTokenLotteryPurchased++;
	    ticketsForTokenLottery[msg.sender] = Ticket(msg.sender, amountOfTicketsForTokenLotteryPurchased);
	    if (amountOfTicketsForTokenLotteryPurchased == 1000)
		playLotteryByToken();

    }

    function buyTicketForEthereumLottery() particientLottery(LotteryType.Ethereum) payable {
	    require(block.timestamp > startTimeLotteryByEthereumUTC);
	    require(msg.value >= ticketPriceInWei);
	    prizeFundInWei += ticketPriceInWei;
		totalFundEthereumLotteryInWei += ticketPriceInWei;
	    amountOfTicketsForEthereumLotteryPurchased++;
	    ticketsForEthereumLottery[msg.sender] = Ticket(msg.sender, amountOfTicketsForEthereumLotteryPurchased); 
	    if (amountOfTicketsForEthereumLotteryPurchased == 1000)
		    playLotteryByEthereum();
    }
    
    function setStartTimeLotteryByToken(uint256 _dateTime, string _dateString) onlyAdministrator {
	    startTimeLotteryByTokenUTC = _dateTime;	    
	    startTimeLotteryByToken = _dateString;	    
    }

    function setStartTimeLotteryByEthereum(uint256 _dateTime, string _dateString) onlyAdministrator {
	    startTimeLotteryByEthereumUTC = _dateTime;	    
	    startTimeLotteryByEthereum = _dateString;	    
    }

    function setTicketPriceInToken(uint256 _price) onlyAdministrator {
	    ticketPriceInTokenLottery = _price;	    
    }
    
    function setTicketPriceInEthereum(uint256 _price, string _priceEth) onlyAdministrator {
	    ticketPriceInWei = _price;
	    ticketPriceInEthereumLottery = _priceEth;
	    
    }

    function playLotteryByToken() onlyAdministrator {
	    var tokensOfWinners = totalFundInTokenLottery * 8 / 10;
	    tokensOfLosers = totalFundInTokenLottery / 10 ;

	    totalSupply -= totalFundInTokenLottery / 10; 

	    for(uint256 i = 0; i < amountOfTicketsForTokenLotteryPurchased; i++)  {
	        var winner = participientsTokenLottery[i];
	        var numTicketWinner = ticketsForTokenLottery[winner].numTicket;

	        if(numTicketWinner == 1) balanceOf[winner] += tokensOfWinners * 2 / 10;

	        if(numTicketWinner % 10 == 0) balanceOf[winner] += tokensOfWinners * 2 / 1000;

	        if(numTicketWinner % 20 == 0) balanceOf[winner] += tokensOfWinners * 4 / 1000;

	        if(numTicketWinner % 100 == 0)balanceOf[winner] += tokensOfWinners * 2 / 100;
	    }

	    for(i = 0; i < amountOfTicketsForTokenLotteryPurchased; i++)  {
		var user = participientsTokenLottery[i];
		delete ticketsForTokenLottery[user];	
		participientsTokenLottery[i] = 0;	
	    }
	
	    clearParticipiants(LotteryType.Token);
	    totalFundInTokenLottery = 0;
	    amountOfTicketsForTokenLotteryPurchased = 0;
    } 

    function playLotteryByEthereum() onlyAdministrator {
	    uint256 ethereumsOfWinners = totalFundEthereumLotteryInWei * 7 / 10;
	    uint256 ethereumsOfInvestors = totalFundEthereumLotteryInWei * 2 / 10;
	    uint256 ethereumsOfDev = totalFundEthereumLotteryInWei / 10;
	    uint256 countLoser = amountOfTicketsForEthereumLotteryPurchased;
	    uint256 investSum = 0;
	    	
	    for(uint256 i = 0; i < amountOfTicketsForEthereumLotteryPurchased; i++)  {
	        var winner = participientsEthereumLottery[i];
	        var numTicket = ticketsForEthereumLottery[winner].numTicket;

	        if(numTicket == 1)
	            if (!winner.send(ethereumsOfWinners / 10))
			 revert(); 
            	 

	        if(numTicket % 10 == 0)
	            if (!winner.send(ethereumsOfWinners * 2 / 1000)) 
	                 revert();                                         

	        if(numTicket % 20 == 0)
	            if (!winner.send(ethereumsOfWinners * 4 / 1000)) 
	                 revert();                                         

	        if(numTicket % 100 == 0)
	            if (!winner.send(ethereumsOfWinners * 2 / 100)) 
                    revert();                                         
	    }

	    for(i = 0; i < amountOfTicketsForEthereumLotteryPurchased; i++)  {
	        var loser = participientsEthereumLottery[i];
	        var numTicketLoser = ticketsForEthereumLottery[winner].numTicket;

	        if(numTicketLoser % 10 > 0 || numTicketLoser != 1) {
	            balanceOf[loser] += tokensOfLosers/countLoser;				
	        }

		    delete ticketsForEthereumLottery[loser];
		    participientsEthereumLottery[i] = 0;
	    }

	    for(i = 0; i < shares.length; i++) {
	    	investSum += shares[i];				
	    }

	    for(i = 0; i < investors.length; i++) {
	    	balanceOf[investors[i]] += ethereumsOfInvestors * shares[i] / (investSum*1000);				
	    }
	    
	    clearParticipiants(LotteryType.Ethereum);
	    totalFundEthereumLotteryInWei = 0;
	    amountOfTicketsForEthereumLotteryPurchased = 0;

	    if (!administrator.send(ethereumsOfDev))
			 revert();
	}

    function addInvestor(address investAddress, uint256 share) onlyAdministrator {
	    investors.push(investAddress);
	    shares.push(share);
    }
}