using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Interactions;
using OpenQA.Selenium.Support.UI;
using SeleniumExtras.WaitHelpers;
using System;
using System.Collections.Generic;
using System.IO; // 需要添加文件操作的命名空间
using System.Threading;
using static System.Net.Mime.MediaTypeNames; // 这个引用可能不需要，可以删除

internal class Program
{
    private static  bool _stopProgram = false;
    private static object _lock = new object();
    private static void Main(string[] args)
    {
        Console.WriteLine("Hello, World!");

        // 创建一个新的 ChromeDriver 实例，使用指定的选项
        ChromeOptions options = new ChromeOptions();
        options.AddArguments("no-sandbox");
        options.AddArguments("--start-maximized");
        options.AddExcludedArgument("enable-automation");
        options.AddAdditionalChromeOption("useAutomationExtension", false);
        options.AddArguments("--disable-notifications");
        options.AddArguments("--kiosk");
        options.AddArguments("user-data-dir=C:\\Users\\Public\\ChromeWATS");
        IWebDriver driver = new ChromeDriver(options);

        // 导航到网站的登录页面
        driver.Navigate().GoToUrl("https://gn.wats.com/login");

        // 查找用户名和密码字段，并填入值
        IWebElement usernameField = driver.FindElement(By.Name("Username"));
        usernameField.SendKeys("Viewer");
        IWebElement passwordField = driver.FindElement(By.Name("Password"));
        passwordField.SendKeys("3ngineer#");

        // 等待提交按钮可点击
        driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(2);
        IWebElement submitButton = driver.FindElement(By.CssSelector("input[type='submit']"));

        // 通过点击提交按钮提交登录表单
        submitButton.Click();

        // 读取包含URL的文件
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

        // 遍历URL，并在新标签页中打开它们
        foreach (string url in urls)
        {
            driver.SwitchTo().NewWindow(WindowType.Tab);
            driver.Navigate().GoToUrl(url);
            Console.WriteLine(url);
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(2);
            /*            IWebElement fullscreenButton = driver.FindElement(By.XPath("//button[contains(., 'fullscreen')]"));
                        fullscreenButton.Click();*/
            WebDriverWait wait = new WebDriverWait(driver, TimeSpan.FromSeconds(10)); // 设置最大等待时间为10秒
            IWebElement element = wait.Until(ExpectedConditions.ElementIsVisible(By.XPath("//button[text()='Full screen']")));
            IWebElement fullscreenButton = driver.FindElement(By.XPath("//button[text()='Full screen']"));
            Actions actions = new Actions(driver);
            actions.MoveToElement(fullscreenButton).Click().Perform();

        }

        // 切换回第一个标签页
        driver.SwitchTo().Window(driver.WindowHandles[0]);

        // 关闭第一个标签页
        driver.Close();

        // 设置一个单独的线程来检查是否按下了 "Esc" 键
        Thread keyPressThread = new Thread(() =>
        {
            while (true)
            {
                if (Console.KeyAvailable && Console.ReadKey(true).Key == ConsoleKey.Escape)
                {
                    Console.WriteLine("按下 'Esc' 键中断程序。退出循环。");
                    lock (_lock)
                    {
                        _stopProgram = true;
                    }
                    break;
                }

                Thread.Sleep(100); // 每次按键检查之间暂停100毫秒
            }
        });

        // 启动按键检查线程
        keyPressThread.Start();

        // 获取打开标签页的数量
        int TabCount = driver.WindowHandles.Count();

        // 设置循环的开始和结束时间
        TimeSpan startTime = new TimeSpan(9, 0, 0); // 上午9点
        TimeSpan endTime = new TimeSpan(23, 00, 0); // 下午6点

        while (!_stopProgram)
        {
            bool stopProgram;
            lock (_lock)
            {
                stopProgram = _stopProgram;
            }

            if (stopProgram)
            {
                Console.WriteLine("按下 'Esc' 键中断程序。退出循环。");
                break;
            }
            // 检查当前时间是否在指定的时间范围内
            TimeSpan currentTime = DateTime.Now.TimeOfDay;
            if (currentTime >= startTime && currentTime <= endTime)
            {
                // 在不同标签页之间切换，并在每个标签页中暂停一分钟
                for (int i = 0; i < TabCount; i++)
                {
                    driver.SwitchTo().Window(driver.WindowHandles[i]);
                    Thread.Sleep(1 * 10 * 1000);  // 暂停1分钟
                }
            }
            else
            {
                Console.WriteLine("当前时间不在指定的时间范围内。退出循环。");
                break;
            }
        }

        // 等待按键检查线程结束
        keyPressThread.Join();

        // 关闭浏览器窗口
        driver.Quit();
    }
}
