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
        List<MenuItem> menuitem = menudao.getMenuItemListAdmin();
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menuitem) {
            System.out.println(menuItem2);
        }

    }

    static public void testModifyMenuItem() {
        System.out.println("modify menu item");
        MenuItem menuitem = new MenuItem(1, "eat and enjoy", 1234.0f, true,
                DateUtil.convertToDate("03/01/2020"), "main dish", false);
        menudao.modifyMenuItem(menuitem);
    }

    static public void testGetMenuItem() {
        System.out.println("Get Menu Item");
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        MenuItem menuItem = menudao.getMenuItem(3);
        System.out.println(menuItem);
    }
}