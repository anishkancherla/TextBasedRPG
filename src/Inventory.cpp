#include "../header/Inventory.h"
#include "../header/Character.h"

#include <iostream>

using namespace std;

void Inventory::addItem(const string& currentItem) {
    items.push_back(currentItem);
}

void Inventory::dropItem(const string& itemName) {
    for (auto it = items.begin(); it != items.end(); ) {
        if (*it == itemName) {
            it = items.erase(it);
        } else {
            ++it;
        }
    }
}

void Inventory::viewInventory() const {
    cout << "Inventory:" << endl;
    for (const auto& itemName : items) {
        cout << itemName << endl;
    }
}

void Inventory::equipWeapon(string newEquipWeapon){
    if(player.getWeapon() == ""){
        if(newEquipWeapon == "Wooden Sword"){
            player.setTotalDamage(player.getBaseDamage() + 10);
        }else if(newEquipWeapon == "Stone Sword"){
            player.setTotalDamage(player.getBaseDamage() + 30);
        }else if(newEquipWeapon == "Iron Sword"){
            player.setTotalDamage(player.getBaseDamage() + 60);
        }else if(newEquipWeapon == "Gold Sword"){
            player.setTotalDamage(player.getBaseDamage() + 70);
        }else if(newEquipWeapon == "Diamond Sword"){
            player.setTotalDamage(player.getBaseDamage() + 100);
        }else if(newEquipWeapon == "Gun"){
            player.setTotalDamage(player.getBaseDamage() + 100000);
        }else{
            cout << "Unvalid weapon" << endl;
            return;
        }
        player.setWeapon(newEquipWeapon);
        cout << newEquipWeapon << " is now equipped." << endl;
    }else{
        cout << "Must unequip current weapon before equipping a new one." << endl;
    }
}

void Inventory::unequipWeapon(){
    if(player.getWeapon() == ""){
        cout << "Weapon slot is already empty." << endl;
    }else{
        if(player.getWeapon() == "Wooden Sword"){
            player.setTotalDamage(player.getBaseDamage() - 10);
        }else if(player.getWeapon() == "Stone Sword"){
            player.setTotalDamage(player.getBaseDamage() - 30);
        }else if(player.getWeapon() == "Iron Sword"){
            player.setTotalDamage(player.getBaseDamage() - 60);
        }else if(player.getWeapon() == "Gold Sword"){
            player.setTotalDamage(player.getBaseDamage() - 70);
        }else if(player.getWeapon() == "Diamond Sword"){
            player.setTotalDamage(player.getBaseDamage() - 100);
        }else if(player.getWeapon() == "Gun"){
            player.setTotalDamage(player.getBaseDamage() - 100000);
        }else{
            cout << "Something went wrong unequipping a weapon." << endl;
        }
        player.setWeapon("");
        cout << "Weapon slot is now empty." << endl;
    }
}

void Inventory::equipArmor(string newArmor){
    if(player.getArmor() == ""){
        if(newArmor == "Leather Armor"){
            player.setMaxHealth(player.getMaxHealth() + 10);
        }else if(newArmor == "Chainmail Armor"){
            player.setMaxHealth(player.getMaxHealth() + 30);
        }else if(newArmor == "Iron Armor"){
            player.setMaxHealth(player.getMaxHealth() + 60);
        }else if(newArmor == "Gold Armor"){
            player.setMaxHealth(player.getMaxHealth() + 70);
        }else if(newArmor == "Diamond Armor"){
            player.setMaxHealth(player.getMaxHealth() + 120);
        }else{
            cout << "Unvalid Armor" << endl;
        }

        player.setArmor(newArmor);
        cout << newArmor << " is now equipped." << endl;
    }else{
        cout << "Must unequip current armor before equipping a new one." << endl;
    }
}

void Inventory::unequipArmor(){
    if(player.getArmor() == ""){
        cout << "Armor slot is already empty." << endl;
    }else{
        if(player.getArmor() == "Leather Armor"){
            player.setMaxHealth(player.getMaxHealth() - 10);
        }else if(player.getArmor() == "Chainmail Armor"){
            player.setMaxHealth(player.getMaxHealth() - 30);
        }else if(player.getArmor() == "Iron Armor"){
            player.setMaxHealth(player.getMaxHealth() - 60);
        }else if(player.getArmor() == "Gold Armor"){
            player.setMaxHealth(player.getMaxHealth() - 70);
        }else if(player.getArmor() == "Diamond Armor"){
            player.setMaxHealth(player.getMaxHealth() - 120);
        }else{
            cout << "Unvalid Armor" << endl;
        }
        player.setArmor("");
        cout << "Armor slot is now empty." << endl;
    }
}

void Inventory::useConsumable(string consumable){
    if(consumable == "Small Health Potion"){
        if((player.getCurrentHealth() + 40) < player.getMaxHealth()){
            player.setCurrentHealth(player.getCurrentHealth() + 40);
            cout << "You now have " << player.getCurrentHealth() << " hp." << endl;
        }else{
            player.setCurrentHealth(player.getMaxHealth());
        }
    }else if(consumable == "Medium Health Potion"){
        if((player.getCurrentHealth() + 70) < player.getMaxHealth()){
            player.setCurrentHealth(player.getCurrentHealth() + 70);
            cout << "You now have " << player.getCurrentHealth() << " hp." << endl;
        }else{
            player.setCurrentHealth(player.getMaxHealth());
        }
    }else if(consumable == "Large Health Potion"){
        if((player.getCurrentHealth() + 100) < player.getMaxHealth()){
            player.setCurrentHealth(player.getCurrentHealth() + 100);
            cout << "You now have " << player.getCurrentHealth() << " hp." << endl;
        }else{
            player.setCurrentHealth(player.getMaxHealth());
        }
    }else{
        cout << "Cannot consume that item." << endl;
    }
}

string Inventory::printBeginning(){
    return items.front();
}
