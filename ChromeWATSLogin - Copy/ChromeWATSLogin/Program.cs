using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Interactions;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Net;
using System.Runtime.InteropServices;
using System.Threading;
using static System.Net.Mime.MediaTypeNames;

internal class Program
{
    private static bool _stopProgram = false;
    private static void Main(string[] args)
    {
        Console.WriteLine("Hello, World!");
        // Create a new instance of the ChromeDriver class with specified options
        ChromeOptions options = new ChromeOptions();
        options.AddArguments("no-sandbox");
        options.AddArguments("--start-maximized");
        options.AddExcludedArgument("enable-automation");
        options.AddAdditionalChromeOption("useAutomationExtension", false);
        options.AddArguments("--disable-notifications");
        options.AddArguments("--kiosk");
        options.AddArguments("user-data-dir=C:\\Users\\Public\\ChromeWATS");
        IWebDriver driver = new ChromeDriver(options);

        // Navigate to the login page of the website
        driver.Navigate().GoToUrl("https://gn.wats.com/login");

        // Find the username and password fields and populate them with values
        IWebElement usernameField = driver.FindElement(By.Name("Username"));
        usernameField.SendKeys("Viewer");
        IWebElement passwordField = driver.FindElement(By.Name("Password"));
        passwordField.SendKeys("3ngineer#");

        // Wait for the submit button to become clickable
        driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(2);
        IWebElement submitButton = driver.FindElement(By.CssSelector("input[type='submit']"));

        // Submit the login form by clicking the submit button
        submitButton.Click();

        // Read the file containing URLs
        List<string> urls = new List<string>();
        string file = "urls.txt";
        if (File.Exists(file))
        {
            urls = File.ReadAllLines(file).ToList();
        }
        else 
        {
            urls.Add("https://gn.wats.com/dist/#/reporting/dashboard?id=1");
            urls.Add("https://gn.wats.com/dist/#/reporting/dashboard?id=5");
            urls.Add("https://gn.wats.com/dist/#/reporting/dashboard?id=6");
            urls.Add("https://gn.wats.com/dist/#/reporting/dashboard?id=9");
            urls.Add("https://gn.wats.com/dist/#/reporting/dashboard?id=12");
        }
        // Iterate through the URLs and open them in new tabs
        foreach (string url in urls)
        {
            driver.SwitchTo().NewWindow(WindowType.Tab);
            driver.Navigate().GoToUrl(url);
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(2);
            IWebElement fullscreenButton = driver.FindElement(By.XPath("//button[contains(., 'fullscreen')]"));
            fullscreenButton.Click();
        }

        // Switch back to the first tab
        driver.SwitchTo().Window(driver.WindowHandles[0]);

        // Close the first tab
        driver.Close();

        // Set up a separate thread to check for the "Esc" key press
        Thread keyPressThread = new Thread(() =>
        {
            while (true)
            {
                if (Console.KeyAvailable && Console.ReadKey(true).Key == ConsoleKey.Escape)
                {
                    Console.WriteLine("Program interrupted by pressing 'Esc' key. Exiting loop.");
                    _stopProgram = true;
                    break;
                }

                Thread.Sleep(100); // Sleep for 100 milliseconds between key press checks
            }
        });

        // Start the key press thread
        keyPressThread.Start();

        // Get the count of opened tabs
        int TabCount = driver.WindowHandles.Count();

        // Set the start and end times for the loop
        TimeSpan startTime = new TimeSpan(9, 0, 0); // 9:00 AM
        TimeSpan endTime = new TimeSpan(18, 00, 0); // 6:00 PM


        while (!_stopProgram)
        {

                // Check if the current time is within the specified time range
                TimeSpan currentTime = DateTime.Now.TimeOfDay;
                if (currentTime >= startTime && currentTime <= endTime)
                {
                    // Switch between tabs and sleep for a minute in each tab
                    for (int i = 0; i < TabCount; i++)
                    {
                        driver.SwitchTo().Window(driver.WindowHandles[i]);
                        Thread.Sleep(1 * 10 * 1000);  // Sleep for 1 minute
                    }
                }
                else
                {
                    Console.WriteLine("Current time is outside the specified time range. Exiting loop.");
                    break;
                }
            
        }

        // Join the key press thread to ensure it has finished
        keyPressThread.Join();

        // Close the browser window
        driver.Quit();

    }
}