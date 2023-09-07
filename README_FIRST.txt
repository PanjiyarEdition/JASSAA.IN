
SETUP

1. CREATE DATABASE NAME WITH jassaa_website
2. ADMIN LOGIN 

  	login: jassaa_website
  	Password: 12345

User login

1. 	Gmail: jigarpanjiyar@gmail.com
	Pass: 123

2. 	Gmail: ram@gmail.com
	Pass: 123

3.	Gmail: panjiyar@gmail.com
	Pass: 12345



All you have to do is:

    1. Open the console window & go to the network tab
    2. Try to do a registration
    3. After form submission, you will see an Ajax call network tab to file "login_register.php"
    4. Click on it to see the error.
    
    5. If error is something like this -> Fatal error: Uncaught Error: Call to undefined function imagecreatefromjpeg()
    6. Then to solve this you need to go to "C://xampp/php/php.ini" Configuration file
        -> Ignore php. ini-development or php. ini-production, Just open "php" named Configuration file
    7. Search for "extension=gd" and if it has ";" (semicolon) then remove the semicolon 
        -> From ;extension=gd to extension=gd
    
    8. That's it. But if you are using php8 then go to the "C://php8/php.ini" Configuration file and repeat step 7


xampp/php/php(configuration setting)/extension=gd 
do this  ;extension=gd to extension=gd (extension=gd)

