/*
 *  ISteamWorks.as
 *  This file is part of FRESteamWorks.
 *
 *  Created by Ventero <http://github.com/Ventero> on 2013-08-28
 *  Copyright (c) 2013 Level Up Labs, LLC. All rights reserved.
 */

package com.amanitadesign.steam {
	import flash.display.DisplayObjectContainer;
	import flash.events.IEventDispatcher;
	import flash.utils.ByteArray;

	public interface ISteamWorks extends IEventDispatcher {
		[Event(name="steamResponse", type="com.amanitadesign.steam.SteamEvent")]
		// different signature depending on OS
		//function init():Boolean;
		function dispose():void;

		function addOverlayWorkaround(container:DisplayObjectContainer,
			alwaysVisible:Boolean = false, color:uint = 0x000000):void;

		// the below list was automatically generated with generateAPI.rb

		// START GENERATED CODE
		/********************************/
		/* General Steamworks functions */
		/********************************/
		// manual implementation
		// public function init():Boolean

		function runCallbacks():Boolean
		function getUserID():String
		function getAppID():uint
		function getAvailableGameLanguages():String
		function getCurrentGameLanguage():String
		function getPersonaName():String
		function restartAppIfNecessary(appID:uint):Boolean
		/************************/
		/* Stats / Achievements */
		/************************/
		function requestStats():Boolean
		function setAchievement(name:String):Boolean
		function clearAchievement(name:String):Boolean
		function isAchievement(name:String):Boolean
		function indicateAchievementProgress(name:String, currentProgress:int, maxProgress:int):Boolean
		function getStatInt(name:String):int
		function getStatFloat(name:String):Number
		function setStatInt(name:String, value:int):Boolean
		function setStatFloat(name:String, value:Number):Boolean
		function storeStats():Boolean
		function resetAllStats(achievementsToo:Boolean):Boolean
		function requestGlobalStats(historyDays:int):Boolean
		function getGlobalStatInt(name:String):Number
		function getGlobalStatFloat(name:String):Number
		function getGlobalStatHistoryInt(name:String, days:int):Array
		function getGlobalStatHistoryFloat(name:String, days:int):Array
		/****************/
		/* Leaderboards */
		/****************/
		function findLeaderboard(name:String):Boolean
		function findOrCreateLeaderboard(name:String, sortMethod:uint, displayType:uint):Boolean
		function findLeaderboardResult():String
		function getLeaderboardName(handle:String):String
		function getLeaderboardEntryCount(handle:String):int
		function getLeaderboardSortMethod(handle:String):uint
		function getLeaderboardDisplayType(handle:String):uint
		function uploadLeaderboardScore(handle:String, method:uint, score:int, details:Array = null):Boolean
		function uploadLeaderboardScoreResult():UploadLeaderboardScoreResult
		function downloadLeaderboardEntries(handle:String, request:uint = UserStatsConstants.DATAREQUEST_GlobalAroundUser, rangeStart:int = -4, rangeEnd:int = 5):Boolean
		function downloadLeaderboardEntriesResult(numDetails:int = 0):Array
		/**************************/
		/* Cloud / Remote Storage */
		/**************************/
		function getFileCount():int
		function getFileSize(name:String):int
		function fileExists(name:String):Boolean
		function fileWrite(name:String, data:ByteArray):Boolean
		function fileRead(name:String, data:ByteArray):Boolean
		function fileDelete(name:String):Boolean
		function fileShare(name:String):Boolean
		function fileShareResult():String
		function isCloudEnabledForApp():Boolean
		function setCloudEnabledForApp(enabled:Boolean):Boolean
		function getQuota():Array
		/******************/
		/* UGC / Workshop */
		/******************/
		function createQueryUserUGCRequest(userId:String, listType:uint, matchingUGCType:uint, sortOrder:uint, creatorAppId:uint, consumerAppId:uint, page:uint):String
		function createQueryAllUGCRequest(queryType:uint, matchingUGCType:uint, creatorAppId:uint, consumerAppId:uint, page:uint):String
		function createQueryUGCDetailsRequest(publishedFileIds:Array):String
		function sendQueryUGCRequest(handle:String):Boolean
		function getQueryUGCResult():Array
		function createItem(consumerAppId:uint, fileType:uint):Boolean
		function createItemResult():String
		function startItemUpdate(consumerAppId:uint, fileId:String):String
		function setItemTitle(handle:String, title:String):Boolean
		function setItemDescription(handle:String, desc:String):Boolean
		function setItemUpdateLanguage(handle:String, lang:String):Boolean
		function setItemMetadata(handle:String, metadata:String):Boolean
		function setItemVisibility(handle:String, visibility:uint):Boolean
		function setItemTags(handle:String, tags:Array):Boolean
		function setItemContent(handle:String, contentFolder:String):Boolean
		function setItemPreview(handle:String, previewPath:String):Boolean
		function addItemKeyValueTag(handle:String, key:String, value:String):Boolean
		function removeItemKeyValueTags(handle:String, key:String):Boolean
		function submitItemUpdate(handle:String, changeNote:String):Boolean
		function subscribeItem(publishedFileId:String):Boolean
		function unsubscribeItem(publishedFileId:String):Boolean
		function getSubscribedItems():Array
		function getItemState(publishedFileId:String):uint
		function getItemInstallInfo(publishedFileId:String):UGCItemInstallInfo
		function getItemDownloadInfo(publishedFileId:String):Array
		function downloadItem(publishedFileId:String, highPriority:Boolean):Boolean
		/***********/
		/* Friends */
		/***********/
		function getFriendCount(flags:uint):int
		function getFriendByIndex(index:int, flags:uint):String
		function getFriendPersonaName(id:String):String
		/******************************/
		/* Authentication & Ownership */
		/******************************/
		function getAuthSessionTicket(ticket:ByteArray):uint
		function getAuthSessionTicketResult():uint
		function beginAuthSession(ticket:ByteArray, steamID:String):int
		function endAuthSession(steamID:String):Boolean
		function cancelAuthTicket(ticketHandle:uint):Boolean
		function userHasLicenseForApp(steamID:String, appID:uint):int
		/***********/
		/* Overlay */
		/***********/
		function activateGameOverlay(dialog:String):Boolean
		function activateGameOverlayToUser(dialog:String, steamId:String):Boolean
		function activateGameOverlayToWebPage(url:String):Boolean
		function activateGameOverlayToStore(appId:uint, flag:uint):Boolean
		function activateGameOverlayInviteDialog(steamIdLobby:String):Boolean
		function isOverlayEnabled():Boolean
		function setOverlayNotificationPosition(position:uint):Boolean
		/***********************/
		/* DLC / subscriptions */
		/***********************/
		function isSubscribedApp(appId:uint):Boolean
		function isDLCInstalled(appId:uint):Boolean
		function getDLCCount():int
		function installDLC(appId:uint):Boolean
		function uninstallDLC(appId:uint):Boolean
		function DLCInstalledResult():uint
		/********************/
		/* Microtransaction */
		/********************/
		function microTxnResult():MicroTxnAuthorizationResponse
		/**********************************/
		/* Other non-Steamworks functions */
		/**********************************/
		function getEnv(name:String):String
		function setEnv(name:String, value:String):Boolean
		// END GENERATED CODE
	}
}
