package com.amanitadesign.steam {
	public class UGCConstants {
		public static const LISTTYPE_Published:int = 0;
		public static const LISTTYPE_VotedOn:int = 1;
		public static const LISTTYPE_VotedUp:int = 2;
		public static const LISTTYPE_VotedDown:int = 3;
		public static const LISTTYPE_WillVoteLater:int = 4;
		public static const LISTTYPE_Favorited:int = 5;
		public static const LISTTYPE_Subscribed:int = 6;
		public static const LISTTYPE_UsedOrPlayed:int = 7;
		public static const LISTTYPE_Followed:int = 8;

		public static const MATCHINGTYPE_Items:int = 0;
		public static const MATCHINGTYPE_Items_Mtx:int = 1;
		public static const MATCHINGTYPE_Items_ReadyToUse:int = 2;
		public static const MATCHINGTYPE_Collections:int = 3;
		public static const MATCHINGTYPE_Artwork:int = 4;
		public static const MATCHINGTYPE_Videos:int = 5;
		public static const MATCHINGTYPE_Screenshots:int = 6;
		public static const MATCHINGTYPE_AllGuides:int = 7;
		public static const MATCHINGTYPE_WebGuides:int = 8;
		public static const MATCHINGTYPE_IntegratedGuides:int = 9;
		public static const MATCHINGTYPE_UsableInGame:int = 10;
		public static const MATCHINGTYPE_ControllerBindings:int = 11;
		public static const MATCHINGTYPE_GameManagedItems:int = 12;
		
		public static const SORTORDER_CreationOrderDesc:int = 0;
		public static const SORTORDER_CreationOrderAsc:int = 1;
		public static const SORTORDER_TitleAsc:int = 2;
		public static const SORTORDER_LastUpdatedDesc:int = 3;
		public static const SORTORDER_SubscriptionDateDesc:int = 4;
		public static const SORTORDER_VoteScoreDesc:int = 5;
		public static const SORTORDER_ForModeration:int = 6;
		
		public static const QUERYTYPE_RankedByVote:int = 0;
		public static const QUERYTYPE_RankedByPublicationDate:int = 1;
		public static const QUERYTYPE_AcceptedForGameRankedByAcceptanceDate:int = 2;
		public static const QUERYTYPE_RankedByTrend:int = 3;
		public static const QUERYTYPE_FavoritedByFriendsRankedByPublicationDate:int = 4;
		public static const QUERYTYPE_CreatedByFriendsRankedByPublicationDate:int = 5;
		public static const QUERYTYPE_RankedByNumTimesReported:int = 6;
		public static const QUERYTYPE_CreatedByFollowedUsersRankedByPublicationDate:int = 7;
		public static const QUERYTYPE_NotYetRated:int = 8;
		public static const QUERYTYPE_RankedByTotalVotesAsc:int = 9;
		public static const QUERYTYPE_RankedByVotesUp:int = 10;
		public static const QUERYTYPE_RankedByTextSearch:int = 11;
		public static const QUERYTYPE_RankedByTotalUniqueSubscriptions:int = 12;
		
		public static const ITEMSTATE_None:int = 0;
		public static const ITEMSTATE_Subscribed:int = 1;
		public static const ITEMSTATE_LegacyItem:int = 2;
		public static const ITEMSTATE_Installed:int = 4;
		public static const ITEMSTATE_NeedsUpdate:int = 8;
		public static const ITEMSTATE_Downloading:int = 16;
		public static const ITEMSTATE_DownloadPending:int = 32;
	}
}