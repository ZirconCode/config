
WiFi EW-7811Un
--

Sigh~

Install 8192C:

	rtl8188C_8192C_usb_linux_v3.4.4_4749.20121105.tar.gz
	from http://www.edimax.com/en/support_detail.php?pd_id=347&pl1_id=28&pl2_id=138
	
Should:
	
    modprobe -l | grep wireless/
    
    kernel/drivers/net/wireless/rtlwifi/rtl8192cu/rtl8192cu.ko
   
Permanent:
   
    sudo cp 8192cu.ko /lib/modules/`uname -r`/kernel/drivers/net/wireless
		sudo insmod 8192cu.ko
		sudo depmod -a
		
**BLACKLIST THE PREVIOUS DRIVER SO MODULE DOESN'T GET LOADED ANYMORE**
