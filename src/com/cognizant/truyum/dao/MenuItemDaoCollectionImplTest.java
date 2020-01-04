package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {
    static MenuItemDao menudao = new MenuItemDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMenuItemAdmin();
        testGetMenuItemCustomer();
        testModifyMenuItem();
        testGetMenuItemCustomer();

    }

    static public void testGetMenuItemAdmin() {
        List<MenuItem> menu = menudao.getMenuItemListAdmin();
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");

        for (MenuItem menuItem : menu) {
            System.out.println(menuItem);
        }
    }

    static public void testGetMenuItemCustomer() {
        System.out.println("Customer View");
        List<MenuItem> menu = menudao.getMenuItemListCustomer();
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menu) {
            System.out.println(menuItem2);
        }

    }

    static public void testModifyMenuItem() {
        System.out.println("modify menu item");
        MenuItem menu = new MenuItem(1, "Eat and Enjoy", 1234.0f, true,
                DateUtil.convertToDate("03/01/2020"), "Main Dish", false);
        menudao.modifyMenuItem(menu);
    }

    static public void testGetMenuItem() {
        System.out.println("Get Menu Item");
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        MenuItem menu = menudao.getMenuItem(3);
        System.out.println(menu);
    }
}