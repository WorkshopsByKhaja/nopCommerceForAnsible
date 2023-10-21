#!/bin/bash
HOME_DIR="/var/lib/jenkins/workspace/nopCommerce@2"
cd "$HOME_DIR/src"
dotnet restore NopCommerce.sln
cd "$HOME_DIR/src/Presentation/Nop.Web"
dotnet build Nop.Web.csproj -c Release
cd "$HOME_DIR/src/Plugins/Nop.Plugin.DiscountRules.CustomerRoles"
dotnet build Nop.Plugin.DiscountRules.CustomerRoles.csproj -c Release
cd "$HOME_DIR/src/Plugins/Nop.Plugin.ExchangeRate.EcbExchange"
dotnet build Nop.Plugin.ExchangeRate.EcbExchange.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.ExternalAuth.Facebook
dotnet build Nop.Plugin.ExternalAuth.Facebook.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Misc.Sendinblue
dotnet build Nop.Plugin.Misc.Sendinblue.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Misc.WebApi.Frontend
dotnet build Nop.Plugin.Misc.WebApi.Frontend.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Misc.Zettle
dotnet build Nop.Plugin.Misc.Zettle.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.MultiFactorAuth.GoogleAuthenticator
dotnet build Nop.Plugin.MultiFactorAuth.GoogleAuthenticator.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Payments.CheckMoneyOrder
dotnet build Nop.Plugin.Payments.CheckMoneyOrder.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Payments.CyberSource
dotnet build Nop.Plugin.Payments.CyberSource.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Payments.Manual
dotnet build Nop.Plugin.Payments.Manual.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Payments.PayPalCommerce
dotnet build Nop.Plugin.Payments.PayPalCommerce.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Pickup.PickupInStore
dotnet build Nop.Plugin.Pickup.PickupInStore.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Shipping.FixedByWeightByTotal
dotnet build Nop.Plugin.Shipping.FixedByWeightByTotal.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Shipping.UPS
dotnet build Nop.Plugin.Shipping.UPS.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Tax.Avalara
dotnet build Nop.Plugin.Tax.Avalara.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Tax.FixedOrByCountryStateZip
dotnet build Nop.Plugin.Tax.FixedOrByCountryStateZip.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Widgets.FacebookPixel
dotnet build Nop.Plugin.Widgets.FacebookPixel.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Widgets.GoogleAnalytics
dotnet build Nop.Plugin.Widgets.GoogleAnalytics.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Widgets.NivoSlider
dotnet build Nop.Plugin.Widgets.NivoSlider.csproj -c Release
cd $HOME_DIR/src/Plugins/Nop.Plugin.Widgets.What3words
dotnet build Nop.Plugin.Widgets.What3words.csproj -c Release

# publish project
cd $HOME_DIR/src/Presentation/Nop.Web   
dotnet publish Nop.Web.csproj -c Release -o "$HOME_DIR/published"