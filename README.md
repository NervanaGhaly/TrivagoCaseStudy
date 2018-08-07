# TrivagoCaseStudy
This is the case study for Trivago Room 5
You need to install Robot Framework in order to be able to run the automation test suite for Trivago Magazine Web Portal
Below are the steps to install Robot Framework in Windows 10:
 1. Install Python and PIP (add to your PATH)
 2. Use PIP to install Robot Framework
 3. Use PIP to install SeleniumLibrary
 4. Select and install desired browsers versions
 5. Install Selenium Webdrivers for each browser
 6. Install the Pycharm IDE and Intellibot plugin
 7. Open "TrivagoRoom5" Robot Framework project
 
 And below is how to perform each step:
1. Install Python and PIP:
	1. Navigate to "Python.org" and click "Downloads"
	2. Download Python version 3.6.X
	3. Run the Python installer as Administrator
          a. Select the PATH and pip options
          b. Verify Python directories exist
          c. Verify Python directories are in PATH
	4. Open command line and type python -V
	5. Also type pip -V
	6. Type pip list and follow pip upgrade directions
      
2. Use PIP to install Robot Framework and Libraries:
	1. Open a Windows command line
	2. Type pip install robotframework
	3. Hit enter
	
	
3. Use PIP to install SeleniumLibrary:
	1. Open a Windows command line
	2. Type install robotframework-seleniumlibrary
	3. Hit enter
      
4. Install desired browsers:
	Install IE, Edge, Chrome, Firefox
		
5. Install Selenium Webdrivers:
	1. Create c:\bin
	2. Add c:\bin to PATH
	3. Go to "seleniumhq.org" and click "Download"
	4. Then find "IE Driver" and "Third party drivers" sections
	5. Download and extract each driver into c:\bin
	6. Get the 32 bit Webdriver for IE
	
6. Install the Pycharm IDE and Intellibot plugin:
	1. Go to jetbrains.com
	2. Click Tools > Pycharm
	3. Download and install Community edition (free)
	4. Install Pycharm
	5. Launch Pycharm
	6. Open File > Settings dialog
	7. Click on Plugins
	8. Search for and install "Intellibot" (patched for SeleniumLibrary)
	9. Restart Pycharm
	
7. Open "TrivagoRoom5" Robot Framework project
	1. Click File > Open
	2. Select the "TrivagoRoom5" project from the location where you saved the project file
	3. Hit "OK"
	
To run the test suite from Pycharm, please use the below:
	1. Click View > Tool Windows > Terminal 
	2. Execute robot commands:
	robot -d results tests/TrivagoMag.robot
	robot -d results -i<test tag> tests/TrivagoMag.robot ---> This is a command to run a specific test case within the test 		suite by including its Tag
	robot -d results -t<test case name> tests/TrivagoMag.robot ---> This is a command to run a specific test case within the 		test suite by its name
