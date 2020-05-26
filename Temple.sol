pragma solidity ^0.5.8;

contract Temple {
    
    uint256 public countWater;
    uint256 public countElectricity;
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
    uint256 public amountWater;
    uint256 public amountElectricity;
    
    struct hisDonate {
        address addr;
        string donateType;
        uint256 amountDonate;
        uint256 time;
        uint256 block;
    }
    
    struct hisWithdraw {
        address addr;
        string naturalType;
        uint256 amountDonation;
        uint256 time;
        uint256 block;
    }
    
    event evDonate (
        address addr,
        string donateType,
        uint256 amountDonate,
        uint256 time,
        uint256 block);
        
    event evWithdraw (
        address addr,
        string naturalType,
        uint256 amountDonation,
        uint256 time,
        uint256 block
        );
    
    mapping (address => uint256) public balances;
    mapping(address => bool) public adminTemple;
    
    hisDonate[] public hisdonate;
    hisWithdraw[] public hiswithdraw;
    
    function donateWaterBill () public payable returns (bool success) {
        
        uint time = now;
        
        uint256 money = balances[address(this)];
        balances[address(this)] += msg.value;
        uint256 upMoney = balances[address(this)];
        
        require(upMoney > money);
        
        countWater += 1;
        amountWater += msg.value;
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
        
        hisdonate.push(hisDonate(msg.sender, "ทำบุญช่วยค่าน้ำวัด", msg.value, time, block.number));
        emit evDonate(msg.sender, "ทำบุญช่วยค่าน้ำวัด", msg.value, time, block.number);
        
        return true;
        
    }
    
    function donateElectricityBill () public payable returns (bool success) {
        
        uint time = now;
        
        uint256 money = balances[address(this)];
        balances[address(this)] += msg.value;
        uint256 upMoney = balances[address(this)];
        
        require(upMoney > money);
        
        countElectricity += 1;
        amountElectricity += msg.value;
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
        
        hisdonate.push(hisDonate(msg.sender, "ทำบุญช่วยค่าไฟวัด", msg.value, time, block.number));
        emit evDonate(msg.sender, "ทำบุญช่วยค่าไฟวัด", msg.value, time, block.number);
        
        return true;
        
    }
    
    function withDrawWater (address payable _to, uint256 _amount) public {
        
        require(adminTemple[msg.sender] == true);
        require(balances[address(this)] >= _amount);
        require(amountWater >= _amount);
        
        uint time = now;
        
        amountWater -= _amount;
        balances[address(this)] -= _amount;
        _to.transfer(_amount);
        
        hiswithdraw.push(hisWithdraw(_to, "ชำระค่าน้ำประปาของวัด", _amount, time, block.number));
        emit evWithdraw(_to, "ชำระค่าน้ำประปาของวัด", _amount, time, block.number);
    }
    
    function withdrawElectricity (address payable _to, uint256 _amount) public {
        
        require(adminTemple[msg.sender] == true);
        require(balances[address(this)] >= _amount);
        require(amountElectricity >= _amount);
        
        uint time = now;
        
        amountElectricity -= _amount;
        balances[address(this)] -= _amount;
        _to.transfer(_amount);
        
        hiswithdraw.push(hisWithdraw(_to, "ชำระค่าใช้ไฟฟ้าของวัด", _amount, time, block.number));
        emit evWithdraw(_to, "ชำระค่าใช้ไฟฟ้าของวัด", _amount, time, block.number);
    }
    
    function getHisDonateAddr (uint256 _index) public view returns (address addr) {
            return hisdonate[_index].addr;
    }
    
    function getHisDonateType (uint256 _index) public view returns (string memory donateType) {
            return hisdonate[_index].donateType;
    }
    
    function getHisDonateAmount (uint256 _index) public view returns (uint256 amountDonate) {
            return hisdonate[_index].amountDonate;
    }
    
    function getHisDonateTime (uint256 _index) public view returns (uint256 time) {
            return hisdonate[_index].time;
    }
    
    function getHisDonateBlock (uint256 _index) public view returns (uint256 _block) {
            return hisdonate[_index].block;
    }
    
    function admin(address _admin) public {
        adminTemple[_admin] = true;
    }
    
}