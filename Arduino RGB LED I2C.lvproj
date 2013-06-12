<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Arduino RGB LED I2C.vi" Type="VI" URL="../Arduino RGB LED I2C.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LabVIEW Interface for Arduino.lvlib" Type="Library" URL="/&lt;vilib&gt;/LabVIEW Interface for Arduino/LabVIEW Interface for Arduino.lvlib"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
			</Item>
			<Item Name="RGB to Color I2C.vi" Type="VI" URL="../RGB to Color I2C.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Arduino RGB LED I2C" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{AC065C92-CEBB-4847-A8CA-F3305AB3A9C2}</Property>
				<Property Name="App_INI_GUID" Type="Str">{AE74E321-C173-488D-A12B-E336DC172687}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.FDA.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{9B7784AD-8B43-426D-A93B-26A6674B880A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Arduino RGB LED I2C</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Arduino RGB LED I2C</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{E4DC8FCE-AD51-4AB3-B0E7-BD912EF88139}</Property>
				<Property Name="Destination[0].destName" Type="Str">Application.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Arduino RGB LED I2C/Application.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Arduino RGB LED I2C/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{16679B9B-914A-4A3B-B311-CF3D86A4732B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Arduino RGB LED I2C.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">FDA</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Arduino RGB LED I2C</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Arduino RGB LED I2C</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013 FDA</Property>
				<Property Name="TgtF_productName" Type="Str">Arduino RGB LED I2C</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{E15506F3-B685-4D33-A473-750E2DC4B4A4}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Application.exe</Property>
			</Item>
			<Item Name="MBS Projector Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Arduino RGB LED I2C</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{F7178007-F561-4DD7-9F9E-153321617670}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{01C0F5DE-BF22-43B9-B7D9-7915B32F71F1}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Run-Time Engine 2012 f3</Property>
				<Property Name="DistPart[0].SoftDep[0].dependencyKey" Type="Str">SIBAAA.E71C7C3E_CA74_44BD_B618_6B1410ACAEE7</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI LabVIEW 2012 Run-Time Engine Non-English Support.</Property>
				<Property Name="DistPart[0].SoftDep[1].dependencyKey" Type="Str">UIBAAA.E71C7C3E_CA74_44BD_B618_6B1410ACAEE7</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI System Web Server 12.0</Property>
				<Property Name="DistPart[0].SoftDep[2].dependencyKey" Type="Str">WIBAAA.E71C7C3E_CA74_44BD_B618_6B1410ACAEE7</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI Logos 5.4</Property>
				<Property Name="DistPart[0].SoftDep[3].dependencyKey" Type="Str">XIBAAA.E71C7C3E_CA74_44BD_B618_6B1410ACAEE7</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">NI TDM Streaming 2.4</Property>
				<Property Name="DistPart[0].SoftDep[4].dependencyKey" Type="Str">YIBAAA.E71C7C3E_CA74_44BD_B618_6B1410ACAEE7</Property>
				<Property Name="DistPart[0].SoftDep[4].productName" Type="Str">NI LabVIEW 2012 Web Server</Property>
				<Property Name="DistPart[0].SoftDep[5].dependencyKey" Type="Str">ZIBAAA.E71C7C3E_CA74_44BD_B618_6B1410ACAEE7</Property>
				<Property Name="DistPart[0].SoftDep[5].productName" Type="Str">NI LabVIEW 2012 Real-Time NBFifo</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">6</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{20385C41-50B1-4416-AC2A-F7D6423A9BD6}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_author" Type="Str">FDA</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Arduino RGB LED I2C/MBS Projector Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">MBS Projector Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{F7178007-F561-4DD7-9F9E-153321617670}</Property>
				<Property Name="INST_productName" Type="Str">Arduino RGB LED I2C</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.2</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">12008029</Property>
				<Property Name="MSI_arpCompany" Type="Str">FDA</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.fda.com/</Property>
				<Property Name="MSI_distID" Type="Str">{71BF1BC2-FC83-4559-8D7A-1035D834039F}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{5A10AD65-074A-46E0-9282-D94834C87B62}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{F7178007-F561-4DD7-9F9E-153321617670}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{F7178007-F561-4DD7-9F9E-153321617670}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">ArduinoRGB.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">ArduinoRGB</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Arduino RGB LED I2C</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{19804317-595F-48CE-A33A-5CA940448B0B}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">MBS Projector Selection</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/MBS Projector Selection</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
			<Item Name="MBS Projector Selection" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{AC5C5658-4234-4B63-AE98-9D7A4B798501}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E9B487AE-031B-472B-AA28-49D1BA321FAF}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.FDA.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{43EA14D2-5C17-476B-8739-AF73EB0ECC7B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">MBS Projector Selection</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/MBS Projector Selection</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F45B8412-F0AC-4ED7-B2F9-512C628C7DFB}</Property>
				<Property Name="Destination[0].destName" Type="Str">ArduinoRGB.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/MBS Projector Selection/ArduinoRGB.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/MBS Projector Selection/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{80A4604F-F0BB-4814-B74D-4A08B5ECC25F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Arduino RGB LED I2C.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">FDA</Property>
				<Property Name="TgtF_fileDescription" Type="Str">MBS Projector Selection</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">MBS Projector Selection</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013 FDA</Property>
				<Property Name="TgtF_productName" Type="Str">MBS Projector Selection</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{19804317-595F-48CE-A33A-5CA940448B0B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">ArduinoRGB.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
