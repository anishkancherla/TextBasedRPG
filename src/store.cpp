#include "../include/store.hpp"
#include "../include/Inventory.h"
#include "../header/Character.h"
#include <iostream>
#include <vector>
#include <string>

using namespace std ; 

Store :: Store ()
{
    // initialize creation of store array 
    // store in a vector of vectors
    // i.e vector[0][0] -> first item's name
    // i.e vector [0][1] -> first item's description

    // creates vector for entire store

    // create separate vector for each item
    // 0 = name
    // 1 = description
    // 2 = quantity

    vector<string>itemOne = { "Leather Armor", "increases max health by 10 hp", "1" } ; 
    storeVector.push_back(itemOne) ; 

    vector<string>itemTwo = { "Chainmail Armor", "increases max health by 30 hp", "1" } ; 
    storeVector.push_back(itemTwo) ; 

    vector<string>itemThree = { "Iron Armor", "increases max health by 60 hp", "1" } ; 
    storeVector.push_back(itemThree) ; 

    vector <string>itemFour = { "Gold Armor", "increases max health by 70 hp", "1" } ; 
    storeVector.push_back(itemFour) ; 

    vector <string>itemFive = { "Diamond Armor", "increases max health by 120 hp", "1" } ; 
    storeVector.push_back(itemFive) ; 

    vector <string>itemSix = { "Wood Sword", "increases attack by 10 points", "1" } ; 
    storeVector.push_back(itemSix) ; 

    vector <string>itemSeven = { "Stone Sword", "increases attack by 30 points", "1" } ; 
    storeVector.push_back(itemSeven) ; 

    vector <string>itemEight = { "Iron Sword", "increases attack by 60 points", "1" } ; 
    storeVector.push_back(itemEight) ; 

    vector <string>itemNine = { "Gold Sword", "increases attack by 70 points", "1" } ; 
    storeVector.push_back(itemNine) ; 

    vector <string>itemTen = { "Diamond Sword", "increases attack by 100 points", "1" } ; 
    storeVector.push_back(itemTen) ; 

    vector <string>itemEleven = { "Gun", "increases attack by 100000 points", "1" } ; 
    storeVector.push_back(itemEleven) ; 

    vector <string>itemTwelve = { "Small Health Potion", "increases current health by 40 hp", "8" } ; 
    storeVector.push_back(itemTwelve) ; 
    
    vector <string>itemThirteen = { "Medium Health Potion", "increases current health by 70 hp", "8" } ; 
    storeVector.push_back(itemThirteen) ; 

    vector <string>itemFourteen = { "Large Health Potion", "increases current health by 100 hp", "8" } ; 
    storeVector.push_back(itemFourteen) ; 

}

void Store :: displayStoreContents ( )
{
    for ( int i = 0 ; i < storeVector.size() ; i ++ )
    {
        cout << "< Available Items >" << endl ; 
        cout << (storeVector[i])[0] << endl ; 
        // cout << "\tdescription: " << (storeVector[i])[1] << endl ; 
        // cout << "\tquantity: " << (storeVector [i])[2] << endl ; 
        // cout << endl ; 
    }
}

void Store :: displayItemInfo ( string userItemInfo )
{
    int userItemIndex = 1000 ; 

    for ( int i = 0 ; i < storeVector.size() ; i ++ )
    {
        if ( (storeVector[i])[0] == userItemInfo || (storeVector[i])[0] == tolower(userItemInfo) )  
        {
            cout << (storeVector[i])[0] << endl ; 
            cout << "\tdescription: " << (storeVector[i])[1] << endl ; 
            cout << "\tquantity: " << (storeVector [i])[2] << endl ; 
            cout << endl ; 
            userItemIndex = i ;
        }
    }

    if ( userItemIndex == 1000 )
    {
        throw invalid_argument("Invalid item entered") ;
        return ; 
    }

    storeMenu() ; 

}

