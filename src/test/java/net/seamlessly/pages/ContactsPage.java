package net.seamlessly.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ContactsPage extends BasePage{


    @FindBy(xpath = "//button[@id='new-contact-button']")
    public WebElement newContactButton;

    @FindBy(xpath = "//section[@class='contact-details']")
    public WebElement form;

    @FindBy(xpath = "//input[@id='contact-org']")
    public WebElement inputName;

    @FindBy(xpath = "//input[@id='contact-title']")
    public WebElement inputLastName;

    @FindBy(xpath = "//div[@class='app-content-list']/div")
    public WebElement listOfContacts;


    @FindBy(css = "button[class$='icon-picture-force-white']")
    public WebElement pictureIconBtn;


    @FindBy(xpath = "//span[.='Choose from Files']")
    public WebElement filesBtn;

    @FindBy(xpath = "//*[@id=\"picker-filestable\"]/tbody/tr[4]/td[1]")
    public WebElement selectPicture;

    @FindBy(css = "div[class*='onebutton']")
    public WebElement chooseBtn;

    @FindBy(css = "div[class$='photo'] img")
    public WebElement newProfilePicture;

    @FindBy(css = "div[class$='avatar'] img")
    public WebElement contact;

    @FindBy(xpath = "(//span[@aria-label='Dots Horizontal icon'])[5]")
    public WebElement threeDotsBttn;

    @FindBy(xpath = "/html/body/div[7]/div/div[1]/div[1]/div/ul/li[3]/button/span[2]")
    public WebElement deleteBtn;
    
    
    }

