package net.seamlessly.pages;

import net.seamlessly.utility.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class SearchPage extends BasePage {

    @FindBy(className = "material-design-icon__svg")
    public WebElement searchButton;

    @FindBy(xpath = "/html/body/header/div[2]/div[2]/div/div[2]/div/form/input[1]")
    public WebElement searchBox;

    @FindBy(xpath = "/html/body/header/div[2]/div[2]/div/div[2]")
    public WebElement sidePage;

    @FindBy(className = "unified-search__result-content")
    public WebElement firstResultList;

    @FindBy (id = "contact-fullname")
    public WebElement fullName;

    @FindBy (xpath = "//a[@aria-label='Photos']")
    public WebElement photos;

    @FindBy (css = "img[src='/index.php/core/preview?fileId=30167&c=48f8c2ee1a3df92efed16e8dc49cebf8&x=250&y=250&forceIcon=0&a=0']")
    public WebElement uploadedPicture;

    @FindBy(className = "")
    public WebElement seamlesslyIcon;


}
