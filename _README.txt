NOTE: Read it completely!

  [.] By default email verification system is disabled, So you don't need to setup sendgrid account & API key.
  [.] If SENDGRID is disabled, forgot password & email verification will not work!
  [.] Check the bottom of the readme file if user registration does not works!



-----------------------------------------------------

Check these things before running the project:

1. db_config.php in Admin Folder

  [.] Database file is present in the DATABASE folder, you just need to import it in phpmyadmin.
  [.] Check the database name, localhost, user name and password.


2. essentials.php in Admin Folder

  [.] define('SITE_URL','http://127.0.0.1/hbwebsite/')

    -> change the above url accordingly, if your project folder name is changed from "hbwebsite" to something else.

  [.] define('UPLOAD_IMAGE_PATH',$_SERVER['DOCUMENT_ROOT'].'/hbwebsite/images/')

    -> change the above url accordingly, if your folder name is changed from "hbwebsite" to something else.

  [.] define('SENDGRID_API_KEY',"PASTE YOUR API KEY GENERATED FROM SENDGRID WEBSITE")
  [.] define('SENDGRID_EMAIL',"PUT YOU EMAIL")
  [.] define('SENDGRID_NAME',"ANY NAME") 

    -> Create an account on sendgrid and generate the API key and just simply paste it in above lines


3. hbwebsite/inc/paytm/config_paytm.php

  [.] Go to paytm business webiste and login with your account 
      & on dashboard of paytm you will find "Developer settings" -> "api keys".
      Get your api keys from there and change it in file "config_paytm.php"

    define('PAYTM_ENVIRONMENT', 'TEST'); // PROD
    define('PAYTM_MERCHANT_KEY', 'PASTE YOUR MERCHANT KEY'); //Change this constant's value with Merchant key received from Paytm.
    define('PAYTM_MERCHANT_MID', 'PASTE YOUR MERCHANT MID'); //Change this constant's value with MID (Merchant ID) received from Paytm.
    define('PAYTM_MERCHANT_WEBSITE', 'WEBSTAGING'); //Change this constant's value with Website name received from Paytm.
    define('INDUSTRY_TYPE_ID', 'Retail'); // Change this constant with website industry type given by paytm
    define('CHANNEL_ID', 'WEB'); // Change this constant with website channel id given by paytm
	
  [.] Change the below constant with callback url accrodingly -> but dont change the file pay_resonse.php

    define('CALLBACK_URL', 'http://localhost/hbwebsite/pay_response.php'); 



------------------------------------------

If you need more help follow the video:

1. For paytm integration

  Video Link: https://youtu.be/KhtPJTj8ofY
  Start Watching from : 01:00:00 

2. Send grid API

  Video Link: https://youtu.be/RWsdhFUYKQo
  Start Watching from : 34:07 

----------------------------------


1. To use sendgrid mailing service:

  [.] Go to ajax/login_register.php file
  [.] In $_POST['regsiter'] --> Just read the comments on line 89 and 104.
  [.] Go to in inc/footer.php file and then in register function in line 134, change the message in alert function to this:
          alert('success',"Registration successful. Confirmation link sent to email!");
  [.] That is it!


2. If you try to register and your data is not inserting in database, then check the network tab for error.

    All you have to do is:
    1. Open console window & go to network tab
    2. Try to do a registration
    3. After form submission, you will see an ajax call network tab to file "login_register.php"
    4. Click on it to see the error.
    
    5. If error is something like this -> Fatal error: Uncaught Error: Call to undefined function imagecreatefromjpeg()
    6. Then to solve this you need to go in "C://xampp/php/php.ini" Configuration file
        -> Ignore php.ini-development or php.ini-production, Just open "php" named Configuration file
    7. Search for "extension=gd" and if it has ";" (semicolon) then remove semicolon 
        -> From ;extension=gd to extension=gd
    
    8. That's it. But if you are using php8 then go to "C://php8/php.ini" Configuration file and repeat step 7
