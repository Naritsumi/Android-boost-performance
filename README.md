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

--- Imagen del debuger

3. Download and install adb on your [PC](https://developer.android.com/studio/releases/platform-tools?hl=es-419) or [MAC](https://htc-one.gadgethacks.com/how-to/install-adb-fastboot-mac-os-x-send-commands-your-htc-one-0151178/). 
Extract the contents of this ZIP file into an easily accessible folder and add it in path environment variable.

4. Once installed run cmd on pc (Windows key + R, Type CMD and hit enter) or Terminal. Plug phone in.

5. Once in CMD or Terminal enter: ``adb shell dumpsys display``.
If you get an "Not authorized" error check your phone and authorize the PC and try again.
If you get an "WRITE" error, go to Developer options and look for "Disable permission monitoring" and toggle on. Unplug and plug in, then try again.

6. This step is important!
If the code is accepted (that command did nothing to your phone) find the following data* and write it down, this will allow you to revert back if you do not like the lower resolution, do not skip this step, If you mess your screen up, with this you can go back:

Mine (OPPO A53S) width: 720 height: 1600 density: 690

*You can search your phone specs on the web too

7. Lets say your phone has a res. of 1080x1920, 480 ppi.. (yes, its height x width, not width x height)

So we're lowering it to 720x1280, 350 ppi. insert commands below:

adb shell wm size 720x1280

adb shell wm density 350

*Note that, you may need to mess with the density (ppi) until you can read well and the phone GUI looks confortable.

However my phone didnt have such a nice known resolution. It was 540x960, 256 ppi. So i did need an 16:9 resolution table to consult lower options: https://pacoup.com/2011/06/12/list-of-true-169-resolutions/

Below are the lines I inserted in my phone.

adb shell wm size 396x704
adb shell wm density 600.

Hope this helps!

Todo:

- [ ] Español también
