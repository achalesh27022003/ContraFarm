// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Tender {
    struct Company {
        string name;
        address walletAddress;
    }
    
    struct Officer {
        string name;
        address walletAddress;
    }
    
    struct Farmer {
        string name;
        uint farmSize;
        address walletAddress;
    }
    
    struct Area {
        string village;
        string district;
        string city;
        string state;
        string pinCode;
    }
    
    string public cropName;
    uint public proposedBid;
    uint public estQuantity;
    Area public tenderArea;
    Company public ownerCompany;
    Officer public claimingOfficer;
    Farmer[] public participatingFarmers;
    bool isPassed = false; 
    
    constructor(string crop, uint biddingPrice, uint reqQuantity, string companyName, string village, string district, string city, string state, string pinCode) public {
        cropName = crop;
        proposedBid = biddingPrice;
        estQuantity = reqQuantity;
        Company storage creatorCompany = ownerCompany;
        creatorCompany.name = companyName;
        creatorCompany.walletAddress = msg.sender;
        Area storage targetArea = tenderArea;
        targetArea.village = village;
        targetArea.district = district;
        targetArea.city = city;
        targetArea.state = state;
        targetArea.pinCode = pinCode;
    }
    
}