---
title: "Moto E Developing and Rooting"
excerpt: Modify your Moto E to unleash its full potential.
categories:
  - Tech
tags:
  - Android
  - Root
toc: true
toc_sticky: true
---

This post will help you to:

1. Unlock Boot Loader
2. Flash TWRP Recovery
3. Flash Boot Logo
4. Flash SU (rooting)
5. Flash CyanogenMod

# Unlocking Boot Loader

**WARNING**: Unlocking your bootloader voids your warranty. Proceed at your own risk.
{: .notice--danger}

**NOTE:** Unlocking the bootloader will wipe/factory reset your device, and will delete all personal data from your device such as apps, photos, messages, and settings.
{: .notice--info}

## Turning On USB Debugging

To turn on USB debugging, go to **Settings** > **Developer Options** and enable **USB debugging**. If you don’t see Developer Options, go to **Settings** > **About phone** and tap **Build number** seven times.

You can find the USB debugging option in the developer options menu. It must be enabled for the ADB commands to work.

## Instructions for Unlocking Bootloader

1. Make sure to take a backup of your entire device data.
2. Download the [Android SDK](http://developer.android.com/sdk/index.html) OR Download the [Minimal ADB and Fastboot](http://forum.xda-developers.com/showthread.php?t=2317790)
3. Install the latest Motorola USB Drivers on your desktop. Download [here](https://motorola-global-portal.custhelp.com/app/answers/prod_detail/a_id/99012/p/30,6720,9146).
4. Put your device in fastboot mode (power off, then press the power and volume down buttons simultaneously).
5. Open Command Prompt on `androidsdk/platform-tools/` (Hold Shift and right click and press open command window here)
6. Connect your Phone to PC
7. Type this in the CMD prompt `window - fastboot oem get_unlock_data`
8. You will get a return string. Copy it. [Right Click-Mark- Mark the text by pressing the shift key-Now press Ctrl+C]
9. Paste all the lines together in a notepad.
10. Remove the empty spaces.
11. Now go to the Motorola [Site](https://accounts.motorola.com/ssoauth/login?TARGET=https://motorola-global-portal.custhelp.com/cc/cas/sso/redirect/standalone%2Fbootloader%2Funlock-your-device-b). Sign in using your Google account or Motorola ID. Scroll down the page and paste the copied string in the field at step #6. Then click on ‘Can my device be unlocked?’, after which a "REQUEST UNLOCK KEY" button will appear at the bottom of page.
12. To get your unlock key, select the ‘I Agree’ option. Note: You will receive an email with your Unlock Key at the email address you used to log in there.
13. Important – Copy the 20-character key that Motorola sent you via email. Make sure your device is connected.
14. Then in CMD type: `fastboot devices` (To check your device is connected)
    Then type: `fastboot oem unlock UNIQUE_KEY`

**NOTE:** In above command, replace the word `UNIQUE_KEY` with the unlock code that you got via email. Then hit enter and the unlocking process should begin. Wait for a while and soon you’ll see ‘Bootloader Unlocked’ warning on your Moto E.
{: .notice--info}

# Flashing TWRP Recovery

[You will need the platform-tools from the Android SDK](http://developer.android.com/sdk/index.html) on your computer. Find the SDK Only section on the page linked and install the SDK and download only the `platform-tools` to get adb and fastboot binaries.

Windows users will need proper drivers installed on your computer. You can try the [Naked ADB drivers](http://www.xda-developers.com/universal-naked-driver-solves-your-adb-driver-problems-on-windows/) or the [Universal ADB drivers](http://www.koushikdutta.com/post/universal-adb-driver) if you don't already have a working driver installed

From your computer, open a command prompt and type:

```console
adb reboot bootloader
```

You should now be in fastboot mode. Download the correct image file from here and copy the file into the same folder as your adb and fastboot binaries. Rename the image to twrp.img and type:

```console
fastboot flash recovery twrp.img
fastboot reboot
```

**NOTE:** Many devices will replace your custom recovery automatically during first boot. To prevent this, use Google to find the proper key combo to enter recovery. After typing fastboot reboot, hold the key combo and boot to TWRP. Once TWRP is booted, TWRP will patch the stock ROM to prevent the stock ROM from replacing TWRP. If you don't follow this step, you will have to repeat the install.
{: .notice--info}

# Flashing Boot Logo

1. Download the [logo.zip](http://forum.xda-developers.com/attachment.php?attachmentid=2754582&d=1400621240).
2. Extract all the files
3. Reboot to fastboot mode (power + vol down)
4. Now open cmd and use `cd` command to go to the directory where you placed the file.
5. Now Type the command: `fastboot flash logo logo.bin`
6. Reboot from the recovery (use vol up to select and vol down to navigate)
7. Now your bootlogo should be restored back to the normal version

# Flashing SU

1. Download The SuperSU from [here (thread)](http://forum.xda-developers.com/showthread.php?t=1538053) and copy it into the root of your internal memory!
2. Go to recovery and flash the zip.

# Flashing CyanogenMod

1. Download latest zip from [here](https://download.cyanogenmod.org/?device=condor)
2. Download gapps zip from [here](http://wiki.cyanogenmod.org/w/Google_Apps)
3. Go to recovery flash Cyanogen Mod than gapps.
