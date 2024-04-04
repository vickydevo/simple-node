# 1. Download nodejs for windows 
      https://nodejs.org/en/download

      download nodejs w.r.t  platform wind/linux/mac

2. Check Node.js Installation:
     node -v
3. Check npm Installation:
      npm -v
 # if node and npm are not found then
            Add Node.js and npm to PATH: During the installation of Node.js/npm, there is an option to add them to your system's PATH environment variable. This allows you to run Node.js and npm commands from any directory in the command prompt. If you didn't select this option during installation, you can add Node.js and npm to your PATH manually:

            a. Search for "Environment Variables" in your Windows search bar and open the "Edit the system environment variables" option.

            b. In the System Properties window, click on the "Environment Variables..." button.

            c. In the Environment Variables window, under "System variables", find the "Path" variable and select it. Then click on the "Edit..." button.

            d. Click on the "New" button and add the directory path where Node.js/npm are installed. By default, this is usually C:\Program Files\nodejs\.

            e. Click "OK" to close all windows.

            After adding Node.js/npm to your PATH, close and reopen any command prompt or Visual Studio Code instances that were open. Then try running npm -v again to verify that npm is now recognized as a command.