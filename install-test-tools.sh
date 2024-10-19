#!/bin/bash

# Verificar si se ejecuta como root
if [[ $EUID -ne 0 ]]; then
  echo "Este script debe ejecutarse como root. Usa: sudo ./install-test-tools.sh"
  exit 1
fi

echo "Actualizando el sistema..."
apt update && apt upgrade -y

echo "Instalando dependencias generales..."
apt install -y curl wget unzip openjdk-11-jre openjdk-11-jdk nodejs npm python3-pip ruby

echo "Instalando Selenium y su WebDriver..."
pip install selenium
apt install -y chromium-browser
CHROME_DRIVER_VERSION=$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE)
wget https://chromedriver.storage.googleapis.com/${CHROME_DRIVER_VERSION}/chromedriver_linux64.zip
unzip chromedriver_linux64.zip -d /usr/local/bin/
rm chromedriver_linux64.zip

echo "Instalando Cypress..."
npm install -g cypress

echo "Instalando Playwright..."
npm install -g playwright
playwright install

echo "Instalando JMeter..."
wget https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.6.2.tgz
tar -xvzf apache-jmeter-5.6.2.tgz -C /opt/
rm apache-jmeter-5.6.2.tgz
ln -s /opt/apache-jmeter-5.6.2/bin/jmeter /usr/local/bin/jmeter

echo "Instalando Postman CLI (Newman)..."
npm install -g newman

echo "Instalando Robot Framework y Selenium Library..."
pip install robotframework robotframework-seleniumlibrary

echo "Instalando Cucumber..."
gem install cucumber

echo "Instalando Gatling..."
wget https://dl.gatling.io/gatling-charts-highcharts-bundle-3.9.5-bundle.zip
unzip gatling-charts-highcharts-bundle-3.9.5-bundle.zip -d /opt/
ln -s /opt/gatling-charts-highcharts-bundle-3.9.5/bin/gatling.sh /usr/local/bin/gatling
rm gatling-charts-highcharts-bundle-3.9.5-bundle.zip

echo "Instalando Jenkins..."
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update && apt install -y jenkins
systemctl enable jenkins && systemctl start jenkins

echo "Instalando Pytest..."
pip install pytest

echo "Limpieza de paquetes innecesarios..."
apt autoremove -y

echo "Instalación completa. Revisa si todas las herramientas se han instalado correctamente."
