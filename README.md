# vagrant-personal-box

Download the installation ISO file for Lubuntu from http://lubuntu.net/ (latest
version at the time of writing is 16.10).

Download and install VirtualBox from https://www.virtualbox.org/wiki/Downloads.

Open VirtualBox Manager. Click 'New' to create a virtual machine. In the first
window enter 'Lubuntu 64-bit VM' in the 'Name' field, and select 'Linux' and
'Ubuntu (64-bit)' as the 'Type' and 'Version', respectively.

Allocate 4096 MB for the RAM memory, then create a 20 GB virtual hard disk of
type VDI (VirtualBox Disk Image). Set it to be dynamically allocated, and give
it the same name as the VM (this is the default option).

Back on the main VirtualBox Manager window, select the VM and click 'Settings',
then 'Storage'. Click the CD drive ('Controller: IDE') to expand it, then
select the CD icon. Click the CD icon next to the 'Attributes -> Optical Drive'
field to the right to attach the Lubuntu ISO file. Click 'OK'.

From the main window select the VM and click 'Start' to boot the VM with the
installation disk. Follow the instructions on the screen to install the
operating system. Select the options to download updates while installing, and
to install third party software for graphics, hardware and media.

For the installation type, choose 'Erase disk and install Lubuntu'. Leave other
options deselected. Click 'Install Now', then 'Continue'.

Select the time zone and the keyboard layout. Enter your name, choose a
username and set your password. Select 'Require my password to log in'. Wait
for the installation to complete, then restart the machine.

With the VM running, log in and then click 'Devices -> Insert Guest Additions
CD image' on the VirtualBox menu. 
