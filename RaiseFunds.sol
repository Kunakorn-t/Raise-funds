
pragma solidity ^0.5.8;

interface Oracle {
  enum QueryStatus { INVALID, OK, NOT_AVAILABLE, DISAGREEMENT }

  function query(bytes calldata input)
    external payable returns (bytes32 output, uint256 updatedAt, QueryStatus status);

  function queryPrice() external view returns (uint256);
}

contract Project {
    
    uint public countDonate;
    uint public countTransferDonation;
    uint public countFlood;
    uint public countConflagration;
    uint public countEarthquake;
    uint public countEtc;
    
    uint256 public amountFlood;
    uint256 public amountConflagration;
    uint256 public amountEarthquake;
    uint256 public amountEtc;
    
    uint256 public index0;
    uint256 public index1;
    uint256 public index2;
    uint256 public index3;
    uint256 public index4;
    uint256 public index5;
    uint256 public index6;
    uint256 public index7;
    uint256 public index8;
    uint256 public index9;
    
    uint256 public upCountDonate;
    uint256 public getMoney;
    
    string[] public listMember;
    string[] public typeEtc;
    
    struct hisDonate {
        string fullName;
        string naturalType;
        uint256 amountDonate;
        uint256 time;
        uint256 block;
    }
    
    struct hisDonation {
        string fullName;
        string naturalType;
        uint256 amountDonation;
        uint256 time;
        uint256 block;
    }
    
    mapping (address => uint256) public balances;
    mapping (address => string) public member;
    mapping (string => uint256) public countTypeForTransfer;
    mapping (string => uint256) public balanceTypeEtc;
    mapping(address => bool) public checkAddr;
    mapping(string => bool) public checkName;
    
    hisDonate[] public hisdonate;
    hisDonation[] public hisdonation;
    
    event evRegis (
        address user,
        string fullName,
        uint256 time
        );
        
    event evDonate (
        string fullName,
        string naturalType,
        uint256 amountDonate,
        uint256 time,
        uint256 block);
        
    event evDonation (
        string fullName,
        string naturalType,
        uint256 amountDonation,
        uint256 time,
        uint256 block
        );

    function update() public payable returns (uint256) {
        
        Oracle thb = Oracle(0xa24dF0420dE1f3b8d740A52AAEB9d55d6D64478e);
        (bytes32 thbUsd,,) = thb.query.value(thb.queryPrice())("SPOTPX/THB-USD");
        
        Oracle eth = Oracle(0xa24dF0420dE1f3b8d740A52AAEB9d55d6D64478e);
        (bytes32 ethUsd,,) = eth.query.value(eth.queryPrice())("SPOTPX/ETH-USD");
        
        return getMoney = (5000 * (uint256(thbUsd) * 1e18 / (uint256(ethUsd)) ));
        
    } 
    
    function donateFlood () public payable returns (bool success) {
        
        uint time = now;
        
        uint256 money = balances[address(this)];
        balances[address(this)] += msg.value;
        uint256 upMoney = balances[address(this)];
        
        require(upMoney > money);
        
        countFlood += 1;
        amountFlood += msg.value;
        countDonate += 1;
        
        upCountDonate += 1;
        
        if ((upCountDonate - index9) == 2) {
            index9++;
        }
        
        if ((index9 - index8) == 2) {
            index8++;
        }
        
        if ((index8 - index7) == 2) {
            index7++;
        }
        
        if ((index7 - index6) == 2) {
            index6++;
        }
        
        if ((index6 - index5) == 2) {
            index5++;
        }
        
        if ((index5 - index4) == 2) {
            index4++;
        }
        
        if ((index4 - index3) == 2) {
            index3++;
        }
        
        if ((index3 - index2) == 2) {
            index2++;
        }
        
        if ((index2 - index1) == 2) {
            index1++;
        }
        
        if ((index1 - index0) == 2) {
            index0++;
        }
        
        hisdonate.push(hisDonate(member[msg.sender], "อุทกภัย", msg.value, time, block.number));
        emit evDonate(member[msg.sender], "อุทกภัย", msg.value, time, block.number);
        
        return true;
        
    }
    
    function donateConflagration () public payable returns (bool success) {
        
        uint time = now;
        
        uint256 money = balances[address(this)];
        balances[address(this)] += msg.value;
        uint256 upMoney = balances[address(this)];
        
        require(upMoney > money);
        
        countConflagration += 1;
        amountConflagration += msg.value;
        countDonate += 1;
        
        upCountDonate += 1;
        
        if ((upCountDonate - index9) == 2) {
            index9++;
        }
        
        if ((index9 - index8) == 2) {
            index8++;
        }
        
        if ((index8 - index7) == 2) {
            index7++;
        }
        
        if ((index7 - index6) == 2) {
            index6++;
        }
        
        if ((index6 - index5) == 2) {
            index5++;
        }
        
        if ((index5 - index4) == 2) {
            index4++;
        }
        
        if ((index4 - index3) == 2) {
            index3++;
        }
        
        if ((index3 - index2) == 2) {
            index2++;
        }
        
        if ((index2 - index1) == 2) {
            index1++;
        }
        
        if ((index1 - index0) == 2) {
            index0++;
        }
        
        hisdonate.push(hisDonate(member[msg.sender], "อัคคีภัย", msg.value, time, block.number));
        emit evDonate(member[msg.sender], "อัคคีภัย", msg.value, time, block.number);
        
        return true;
        
    }
    
    function donateEarthquake () public payable returns (bool success) {
        
        uint time = now;
        
        uint256 money = balances[address(this)];
        balances[address(this)] += msg.value;
        uint256 upMoney = balances[address(this)];
        
        require(upMoney > money);
        
        countEarthquake += 1;
        amountEarthquake += msg.value;
        countDonate += 1;
        
        upCountDonate += 1;
        
        if ((upCountDonate - index9) == 2) {
            index9++;
        }
        
        if ((index9 - index8) == 2) {
            index8++;
        }
        
        if ((index8 - index7) == 2) {
            index7++;
        }
        
        if ((index7 - index6) == 2) {
            index6++;
        }
        
        if ((index6 - index5) == 2) {
            index5++;
        }
        
        if ((index5 - index4) == 2) {
            index4++;
        }
        
        if ((index4 - index3) == 2) {
            index3++;
        }
        
        if ((index3 - index2) == 2) {
            index2++;
        }
        
        if ((index2 - index1) == 2) {
            index1++;
        }
        
        if ((index1 - index0) == 2) {
            index0++;
        }
        
        hisdonate.push(hisDonate(member[msg.sender], "แผ่นดินไหว", msg.value, time, block.number));
        emit evDonate(member[msg.sender], "แผ่นดินไหว", msg.value, time, block.number);
        
        return true;
        
    }
    
    function testChangenaturalType(uint _index, string memory _changeTypeName) public {
        
        uint256 money;
        money = balanceTypeEtc[typeEtc[_index]];
        balanceTypeEtc[typeEtc[_index]] = 0;
        typeEtc[_index] = _changeTypeName;
        balanceTypeEtc[_changeTypeName] = money;
        
    }
    
    function testPopnaturalType(uint _index) public {
   
        delete typeEtc[_index];
    }
    
    function donateEtc () public payable returns (bool success) {
        
        uint time = now;
        
        uint256 money = balances[address(this)];
        balances[address(this)] += msg.value;
        uint256 upMoney = balances[address(this)];
        
        require(upMoney > money);
     
        countEtc += 1;
        amountEtc += msg.value;
        countDonate += 1;
        
        hisdonate.push(hisDonate(member[msg.sender], "อื่นๆ", msg.value, time, block.number));
        emit evDonate(member[msg.sender], "อื่นๆ", msg.value, time, block.number);
        
        return true;
        
    }
 
    
    function transferDonation (address payable _to, string memory _type) public returns (bool success) {
        
        uint256 amount = update();
        uint time = now;
        
        if(balances[address(this)] >= amount) {
        
            if (keccak256(abi.encodePacked(_type)) == keccak256(abi.encodePacked("อุทกภัย"))) {
                
                require(amountFlood >= amount);
                amountFlood -= amount;
                balances[address(this)] -= amount;
                _to.transfer(amount);
                
            }
            
            else if (keccak256(abi.encodePacked(_type)) == keccak256(abi.encodePacked("อัคคีภัย"))) {
                
                require(amountConflagration >= amount);
                amountConflagration -= amount;
                balances[address(this)] -= amount;
                _to.transfer(amount);
                
            }
            
            else if (keccak256(abi.encodePacked(_type)) == keccak256(abi.encodePacked("แผ่นดินไหว"))) {
                
                require(amountEarthquake >= amount);
                amountEarthquake -= amount;
                balances[address(this)] -= amount;
                _to.transfer(amount);
                
            }
            
            else if (keccak256(abi.encodePacked(_type)) != keccak256(abi.encodePacked("อุทกภัย")) && keccak256(abi.encodePacked(_type)) != keccak256(abi.encodePacked("อัคคีภัย")) && keccak256(abi.encodePacked(_type)) != keccak256(abi.encodePacked("แผ่นดินไหว" ))) {
                
               require(amountEtc >= amount);
                amountEtc -= amount;
                balances[address(this)] -= amount;
                _to.transfer(amount);
                
            }
        
        } else revert();
        
        
        
        countTypeForTransfer[_type] += 1;
        
        hisdonation.push(hisDonation(member[_to], _type, amount, time, block.number));
        emit evDonation(member[_to], _type, amount, time, block.number);
        
        return true;
        
    }
    
    function regis (address _user, string memory _fullName) public returns (bool success) {
        
        require(checkAddr[_user] != true);
        require(checkName[_fullName] != true);
        
        uint256 time = now;
        
        listMember.push(_fullName); //อาจทำหน้า listRegis
        member[_user] = _fullName;
        checkAddr[_user] = true;
        checkName[_fullName] = true;
        emit evRegis(_user, _fullName, time);
        
        return true;
        
    }
    
    function getHisDonateFullName (uint256 _index) public view returns (string memory) {
            return hisdonate[_index].fullName;
    }
    
    function getHisDonateNaturalTypee (uint256 _index) public view returns (string memory) {
            return hisdonate[_index].naturalType;
    }
    
    function getHisDonateAmount (uint256 _index) public view returns (uint256) {
            return hisdonate[_index].amountDonate;
    }
    
    function getHisDonateTime (uint256 _index) public view returns (uint256) {
            return hisdonate[_index].time;
    }
    
    function getHisDonateBlock (uint256 _index) public view returns (uint256) {
            return hisdonate[_index].block;
    }
    
}
