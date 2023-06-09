# How to boost my games and increase fps?
THIS METHOD DOES NOT NEED ROOT.

Overview: This tutorial will allow you to lower your android phone's resolution, relieving battery, the gpu, cpu and ram use.

# Warning! Before start
This method isn't safe in Samsung phones.
This could cause graphical issues on your launcher, your icons and other elements may seem larger or even be off screen
Use this at your own risk, I've had no major issues aside from large icons, but the trade off is a 30-40% battery boost and overall a much much smoother game (constant 60fps)

# Requirements
This requires a Windows PC or a Mac.

# Tutorial
1. Enable USB debugging developer options on your phone. 
Settings > About Phone > Tap (Build version or build number) until you get a prompt that developer options are available.

2. Enable USB debugging find and enable USB debugging on your phone. 
Settings > Developer options > Enable USB debugging

![alt text](https://github.com/Naritsumi/android-boost-performance/blob/main/img/usb-debugging.jpg)

3. Download and install adb on your [PC](https://developer.android.com/studio/releases/platform-tools?hl=es-419) or [MAC](https://htc-one.gadgethacks.com/how-to/install-adb-fastboot-mac-os-x-send-commands-your-htc-one-0151178/). 
Extract the contents of this ZIP file into an easily accessible folder and add it in path environment variable.

# With .bat file

* Download the [.bat](https://github.com/Naritsumi/android-boost-performance/releases/tag/Release) file.

* Type the option you want, you can change the resolution manually or let the script do the job for you. The script will display your screen resolution, write it somewhere to continue the process. And that's it!

# Or manual cmd

* Run cmd on pc (Windows key + R, Type CMD and hit enter) or Terminal. Plug phone in.

* Once in CMD or Terminal enter: ``adb shell dumpsys display``.

* This step is important!
If the code is accepted (that command did nothing to your phone) find the following data* and write it down, this will allow you to revert back if you do not like the lower resolution, do not skip this step, If you mess your screen up, with this you can go back.

*You can search your phone specs on internet too. 

* Using my phone resolution of 1600x720, 690 ppi.. (yes, its height x width, not width x height) we're lowering it to 1280x640, 300 ppi.

Insert commands below:

``adb shell wm size 1280x640``

``adb shell wm density 300``

Note that, you may need to mess with the density (ppi) until you can read well and the phone GUI looks confortable. My phone didnt have such a nice known resolution. I did need an 16:9 resolution table to consult lower options: https://pacoup.com/2011/06/12/list-of-true-169-resolutions/. 

# Posible console errors:

** If you get an "Not authorized" error check your phone and authorize the PC and try again.
** If you get an "WRITE" error, go to Developer options and look for "Disable permission monitoring" and toggle on. Unplug and plug in, then try again.

# Hope this helps!

Credit to:
u/CaptCapy
