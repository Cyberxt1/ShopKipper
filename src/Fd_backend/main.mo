import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Principal "mo:base/Principal";
// import Array "mo:base/Array";
// import Int "mo:base/Int";

actor Shopkipper {
    type UserDb = [User];
    // Data types
    type User = {
        id: Principal;
        username: Text;
    };
    type ProductDb = [Product];

    type Product = {
        id: Nat;
        name: Text;
        description: Text;
        price: Nat;
        owner: Principal;
    };
    type ShopDb = [Shop];

    type Shop = {
        id: Principal;
        owner: Principal;
        name: Text;
        products: [Product];
    };

    public query func reguser(users:UserDb) : async UserDb {
        return users;
    };

    public query func regproduct(products:ProductDb) : async ProductDb {
        return products;
    };
    public query func regshop(shops:ShopDb) : async ShopDb {
        return shops;
    };
};