void Store :: purchaseItem ( string userItem )
{
    // useritem is removed from vector if quantity = 1
    // quantity decreased if quantity is > 1 
    
    int userItemIndex = 1000 ; 
    for ( int i = 0 ; i < storeVector.size() ; i ++ )
    {
        if ( (storeVector[i])[0] == userItem || (storeVector[i])[0] == tolower(userItem) )  
        {
            userItemIndex = i ; 
            return ; 
        }
    }

    if ( userItemIndex == 1000 )
    {
        throw invalid_argument("Invalid item entered") ;
        storeMenu() ; 
        return ; 
    }

    if ( (storeVector[userItemIndex])[2] == "0" )
    {
        throw out_of_range( "Item out of stock; quantity = 0" ) ; 
        storeMenu() ; 
        return ; 
    }

    // quantity adjustment

    for ( int i = 1 ; i < storeVector.size() ; i ++ )
    {
        if ( i == stoi (storeVector[userItemIndex][2]) )
        {
            string newQuantity = to_string( i - 1 ) ; 
            storeVector[userItemIndex][2] = newQuantity ; 
        }
    }


    // ADD TO INVENTORY

    string userItemName = storeVector[userItemIndex][0] ; 

    for (auto it = items.begin(); it != items.end(); ) {
        if (it->name == userItemName) {
            items.addItem(it);
        } else {
            ++it;
        }
    }

    return ;
}

void Store :: displayItemQuantity ( string userItem )
{
    // displays quantity of item name entered by user
    int userItemIndex = 1000 ; 
    for ( int i = 0 ; i < storeVector.size() ; i ++ )
    {
        if ( (storeVector[i])[0] == userItem ) 
        {
            userItemIndex = i ; 
            cout << "Description: " << (storeVector[userItemIndex])[1] << endl ;
            return ; 
        }
    }

    if ( userItemIndex == 1000 )
    {
        throw invalid_argument("Invalid item entered") ;
        storeMenu() ; 
    }

    storeMenu() ; 

    return ;   
}

void Store :: displayItemDescription ( string userItem )
{
    // displays description of item name entered by user
    int userItemIndex = 1000 ; 
    for ( int i = 0 ; i < storeVector.size() ; i ++ )
    {
        if ( (storeVector[i])[0] == userItem )  
        {
            userItemIndex = i ; 
            return ; 
        }
    }

    if ( userItemIndex == 1000 )
    {
        throw invalid_argument("Invalid item entered") ;
        return ; 
    }

    cout << "Quantity: " << (storeVector[userItemIndex])[2] << endl ;

    storeMenu() ; 
    
}

void Store :: storeMenu ()
{
    // cout a menu for users to choose their next step from 
    // numbered options
    cout << "< Welcome to the Store >" << endl ; 
    cout << "What would you like to do?" << endl ; 
    cout << endl ; 
    printMenu() ; 

    int userChoice ; 
    cin >> userChoice ; 

    while ( userChoice != 4 )
    {
        if ( userChoice == 1 )
        {
            displayStoreContents() ;   
        }
        else if ( userChoice == 2 )
        {
            string userItemInfo ; 
            cout << "Enter item name" << endl ; 
            getline ( cin, userItemInfo ) ; 

            displayItemInfo( userItemInfo ) ;
        }
        else if ( userChoice == 3 )
        {
            string userPurchaseItem ; 
            cout << "Enter item to be purchased" << endl ; 
            getline ( cin, userPurchaseItem ) ; 
            purchaseItem( userPurchaseItem ) ; 
        }

        printMenu() ;
        cin >> userChoice ;
    }

    return ; 
}

void Store :: printMenu ()
{
    // prints out numbered menu
    // issue: should see items in store if choosing option 2 and when asking for details (3,4)
    
    cout << "< Menu >" << endl ; 
    cout << "1) View available items in Store" << endl ; // print item names ONLY
    cout << "2) Learn more about an item" << endl ; // prints description and quantity of specific item
    cout << "3) Purchase an item" << endl ; 
    cout << "4) Leave Store" << endl ; 
} 
