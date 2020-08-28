echo "Any-App setup script V0.2"
echo "An update and upgrade will be run to make sure the system is ready for install"
sudo apt-get update -y -q
sudo apt-get upgrade  -y -q
#User choses what to install
echo "What type of install do you want:"
echo "(W) Windows EXE (wine)" #Installs WINE
echo "Sorry the other install types are still under development"
#echo "(M) MacOS APP (darling)" #Installs Darling
#echo "(B) Both" #Installs Both
#echo "(F) Full distro conversion (for fresh ubuntu install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts
#echo "(WSL) Windows For Linux Distro Setup (for fresh ubuntu wsl install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts, XRDP, and GUI
read InstallType
if $InstallType -eq "W"
then
	echo "Installing wine"
	sudo dpkg --add-architecture i386
	wget -nc https://dl.winehq.org/wine-builds/winehq.key
	sudo apt-key add winehq.key -q
	sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -q
	sudo apt-get update -y -q
	sudo apt-get install -y wine64 wine32
else
	echo "Sorry this feature is under development"
fi