package net.seamlessly.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class FilesPage extends BasePage{



        @FindBy(xpath = "//*[@id=\"appmenu\"]/li[2]/a")
        public WebElement All_Files;

        @FindBy(xpath = "//*[@id=\"controls\"]/div[2]/a")
        public WebElement AddFile;

        @FindBy(xpath = "//*[@id=\"controls\"]/div[2]/div[2]/ul/li[3]/a/span[2]")
        public WebElement AddNewTextFile;


        @FindBy(xpath = "//*[@id=\"view11-input-file\"]")
        public WebElement NewTextFileTextBox;


        @FindBy(xpath = "//*[@id=\"controls\"]/div[2]/div[2]/ul/li[3]/a/form/input[2]")
        public WebElement CreateNewTextFile;

        @FindBy(xpath = "//*[@id=\"viewer\"]/div[1]/div[2]/button/span[1]")
        public WebElement CloseTextFileEditBox;

        @FindBy(xpath = "//span[.=\"New Text Delete 1\"]")
        public WebElement NewTextDelete1File;

        @FindBy(xpath = "//span[.=\"New Text Delete 2\"]")
        public WebElement NewTextDelete2File;

        @FindBy(xpath = "//*[@id=\"rightClickMenu\"]/ul/li[7]/a")
        public WebElement DeleteWithRightClick;
        @FindBy(xpath = "//*[@id=\"app-navigation\"]/ul/li[6]/a")
        public WebElement Deleted_Files_Tab;

        @FindBy(xpath = "//*[@id=\"headerName-container\"]/a/span[2]")
        public WebElement SortbyName;

        @FindBy(xpath = "//*[.=\"Deleted\"]//span[@class=\"sort-indicator icon-triangle-s\"]")
        public WebElement SortbyDateAsc;

        @FindBy(xpath = "//*[.=\"Deleted\"]//span[@class=\"sort-indicator icon-triangle-n\"]")
        public WebElement SortbyDateDes;

        @FindBy(xpath = "//*[@id=\"fileList\"]/tr[1]")
        public WebElement FirstElementOfTheDeletedItems;




}
