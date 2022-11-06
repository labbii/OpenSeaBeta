import Debug "mo:base/Debug";
import Principal "mo:base/Principal";

// simple contract
actor class NFT (name: Text, owner: Principal, content: [Nat8]) = this  {
    
    // create NFT
    private let itemName = name;
    private var nftOwner = owner;
    private let imageBytes = content;
    private var listedForSale = false;

    // query function --> Name of NFT
    public query func getName() : async Text{
        return itemName;
    };

    // query function --> Owner of NFT
    public query func getOwner() : async Principal{
        return nftOwner;
    };

      // query function --> Asset
    public query func getAsset() : async [Nat8] {
        return imageBytes;
    };

    public query func getCanisterId() : async Principal {
        return Principal.fromActor(this);
    };

    public shared(msg) func transferOwnership(newOwner: Principal) : async Text {
    //    if(isListing) {
    //        listedForSale := true;
    //    }else{
    //        listedForSale := false;
    //    };

        if(msg.caller == nftOwner ){
            nftOwner := newOwner;
            return "Success";
        }else {
            return "Error!" 
        }
    }
};