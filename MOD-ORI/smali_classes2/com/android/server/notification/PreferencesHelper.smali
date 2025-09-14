.class public final Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# static fields
.field static final DEFAULT_BUBBLE_PREFERENCE:I = 0x0

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false

.field static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0x1388

.field static final NOTIFICATION_CHANNEL_GROUP_COUNT_LIMIT:I = 0x1770

.field public static final PREF_GRACE_PERIOD_MS:J

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field static final UNKNOWN_UID:I = -0x2710


# instance fields
.field public final XML_VERSION:I

.field public final mAllowList:Ljava/util/HashSet;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field public final mBlockList:Ljava/util/List;

.field public mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mCscConfigNoneBlockableList:Ljava/util/List;

.field public mCurrentUserHasChannelsBypassingDnd:Z

.field public final mDeviceFirstApiLevel:I

.field public mHideContentXmlVersion:I

.field public mHideSilentStatusBarIcons:Z

.field public mIsMediaNotificationFilteringEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public mLockScreenPrivateNotificationsValue:I

.field public mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

.field public final mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field public final mOemLockedApps:Ljava/util/Map;

.field public final mOngoingActivityAllowedAppList:Ljava/util/List;

.field public final mPackagePreferences:Landroid/util/ArrayMap;

.field public final mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field public final mRestoredWithoutUids:Landroid/util/ArrayMap;

.field public final mShowReviewPermissionsNotification:Z

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/server/notification/PreferencesHelper;->PREF_GRACE_PERIOD_MS:J

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Landroid/permission/PermissionManager;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;ZLjava/time/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    .line 34
    .line 35
    const/16 v1, -0x3e8

    .line 36
    .line 37
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    .line 38
    .line 39
    new-instance v1, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    .line 45
    .line 46
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    .line 47
    .line 48
    const-string/jumbo v1, "ro.product.first_api_level"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->mDeviceFirstApiLevel:I

    .line 56
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Ljava/util/List;

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBlockList:Ljava/util/List;

    .line 70
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 81
    .line 82
    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 83
    .line 84
    iput-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 85
    .line 86
    iput-object p6, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 87
    .line 88
    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    iput-object p7, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 91
    .line 92
    iput-object p8, p0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 93
    .line 94
    iput-boolean p9, p0, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const p2, 0x1110207

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 108
    .line 109
    iput-object p10, p0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    .line 110
    .line 111
    const/4 p1, 0x4

    .line 112
    iput p1, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public static dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/util/Pair;

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/util/Pair;

    .line 38
    .line 39
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_0

    .line 48
    .line 49
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    new-instance v3, Lorg/json/JSONObject;

    .line 108
    .line 109
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .line 111
    .line 112
    :try_start_0
    const-string/jumbo v4, "userId"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string/jumbo v2, "packageName"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    return-object v0
.end method

.method public static dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 107
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    const-wide v10, 0x10500000002L

    const-wide v12, 0x10900000001L

    if-ge v6, v4, :cond_6

    move-object/from16 v14, p4

    .line 108
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 109
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 110
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 111
    iget-object v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 112
    iget v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 113
    new-instance v9, Landroid/util/Pair;

    iget v10, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    .line 114
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 115
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v5, 0x3

    :goto_2
    const-wide v10, 0x11100000003L

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 116
    :goto_3
    invoke-virtual {v0, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 117
    invoke-interface {v3, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-wide v9, 0x10500000004L

    .line 118
    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x11100000005L

    .line 119
    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10800000006L

    .line 120
    iget-boolean v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 121
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    const-wide v10, 0x20b00000007L

    .line 122
    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_4

    .line 123
    :cond_3
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    const-wide v10, 0x20b00000008L

    .line 124
    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannelGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_5

    .line 125
    :cond_4
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v3, :cond_9

    .line 126
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 127
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 128
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 129
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 130
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 131
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    :goto_7
    const-wide v8, 0x11100000003L

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 132
    :goto_8
    invoke-virtual {v0, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 133
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_6

    :cond_8
    const-wide v8, 0x11100000003L

    goto :goto_6

    :cond_9
    return-void
.end method

.method public static getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 2
    .line 3
    const/16 v1, 0x358

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x359

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/16 v0, 0x35a

    .line 36
    .line 37
    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/app/NotificationChannel;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 31
    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    :goto_1
    return p0
.end method

.method public static lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eq v0, v1, :cond_4

    .line 62
    .line 63
    :cond_3
    const/16 v0, 0x8

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    const/16 v0, 0x20

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eq v0, v1, :cond_7

    .line 124
    .line 125
    :cond_6
    const/16 v0, 0x10

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eq v0, v1, :cond_8

    .line 139
    .line 140
    const/16 v0, 0x80

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 143
    .line 144
    .line 145
    :cond_8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eq p0, v0, :cond_9

    .line 154
    .line 155
    const/16 p0, 0x100

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 158
    .line 159
    .line 160
    :cond_9
    return-void
.end method

.method public static packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "|"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "|"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method


# virtual methods
.method public final bubblesEnabled(Landroid/os/UserHandle;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-gez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string/jumbo v4, "notification_bubbles"

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-ne v3, v2, :cond_1

    .line 35
    .line 36
    move v1, v2

    .line 37
    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(ILjava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p1, 0x0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_2
    :goto_0
    return p1
.end method

.method public final createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 10
    .line 11
    const-string/jumbo v1, "miscellaneous"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const v3, 0x104044b

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/NotificationChannel;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 42
    .line 43
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v5, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 56
    .line 57
    const/16 v4, 0x1a

    .line 58
    .line 59
    if-lt v0, v4, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    new-instance v0, Landroid/app/NotificationChannel;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 71
    .line 72
    invoke-direct {v0, v1, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 73
    .line 74
    .line 75
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 76
    .line 77
    const/4 v1, 0x2

    .line 78
    const/4 v3, 0x1

    .line 79
    if-ne p0, v1, :cond_3

    .line 80
    .line 81
    move v2, v3

    .line 82
    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 83
    .line 84
    .line 85
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 91
    .line 92
    const/16 v2, -0x3e8

    .line 93
    .line 94
    if-eq p0, v2, :cond_4

    .line 95
    .line 96
    const/4 p0, 0x4

    .line 97
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 101
    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 108
    .line 109
    if-eq p0, v2, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    return v3
.end method

.method public final createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    const-string v1, "NotificationChannelGroup doesn\'t exist : pkg="

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v11, 0x1

    .line 30
    xor-int/2addr v2, v11

    .line 31
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v12, 0x0

    .line 39
    if-ltz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x5

    .line 46
    if-gt v2, v3, :cond_0

    .line 47
    .line 48
    move v2, v11

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v2, v12

    .line 51
    :goto_0
    const-string v3, "Invalid importance level"

    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v9, v8}, Lcom/android/server/notification/PreferencesHelper;->hasNotificationChannelsBypassingDnd(ILjava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iget-object v13, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v13

    .line 63
    :try_start_0
    invoke-virtual {v0, v9, v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 74
    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", channel group="

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto/16 :goto_e

    .line 118
    .line 119
    :cond_2
    :goto_1
    const-string/jumbo v1, "miscellaneous"

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_21

    .line 131
    .line 132
    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move-object v14, v1

    .line 143
    check-cast v14, Landroid/app/NotificationChannel;

    .line 144
    .line 145
    const/16 v15, -0x3e8

    .line 146
    .line 147
    if-eqz v14, :cond_10

    .line 148
    .line 149
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    invoke-virtual {v14, v12}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 156
    .line 157
    .line 158
    const-wide/16 v1, -0x1

    .line 159
    .line 160
    invoke-virtual {v14, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 161
    .line 162
    .line 163
    invoke-static {v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v11}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 180
    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_3

    .line 186
    .line 187
    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_3
    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 191
    .line 192
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-static {v10, v3}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    check-cast v1, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    move-object/from16 v3, p3

    .line 204
    .line 205
    move/from16 v4, p2

    .line 206
    .line 207
    move-object/from16 v5, p1

    .line 208
    .line 209
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    .line 210
    .line 211
    .line 212
    move v1, v11

    .line 213
    :goto_3
    move v2, v1

    .line 214
    goto :goto_4

    .line 215
    :cond_4
    move v1, v12

    .line 216
    goto :goto_3

    .line 217
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-nez v3, :cond_5

    .line 238
    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    move v2, v11

    .line 251
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_6

    .line 264
    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    move v2, v11

    .line 273
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->isBlockable()Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-eq v3, v4, :cond_7

    .line 282
    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 288
    .line 289
    .line 290
    move v2, v11

    .line 291
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-eqz v3, :cond_8

    .line 296
    .line 297
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    if-nez v3, :cond_8

    .line 302
    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    move v2, v11

    .line 311
    :cond_8
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getImportance()I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getImportance()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    invoke-static {v14, v4}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-nez v4, :cond_9

    .line 328
    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getImportance()I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-ge v4, v6, :cond_9

    .line 338
    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 344
    .line 345
    .line 346
    move v2, v11

    .line 347
    :cond_9
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-nez v4, :cond_d

    .line 352
    .line 353
    if-eqz p4, :cond_d

    .line 354
    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-ne v4, v6, :cond_a

    .line 364
    .line 365
    if-eqz v1, :cond_d

    .line 366
    .line 367
    :cond_a
    invoke-virtual {v14, v4}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 368
    .line 369
    .line 370
    iget-boolean v2, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 371
    .line 372
    if-ne v4, v2, :cond_c

    .line 373
    .line 374
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getImportance()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eq v3, v2, :cond_b

    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_b
    move v2, v11

    .line 382
    goto :goto_6

    .line 383
    :cond_c
    :goto_5
    move v2, v11

    .line 384
    move v12, v2

    .line 385
    :cond_d
    :goto_6
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-ne v3, v15, :cond_e

    .line 390
    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_e
    move v11, v2

    .line 400
    :goto_7
    if-eqz v11, :cond_f

    .line 401
    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 403
    .line 404
    .line 405
    :cond_f
    if-eqz v11, :cond_1e

    .line 406
    .line 407
    if-nez v1, :cond_1e

    .line 408
    .line 409
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 410
    .line 411
    const/4 v6, 0x0

    .line 412
    move-object v2, v14

    .line 413
    move/from16 v3, p2

    .line 414
    .line 415
    move-object/from16 v4, p1

    .line 416
    .line 417
    invoke-interface/range {v1 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_d

    .line 421
    .line 422
    :cond_10
    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 423
    .line 424
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    const/16 v4, 0x1388

    .line 429
    .line 430
    if-ge v1, v4, :cond_20

    .line 431
    .line 432
    iget-boolean v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 433
    .line 434
    if-nez v1, :cond_11

    .line 435
    .line 436
    invoke-virtual {v0, v3}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEMwithPackagePreferences(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)V

    .line 437
    .line 438
    .line 439
    :cond_11
    if-nez p4, :cond_13

    .line 440
    .line 441
    iget v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 442
    .line 443
    const/4 v4, 0x2

    .line 444
    if-ne v1, v4, :cond_12

    .line 445
    .line 446
    move v1, v11

    .line 447
    goto :goto_8

    .line 448
    :cond_12
    move v1, v12

    .line 449
    :goto_8
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 450
    .line 451
    .line 452
    :cond_13
    if-eqz v2, :cond_14

    .line 453
    .line 454
    invoke-virtual {v10, v11}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 455
    .line 456
    .line 457
    :cond_14
    iget v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 458
    .line 459
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 460
    .line 461
    .line 462
    if-eqz v14, :cond_15

    .line 463
    .line 464
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    goto :goto_9

    .line 469
    :cond_15
    const/4 v1, -0x1

    .line 470
    :goto_9
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v10, v12}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 481
    .line 482
    .line 483
    iget-boolean v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 484
    .line 485
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 486
    .line 487
    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-nez v1, :cond_16

    .line 493
    .line 494
    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    .line 495
    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    check-cast v1, Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-eqz v1, :cond_16

    .line 507
    .line 508
    invoke-virtual {v10, v11}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 509
    .line 510
    .line 511
    :cond_16
    iget-boolean v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 512
    .line 513
    if-nez v1, :cond_18

    .line 514
    .line 515
    iget-boolean v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 516
    .line 517
    if-eqz v1, :cond_17

    .line 518
    .line 519
    goto :goto_a

    .line 520
    :cond_17
    move v1, v12

    .line 521
    goto :goto_b

    .line 522
    :cond_18
    :goto_a
    move v1, v11

    .line 523
    :goto_b
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 524
    .line 525
    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-ne v1, v11, :cond_19

    .line 531
    .line 532
    invoke-virtual {v10, v15}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 533
    .line 534
    .line 535
    :cond_19
    iget-boolean v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 536
    .line 537
    if-nez v1, :cond_1a

    .line 538
    .line 539
    invoke-virtual {v10, v12}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 540
    .line 541
    .line 542
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    if-eqz v1, :cond_1b

    .line 554
    .line 555
    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 556
    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    const-string v2, "Tried to create a conversation channel without a preexisting parent"

    .line 566
    .line 567
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    :cond_1b
    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 571
    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-virtual {v1, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    iget-boolean v2, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 584
    .line 585
    if-eq v1, v2, :cond_1c

    .line 586
    .line 587
    move v12, v11

    .line 588
    :cond_1c
    invoke-static {v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-virtual {v1, v11}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 597
    .line 598
    .line 599
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 600
    .line 601
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 605
    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    if-eqz v2, :cond_1d

    .line 611
    .line 612
    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 613
    .line 614
    goto :goto_c

    .line 615
    :cond_1d
    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 616
    .line 617
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    invoke-static {v10, v3}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 622
    .line 623
    .line 624
    move-result v7

    .line 625
    check-cast v1, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    .line 626
    .line 627
    const/4 v6, 0x0

    .line 628
    move-object/from16 v3, p3

    .line 629
    .line 630
    move/from16 v4, p2

    .line 631
    .line 632
    move-object/from16 v5, p1

    .line 633
    .line 634
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    .line 635
    .line 636
    .line 637
    :cond_1e
    :goto_d
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    if-eqz v12, :cond_1f

    .line 639
    .line 640
    move/from16 v1, p5

    .line 641
    .line 642
    move/from16 v2, p6

    .line 643
    .line 644
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasChannelsBypassingDnd(IZ)V

    .line 645
    .line 646
    .line 647
    :cond_1f
    return v11

    .line 648
    :cond_20
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 649
    .line 650
    const-string v1, "Limit exceed; cannot create more channels"

    .line 651
    .line 652
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    throw v0

    .line 656
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 657
    .line 658
    const-string v1, "Reserved id"

    .line 659
    .line 660
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    throw v0

    .line 664
    :goto_e
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    throw v0
.end method

.method public final deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 2
    .line 3
    const-string/jumbo v1, "miscellaneous"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v3, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 29
    .line 30
    const/16 v0, 0x1a

    .line 31
    .line 32
    if-lt p0, v0, :cond_1

    .line 33
    .line 34
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/app/NotificationChannel;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 44
    .line 45
    .line 46
    return p1

    .line 47
    :cond_1
    return v2
.end method

.method public final deleteNotificationChannelLocked(Ljava/lang/String;ILandroid/app/NotificationChannel;)Z
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {p3, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 43
    .line 44
    :goto_0
    move-object v3, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {p3, v1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v2, p0

    .line 59
    check-cast v2, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    .line 60
    .line 61
    move-object v4, p3

    .line 62
    move v5, p2

    .line 63
    move-object v6, p1

    .line 64
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :cond_1
    const/4 p0, 0x0

    .line 69
    return p0
.end method

.method public didUserEverDemoteInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 2

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    const-string/jumbo v1, "per-package config version: "

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "PackagePreferences:"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 33
    .line 34
    .line 35
    const-string p3, "Restored without uid:"

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ge v4, v5, :cond_2

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 31
    .line 32
    move v6, v3

    .line 33
    move v7, v6

    .line 34
    :goto_1
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-ge v6, v8, :cond_1

    .line 41
    .line 42
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Landroid/app/NotificationChannel;

    .line 49
    .line 50
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_0

    .line 55
    .line 56
    add-int/lit8 v7, v7, 0x1

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :cond_1
    iget-object v5, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    new-instance v3, Lorg/json/JSONObject;

    .line 109
    .line 110
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .line 112
    .line 113
    :try_start_1
    const-string/jumbo v4, "packageName"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    const-string v2, "channelCount"

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :catch_0
    move-exception v1

    .line 130
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :goto_3
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    return-object v0

    .line 138
    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw p0
.end method

.method public final dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;
    .locals 13

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    const-string/jumbo v3, "noUid"

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v3

    .line 42
    :try_start_2
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x0

    .line 49
    move v6, v5

    .line 50
    :goto_2
    const/4 v7, 0x3

    .line 51
    if-ge v6, v4, :cond_9

    .line 52
    .line 53
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 60
    .line 61
    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v9}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_8

    .line 68
    .line 69
    new-instance v9, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_3
    const-string/jumbo v10, "userId"

    .line 75
    .line 76
    .line 77
    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 78
    .line 79
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v10, "packageName"

    .line 87
    .line 88
    .line 89
    iget-object v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    new-instance v10, Landroid/util/Pair;

    .line 95
    .line 96
    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 97
    .line 98
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    iget-object v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    if-eqz p2, :cond_2

    .line 108
    .line 109
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_2

    .line 114
    .line 115
    const-string v11, "importance"

    .line 116
    .line 117
    invoke-virtual {p2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    check-cast v12, Landroid/util/Pair;

    .line 122
    .line 123
    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v12, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-eqz v12, :cond_1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_1
    move v7, v5

    .line 135
    :goto_3
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v9, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :cond_2
    :goto_4
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 150
    .line 151
    if-eqz v7, :cond_3

    .line 152
    .line 153
    const-string/jumbo v10, "priority"

    .line 154
    .line 155
    .line 156
    invoke-static {v7}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    :cond_3
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 164
    .line 165
    const/16 v10, -0x3e8

    .line 166
    .line 167
    if-eq v7, v10, :cond_4

    .line 168
    .line 169
    const-string/jumbo v10, "visibility"

    .line 170
    .line 171
    .line 172
    invoke-static {v7}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    :cond_4
    iget-boolean v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 180
    .line 181
    const/4 v10, 0x1

    .line 182
    if-eq v7, v10, :cond_5

    .line 183
    .line 184
    const-string/jumbo v10, "showBadge"

    .line 185
    .line 186
    .line 187
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    :cond_5
    new-instance v7, Lorg/json/JSONArray;

    .line 195
    .line 196
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v10, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 200
    .line 201
    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_6

    .line 214
    .line 215
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    check-cast v11, Landroid/app/NotificationChannel;

    .line 220
    .line 221
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_6
    const-string v10, "channels"

    .line 230
    .line 231
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    new-instance v7, Lorg/json/JSONArray;

    .line 235
    .line 236
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 237
    .line 238
    .line 239
    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 240
    .line 241
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-eqz v10, :cond_7

    .line 254
    .line 255
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 260
    .line 261
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_7
    const-string v8, "groups"

    .line 270
    .line 271
    invoke-virtual {v9, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    .line 273
    .line 274
    :catch_1
    :try_start_4
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 275
    .line 276
    .line 277
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_9
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    if-eqz v2, :cond_c

    .line 283
    .line 284
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    :cond_a
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_c

    .line 293
    .line 294
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Landroid/util/Pair;

    .line 299
    .line 300
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v3, Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eqz v3, :cond_a

    .line 309
    .line 310
    new-instance v3, Lorg/json/JSONObject;

    .line 311
    .line 312
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .line 314
    .line 315
    :try_start_5
    const-string/jumbo v4, "userId"

    .line 316
    .line 317
    .line 318
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v6, Ljava/lang/Integer;

    .line 321
    .line 322
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    .line 332
    .line 333
    const-string/jumbo v4, "packageName"

    .line 334
    .line 335
    .line 336
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 337
    .line 338
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    const-string v4, "importance"

    .line 342
    .line 343
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Landroid/util/Pair;

    .line 348
    .line 349
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v2, Ljava/lang/Boolean;

    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_b

    .line 358
    .line 359
    move v2, v7

    .line 360
    goto :goto_8

    .line 361
    :cond_b
    move v2, v5

    .line 362
    :goto_8
    invoke-static {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 367
    .line 368
    .line 369
    :catch_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 370
    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_c
    :try_start_6
    const-string p0, "PackagePreferencess"

    .line 374
    .line 375
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 376
    .line 377
    .line 378
    :catch_3
    return-object v0

    .line 379
    :goto_9
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 380
    throw p0

    .line 381
    :goto_a
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 382
    throw p0
.end method

.method public final dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz v3, :cond_0

    .line 1
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    .line 3
    :goto_1
    const-string v8, "    "

    const-string v9, " userSet="

    const-string v11, " importance="

    const-string v13, "UNKNOWN_UID"

    const-string v15, " ("

    const-string v10, "  AppSettings: "

    if-ge v7, v5, :cond_1a

    move-object/from16 v6, p3

    .line 4
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 6
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-object v10, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget v10, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v14, -0x2710

    if-ne v10, v14, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v10, 0x29

    .line 11
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 12
    new-instance v10, Landroid/util/Pair;

    iget v13, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v10, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x1

    if-eqz v3, :cond_7

    .line 13
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 14
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v16, 0x3

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 16
    :goto_3
    invoke-static/range {v16 .. v16}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 20
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 21
    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v14, v9}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 22
    const-string v11, " permission [pre-grant=true"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v11, v14, v15, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 24
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/2addr v11, v13

    if-eqz v11, :cond_3

    move v11, v13

    goto :goto_4

    :cond_3
    move v11, v15

    .line 25
    :goto_4
    :try_start_2
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v9
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_0
    :goto_5
    move v11, v15

    goto :goto_6

    :catch_1
    const/4 v15, 0x0

    goto :goto_5

    .line 26
    :catch_2
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "NameNotFoundException pkg "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const-string v15, "NotificationPrefHelper"

    .line 27
    invoke-static {v9, v14, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_7
    if-eqz v11, :cond_4

    .line 28
    const-string v11, " isPreload=true"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-eqz v9, :cond_5

    .line 29
    const-string v9, " isSigned=true"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    :cond_5
    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    :cond_6
    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 32
    :cond_7
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v9, :cond_8

    .line 33
    const-string v9, " priority="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    :cond_8
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v10, -0x3e8

    if-eq v9, v10, :cond_9

    .line 36
    const-string v9, " visibility="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v9}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    :cond_9
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-eq v9, v13, :cond_a

    .line 39
    const-string v9, " showBadge="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 41
    :cond_a
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v9, :cond_b

    .line 42
    const-string v9, " oemLocked="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 44
    :cond_b
    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 45
    const-string v9, " futureLockedChannels="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 47
    :cond_c
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v9, :cond_d

    .line 48
    const-string v9, " defaultAppLocked="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 50
    :cond_d
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v9, :cond_e

    .line 51
    const-string v9, " fixedImportance="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 53
    :cond_e
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    if-eq v9, v13, :cond_f

    .line 54
    const-string v9, " allowEdgeLighting="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 56
    :cond_f
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    if-eqz v9, :cond_10

    .line 57
    const-string v9, " allowSubDisplayNoti="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 59
    :cond_10
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    const/4 v11, -0x1

    if-le v9, v11, :cond_11

    .line 60
    const-string v9, " allowOngoingActivity="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 62
    :cond_11
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    if-eq v9, v13, :cond_12

    .line 63
    const-string v9, " isNotificationAlertsEnabled="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 65
    :cond_12
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    if-eq v9, v11, :cond_13

    .line 66
    const-string v9, " muteByWearable="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 68
    :cond_13
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    if-eq v9, v10, :cond_14

    .line 69
    const-string v9, " appLockScreenVisibility="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 71
    :cond_14
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    if-eq v9, v13, :cond_15

    .line 72
    const-string v9, " isAllowPopup="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 74
    :cond_15
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz v9, :cond_16

    .line 75
    const-string v9, " bubblePreference="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 77
    :cond_16
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    if-eqz v9, :cond_17

    .line 78
    const-string v9, " reminder="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 80
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 81
    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    .line 82
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-boolean v11, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v10, v1, v8, v11}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_8

    .line 84
    :cond_18
    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 85
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    const-string v11, "  "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_9

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_1a
    const/4 v7, 0x0

    if-eqz v4, :cond_1e

    .line 89
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 90
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 91
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, -0x2710

    if-ne v5, v6, :cond_1b

    move-object v5, v13

    goto :goto_b

    :cond_1b
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_b
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x29

    .line 96
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 97
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1c

    const/4 v12, 0x3

    goto :goto_c

    :cond_1c
    move v12, v7

    .line 99
    :goto_c
    invoke-static {v12}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 102
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    :cond_1d
    const/16 v5, 0x29

    const/16 v6, -0x2710

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public final getAppsBypassingDndCount(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v2, v1, :cond_3

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 21
    .line 22
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 23
    .line 24
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ne p1, v5, :cond_2

    .line 29
    .line 30
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroid/app/NotificationChannel;

    .line 56
    .line 57
    invoke-virtual {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    monitor-exit v0

    .line 78
    return v3

    .line 79
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    const-string/jumbo p3, "miscellaneous"

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 20
    if-eqz p4, :cond_3

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/app/NotificationChannel;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    if-nez p6, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    :cond_2
    move-object p1, v1

    .line 73
    :cond_3
    if-nez p1, :cond_5

    .line 74
    .line 75
    if-eqz p5, :cond_5

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Landroid/app/NotificationChannel;

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    if-nez p6, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    :cond_4
    monitor-exit v0

    .line 96
    return-object p0

    .line 97
    :cond_5
    monitor-exit v0

    .line 98
    return-object p1

    .line 99
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0
.end method

.method public getFsiState(Ljava/lang/String;IZ)I
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    new-instance p3, Landroid/content/AttributionSource$Builder;

    .line 6
    .line 7
    invoke-direct {p3, p2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p1}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 19
    .line 20
    const-string p2, "android.permission.USE_FULL_SCREEN_INTENT"

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Landroid/permission/PermissionManager;->checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    const/4 p0, 0x2

    .line 31
    return p0
.end method

.method public final getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/16 p0, -0x3e8

    .line 18
    .line 19
    return p0

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final getNotificationChannelGroup(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 1

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/NotificationChannelGroup;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getNotificationChannelGroupWithChannels(ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_4

    .line 12
    .line 13
    if-eqz p3, :cond_4

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-ge v1, p2, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/app/NotificationChannel;

    .line 60
    .line 61
    if-nez p4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_3

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    monitor-exit v0

    .line 89
    return-object p1

    .line 90
    :cond_4
    :goto_2
    monitor-exit v0

    .line 91
    const/4 p0, 0x0

    .line 92
    return-object p0

    .line 93
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public final getNotificationChannelGroups(ILjava/lang/String;Ljava/util/Set;ZZZ)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v1

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    new-instance p1, Landroid/app/NotificationChannelGroup;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-direct {p1, p2, p2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_0
    if-ge v3, v2, :cond_6

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/app/NotificationChannel;

    .line 49
    .line 50
    if-nez p4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_5

    .line 57
    .line 58
    :cond_1
    if-eqz p3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    move-object v6, p3

    .line 71
    check-cast v6, Ljava/util/HashSet;

    .line 72
    .line 73
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    :cond_2
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 106
    .line 107
    if-nez v5, :cond_3

    .line 108
    .line 109
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 120
    .line 121
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    new-instance v6, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p1, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    if-eqz p5, :cond_7

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-lez p3, :cond_7

    .line 161
    .line 162
    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_7
    if-eqz p6, :cond_9

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 168
    .line 169
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    :cond_8
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_8

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_9
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 208
    .line 209
    new-instance p1, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 219
    .line 220
    .line 221
    monitor-exit v1

    .line 222
    return-object p0

    .line 223
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    throw p0
.end method

.method public final getNotificationChannels(ILjava/lang/String;Z)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v1

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x0

    .line 33
    :goto_0
    if-ge p2, p1, :cond_3

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/app/NotificationChannel;

    .line 42
    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    monitor-exit v1

    .line 63
    return-object p0

    .line 64
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final getOngoingActivityAllowedState(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 14

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    .line 2
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p2

    move v3, p1

    .line 3
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIJZZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method public final getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIJZZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v0, p3

    .line 4
    invoke-static {p3, p1}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x2710

    if-ne v0, v5, :cond_0

    .line 5
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_0
    if-nez v6, :cond_5

    .line 7
    new-instance v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 8
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v5, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v7, -0x3e8

    .line 10
    iput v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/4 v8, 0x0

    .line 11
    iput v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 12
    iput v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/4 v9, 0x1

    .line 13
    iput-boolean v9, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 14
    iput v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 15
    iput v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 16
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 17
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 18
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 19
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    .line 20
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 21
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 22
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 23
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 24
    iput-boolean v9, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    .line 25
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    const/4 v10, -0x1

    .line 26
    iput v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    .line 27
    iput-boolean v9, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    .line 28
    iput v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    .line 29
    iput v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 30
    iput-boolean v9, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 31
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 32
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    const/4 v10, 0x0

    .line 33
    iput-object v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 34
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    iput-object v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 35
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 36
    iput-object v2, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 37
    iput v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    move/from16 v0, p4

    .line 38
    iput v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    move/from16 v0, p5

    .line 39
    iput v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    move/from16 v0, p6

    .line 40
    iput v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    move/from16 v0, p7

    .line 41
    iput-boolean v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    move/from16 v0, p8

    .line 42
    iput v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 43
    invoke-static {}, Lcom/android/server/notification/Flags;->persistIncompleteRestoreData()Z

    .line 44
    iget v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v0, v5, :cond_1

    move-wide/from16 v10, p9

    .line 45
    iput-wide v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    :cond_1
    move/from16 v0, p11

    .line 46
    iput-boolean v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    move/from16 v0, p12

    .line 47
    iput-boolean v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    .line 48
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 49
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iput v9, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    goto :goto_1

    :cond_2
    move/from16 v0, p13

    .line 51
    iput v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    .line 52
    :goto_1
    iput v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 53
    iput-boolean v9, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 54
    iput-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 55
    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    iget-object v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iput v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 57
    :cond_3
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "NotificationPrefHelper"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_2
    iget v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v0, v5, :cond_4

    .line 60
    invoke-static {}, Lcom/android/server/notification/Flags;->persistIncompleteRestoreData()Z

    .line 61
    iput v3, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userId:I

    .line 62
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 63
    :cond_4
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_5
    :goto_3
    iget v0, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v0, v5, :cond_6

    .line 65
    invoke-static {}, Lcom/android/server/notification/Flags;->persistIncompleteRestoreData()Z

    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    .line 66
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    iget-wide v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    sub-long/2addr v4, v7

    sget-wide v7, Lcom/android/server/notification/PreferencesHelper;->PREF_GRACE_PERIOD_MS:J

    cmp-long v0, v7, v4

    if-gez v0, :cond_6

    .line 67
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v6
.end method

.method public final getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getWearableAppMuted(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 p0, -0x1

    .line 18
    return p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final hasNotificationChannelsBypassingDnd(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/NotificationChannel;

    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    monitor-exit v0

    .line 58
    const/4 p0, 0x0

    .line 59
    return p0

    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public hasSentInvalidMsg(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-boolean p0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final isDelegateAllowed(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    if-eqz p4, :cond_1

    .line 15
    .line 16
    const/16 p1, -0x2710

    .line 17
    .line 18
    if-ne p2, p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 30
    .line 31
    if-ne p2, p1, :cond_1

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 40
    :goto_1
    monitor-exit v0

    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public isFsiPermissionUserSet(Ljava/lang/String;III)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p1, 0x1

    .line 6
    and-int/lit8 p2, p4, 0x1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    move p0, p1

    .line 11
    :cond_1
    return p0
.end method

.method public final isGroupBlocked(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/NotificationChannelGroup;

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    monitor-exit v1

    .line 31
    return p0

    .line 32
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final isInInvalidMsgState(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final lockChannelsForOEM([Ljava/lang/String;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_a

    .line 8
    .line 9
    aget-object v3, p1, v2

    .line 10
    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_9

    .line 16
    .line 17
    const-string v4, ":"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_9

    .line 24
    .line 25
    array-length v4, v3

    .line 26
    if-lez v4, :cond_9

    .line 27
    .line 28
    aget-object v4, v3, v1

    .line 29
    .line 30
    array-length v5, v3

    .line 31
    const/4 v6, 0x2

    .line 32
    const/4 v7, 0x1

    .line 33
    if-ne v5, v6, :cond_1

    .line 34
    .line 35
    aget-object v3, v3, v7

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_1
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v5

    .line 42
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    move v8, v1

    .line 53
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_6

    .line 58
    .line 59
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 64
    .line 65
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_2

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    iput-boolean v7, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 76
    .line 77
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_5

    .line 92
    .line 93
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    check-cast v9, Landroid/app/NotificationChannel;

    .line 98
    .line 99
    invoke-virtual {v9, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_4

    .line 105
    :cond_3
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Landroid/app/NotificationChannel;

    .line 112
    .line 113
    if-eqz v8, :cond_4

    .line 114
    .line 115
    invoke-virtual {v8, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    .line 119
    .line 120
    check-cast v8, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    move v8, v7

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    if-nez v8, :cond_8

    .line 128
    .line 129
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    .line 130
    .line 131
    new-instance v7, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    check-cast v6, Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Ljava/util/List;

    .line 143
    .line 144
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_7
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    .line 150
    .line 151
    check-cast v3, Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_8
    monitor-exit v5

    .line 157
    goto :goto_5

    .line 158
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    throw p0

    .line 160
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_a
    return-void
.end method

.method public final lockChannelsForOEMwithPackagePreferences(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x107015a

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-lez v1, :cond_0

    .line 52
    .line 53
    const-string v1, ","

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    .line 71
    .line 72
    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-lez v0, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    .line 81
    .line 82
    check-cast v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    .line 91
    .line 92
    check-cast p0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, [Ljava/lang/String;

    .line 99
    .line 100
    array-length v0, p0

    .line 101
    const/4 v1, 0x0

    .line 102
    move v2, v1

    .line 103
    :goto_0
    if-ge v2, v0, :cond_5

    .line 104
    .line 105
    aget-object v3, p0, v2

    .line 106
    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    const-string v4, ":"

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    array-length v4, v3

    .line 122
    if-lez v4, :cond_4

    .line 123
    .line 124
    aget-object v4, v3, v1

    .line 125
    .line 126
    array-length v5, v3

    .line 127
    const/4 v6, 0x2

    .line 128
    const/4 v7, 0x1

    .line 129
    if-ne v5, v6, :cond_1

    .line 130
    .line 131
    aget-object v3, v3, v7

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const/4 v3, 0x0

    .line 135
    :goto_1
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_4

    .line 142
    .line 143
    if-nez v3, :cond_2

    .line 144
    .line 145
    iput-boolean v7, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 146
    .line 147
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_4

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Landroid/app/NotificationChannel;

    .line 168
    .line 169
    invoke-virtual {v4, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 174
    .line 175
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Landroid/app/NotificationChannel;

    .line 180
    .line 181
    if-eqz v4, :cond_3

    .line 182
    .line 183
    invoke-virtual {v4, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_3
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    .line 188
    .line 189
    check-cast v4, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_5
    return-void
.end method

.method public final migrateNotificationPermissions(Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    const-wide/32 v2, 0x20000

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 62
    .line 63
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    .line 68
    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    iget v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    const/16 v4, -0x2710

    .line 74
    .line 75
    if-eq v3, v4, :cond_3

    .line 76
    .line 77
    :try_start_1
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    move v5, v6

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/4 v5, 0x0

    .line 91
    :goto_1
    invoke-static {v1}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    .line 92
    .line 93
    .line 94
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    if-nez v4, :cond_2

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {v7, v4, v3}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-nez v8, :cond_3

    .line 107
    .line 108
    invoke-virtual {v7, v4, v5, v6, v3}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;ZZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_3

    .line 114
    :catch_0
    move-exception v3

    .line 115
    :try_start_2
    const-string v4, "NotificationPrefHelper"

    .line 116
    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v6, "could not migrate setting for "

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_2
    monitor-exit v2

    .line 140
    goto :goto_0

    .line 141
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    throw p0

    .line 143
    :cond_4
    return-void
.end method

.method public final onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 18
    .line 19
    const-string/jumbo p1, "miscellaneous"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return p2

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final removeAllReminderSetting(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 21
    .line 22
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 23
    .line 24
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ne v5, p1, :cond_0

    .line 29
    .line 30
    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    iput-boolean v2, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final resetDefaultAllowOngoingActivityExceptGivenApps(Ljava/util/List;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "NotificationPrefHelper"

    .line 4
    .line 5
    const-string p1, "except  app list is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 30
    .line 31
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    const-string v4, "NotificationPrefHelper"

    .line 40
    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v6, "resetDefaultAllowOngoingActivityExceptGivenApps - excepPackage = "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    const/4 v4, -0x1

    .line 68
    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    .line 69
    .line 70
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final restoreChannel(Lcom/android/modules/utils/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;ZZ)V
    .locals 6

    .line 1
    :try_start_0
    const-string v0, "id"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v2, "name"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "importance"

    .line 16
    .line 17
    const/16 v4, -0x3e8

    .line 18
    .line 19
    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_a

    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_a

    .line 34
    .line 35
    new-instance v3, Landroid/app/NotificationChannel;

    .line 36
    .line 37
    invoke-direct {v3, v0, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget p2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 45
    .line 46
    const/16 v5, -0x2710

    .line 47
    .line 48
    if-eq p2, v5, :cond_0

    .line 49
    .line 50
    move p2, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move p2, v1

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v3, p1, p2, p0}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    if-eqz p4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_1
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    iget-boolean p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 71
    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    iget-boolean p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 75
    .line 76
    if-eqz p0, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move p0, v1

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    :goto_2
    move p0, v2

    .line 82
    :goto_3
    invoke-virtual {v3, p0}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 83
    .line 84
    .line 85
    iget-boolean p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 86
    .line 87
    invoke-virtual {v3, p0}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_5

    .line 95
    .line 96
    iget-object p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_5

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 111
    .line 112
    .line 113
    :cond_5
    if-eqz p5, :cond_6

    .line 114
    .line 115
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-eqz p0, :cond_7

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p1, ":placeholder_id"

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    move v1, v2

    .line 137
    :cond_7
    xor-int/lit8 p0, v1, 0x1

    .line 138
    .line 139
    if-eqz p0, :cond_a

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-nez p0, :cond_8

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide p0

    .line 152
    const-wide p4, 0x9a7ec800L

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    sub-long/2addr p0, p4

    .line 158
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    .line 159
    .line 160
    .line 161
    move-result-wide p4

    .line 162
    cmp-long p0, p4, p0

    .line 163
    .line 164
    if-gtz p0, :cond_9

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_9
    :goto_4
    iget-object p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 168
    .line 169
    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string p2, "could not restore channel for "

    .line 176
    .line 177
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string p2, "NotificationPrefHelper"

    .line 190
    .line 191
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    :cond_a
    :goto_6
    return-void
.end method

.method public final restorePackage(Lcom/android/modules/utils/TypedXmlPullParser;ZILjava/lang/String;ZZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v14, p4

    .line 6
    .line 7
    move-object/from16 v13, p8

    .line 8
    .line 9
    const-string v12, "app_lockscreen_visibility"

    .line 10
    .line 11
    const-string v10, "allow_ongoing_activity_setting"

    .line 12
    .line 13
    const-string v11, "allow_sub_display_noti"

    .line 14
    .line 15
    const-string v9, "allow_edge_lighting"

    .line 16
    .line 17
    const-string/jumbo v8, "show_badge"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v7, "visibility"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v6, "priority"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v5, "uid"

    .line 27
    .line 28
    .line 29
    const-string v4, "NotificationPrefHelper"

    .line 30
    .line 31
    const-string/jumbo v3, "restore appLockScreenVisibility pkg: "

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "readxml not launcher pkg - "

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "readxml reminder pkg - "

    .line 38
    .line 39
    .line 40
    move-object/from16 v16, v2

    .line 41
    .line 42
    const/16 v2, -0x2710

    .line 43
    .line 44
    const/4 v13, 0x0

    .line 45
    :try_start_0
    invoke-interface {v15, v13, v5, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    :try_start_1
    iget-object v13, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    move-object/from16 v19, v5

    .line 54
    .line 55
    move/from16 v5, p3

    .line 56
    .line 57
    :try_start_2
    invoke-virtual {v13, v14, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v13
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    move-object v11, v4

    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :catch_1
    :cond_0
    move-object/from16 v19, v5

    .line 67
    .line 68
    move/from16 v5, p3

    .line 69
    .line 70
    :catch_2
    move/from16 v13, v17

    .line 71
    .line 72
    :goto_0
    const/4 v5, 0x0

    .line 73
    if-eqz p5, :cond_1

    .line 74
    .line 75
    if-eq v13, v2, :cond_1

    .line 76
    .line 77
    :try_start_3
    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 78
    .line 79
    const-string v21, "check-notif-bubble"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 80
    .line 81
    const/16 v22, 0x18

    .line 82
    .line 83
    const/16 v23, 0x0

    .line 84
    .line 85
    move-object/from16 v24, v1

    .line 86
    .line 87
    move-object v1, v2

    .line 88
    move-object/from16 v25, v16

    .line 89
    .line 90
    move/from16 v2, v22

    .line 91
    .line 92
    move-object/from16 v26, v3

    .line 93
    .line 94
    move v3, v13

    .line 95
    move-object/from16 v27, v4

    .line 96
    .line 97
    move-object/from16 v4, p4

    .line 98
    .line 99
    move-object/from16 v29, v19

    .line 100
    .line 101
    move-object/from16 v5, v23

    .line 102
    .line 103
    move-object v14, v6

    .line 104
    move-object/from16 v6, v21

    .line 105
    .line 106
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    goto :goto_2

    .line 116
    :catch_3
    move-exception v0

    .line 117
    :goto_1
    move-object/from16 v11, v27

    .line 118
    .line 119
    goto/16 :goto_10

    .line 120
    .line 121
    :catch_4
    move-exception v0

    .line 122
    move-object/from16 v27, v4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move-object/from16 v24, v1

    .line 126
    .line 127
    move-object/from16 v26, v3

    .line 128
    .line 129
    move-object/from16 v27, v4

    .line 130
    .line 131
    move-object v14, v6

    .line 132
    move-object/from16 v25, v16

    .line 133
    .line 134
    move-object/from16 v29, v19

    .line 135
    .line 136
    :cond_2
    const-string v1, "allow_bubble"

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    const/4 v6, 0x0

    .line 140
    invoke-interface {v15, v6, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    move v4, v1

    .line 145
    :goto_2
    const-string v1, "importance"

    .line 146
    .line 147
    const/16 v3, -0x3e8

    .line 148
    .line 149
    invoke-interface {v15, v6, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-static {}, Lcom/android/server/notification/Flags;->persistIncompleteRestoreData()Z

    .line 154
    .line 155
    .line 156
    if-nez p2, :cond_3

    .line 157
    .line 158
    const/16 v1, -0x2710

    .line 159
    .line 160
    if-ne v13, v1, :cond_3

    .line 161
    .line 162
    const-string/jumbo v1, "userid"

    .line 163
    .line 164
    .line 165
    invoke-interface {v15, v6, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    move/from16 v16, v1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_3
    move/from16 v16, p3

    .line 173
    .line 174
    :goto_3
    invoke-interface {v15, v6, v14, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v17

    .line 178
    invoke-interface {v15, v6, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v18

    .line 182
    const/4 v1, 0x1

    .line 183
    invoke-interface {v15, v6, v8, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result v19

    .line 187
    const-string v3, "creation_time"

    .line 188
    .line 189
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    .line 190
    .line 191
    move/from16 v20, v2

    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v1

    .line 197
    invoke-interface {v15, v6, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v21

    .line 201
    const/4 v1, 0x1

    .line 202
    invoke-interface {v15, v6, v9, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v23

    .line 206
    const/4 v5, 0x0

    .line 207
    invoke-interface {v15, v6, v11, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 208
    .line 209
    .line 210
    move-result v28

    .line 211
    const/4 v3, -0x1

    .line 212
    invoke-interface {v15, v6, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 213
    .line 214
    .line 215
    move-result v30

    .line 216
    const/16 v2, -0x2710

    .line 217
    .line 218
    move-object/from16 v1, p0

    .line 219
    .line 220
    move-object/from16 v2, p4

    .line 221
    .line 222
    const/16 v0, -0x3e8

    .line 223
    .line 224
    move/from16 v3, v16

    .line 225
    .line 226
    move/from16 p3, v4

    .line 227
    .line 228
    move v4, v13

    .line 229
    move v13, v5

    .line 230
    move/from16 v5, v20

    .line 231
    .line 232
    move-object/from16 v16, v6

    .line 233
    .line 234
    move/from16 v6, v17

    .line 235
    .line 236
    move-object/from16 v32, v7

    .line 237
    .line 238
    move/from16 v7, v18

    .line 239
    .line 240
    move-object/from16 v33, v8

    .line 241
    .line 242
    move/from16 v8, v19

    .line 243
    .line 244
    move-object/from16 v34, v9

    .line 245
    .line 246
    move/from16 v9, p3

    .line 247
    .line 248
    move-object/from16 v35, v10

    .line 249
    .line 250
    move-object/from16 v36, v11

    .line 251
    .line 252
    move-wide/from16 v10, v21

    .line 253
    .line 254
    move-object/from16 v37, v12

    .line 255
    .line 256
    move/from16 v12, v23

    .line 257
    .line 258
    move-object/from16 v0, v16

    .line 259
    .line 260
    move/from16 v13, v28

    .line 261
    .line 262
    move-object/from16 v38, v14

    .line 263
    .line 264
    move/from16 v14, v30

    .line 265
    .line 266
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIJZZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    move/from16 v1, p3

    .line 271
    .line 272
    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 273
    .line 274
    move-object/from16 v1, v38

    .line 275
    .line 276
    const/4 v8, 0x0

    .line 277
    invoke-interface {v15, v0, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 282
    .line 283
    move-object/from16 v1, v32

    .line 284
    .line 285
    const/16 v2, -0x3e8

    .line 286
    .line 287
    invoke-interface {v15, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 292
    .line 293
    if-eqz p2, :cond_4

    .line 294
    .line 295
    if-nez v1, :cond_4

    .line 296
    .line 297
    iput v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 298
    .line 299
    move-object/from16 v1, v33

    .line 300
    .line 301
    const/4 v9, 0x1

    .line 302
    const/16 v31, 0x1

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_4
    move/from16 v31, v8

    .line 306
    .line 307
    move-object/from16 v1, v33

    .line 308
    .line 309
    const/4 v9, 0x1

    .line 310
    :goto_4
    invoke-interface {v15, v0, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 315
    .line 316
    const-string v1, "app_user_locked_fields"

    .line 317
    .line 318
    invoke-interface {v15, v0, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 323
    .line 324
    const-string/jumbo v1, "sent_invalid_msg"

    .line 325
    .line 326
    .line 327
    invoke-interface {v15, v0, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 332
    .line 333
    const-string/jumbo v1, "sent_valid_msg"

    .line 334
    .line 335
    .line 336
    invoke-interface {v15, v0, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 341
    .line 342
    const-string/jumbo v1, "user_demote_msg_app"

    .line 343
    .line 344
    .line 345
    invoke-interface {v15, v0, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 350
    .line 351
    const-string/jumbo v1, "sent_valid_bubble"

    .line 352
    .line 353
    .line 354
    invoke-interface {v15, v0, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 359
    .line 360
    move-object/from16 v1, v34

    .line 361
    .line 362
    invoke-interface {v15, v0, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    .line 367
    .line 368
    move-object/from16 v1, v36

    .line 369
    .line 370
    invoke-interface {v15, v0, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    .line 375
    .line 376
    move-object/from16 v10, p0

    .line 377
    .line 378
    move v1, v2

    .line 379
    iget-object v2, v10, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Ljava/util/List;

    .line 380
    .line 381
    if-eqz v2, :cond_5

    .line 382
    .line 383
    check-cast v2, Ljava/util/ArrayList;

    .line 384
    .line 385
    move-object/from16 v3, p4

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_5

    .line 392
    .line 393
    move v5, v9

    .line 394
    move-object/from16 v2, v35

    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_5
    move-object/from16 v2, v35

    .line 398
    .line 399
    const/4 v5, -0x1

    .line 400
    :goto_5
    invoke-interface {v15, v0, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    iput v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    .line 405
    .line 406
    const-string/jumbo v2, "notification_alerts_enabled"

    .line 407
    .line 408
    .line 409
    invoke-interface {v15, v0, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    iput-boolean v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    .line 414
    .line 415
    const-string/jumbo v2, "mute_for_wearable_app"

    .line 416
    .line 417
    .line 418
    const/4 v3, -0x1

    .line 419
    invoke-interface {v15, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    iput v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    .line 424
    .line 425
    move-object/from16 v2, v37

    .line 426
    .line 427
    invoke-interface {v15, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    iput v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 432
    .line 433
    const-string v3, "allow_popup"

    .line 434
    .line 435
    invoke-interface {v15, v0, v3, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    iput-boolean v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 440
    .line 441
    const-string v3, "enable_reminder"

    .line 442
    .line 443
    invoke-interface {v15, v0, v3, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    iput-boolean v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 448
    .line 449
    move-object/from16 v3, p8

    .line 450
    .line 451
    if-eqz v3, :cond_6

    .line 452
    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    move-object/from16 v5, v24

    .line 456
    .line 457
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget-object v5, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 469
    move-object/from16 v11, v27

    .line 470
    .line 471
    :try_start_5
    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    iget-object v4, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    if-nez v3, :cond_7

    .line 481
    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    move-object/from16 v4, v25

    .line 485
    .line 486
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object v4, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    iput-boolean v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 502
    .line 503
    goto :goto_6

    .line 504
    :catch_5
    move-exception v0

    .line 505
    goto/16 :goto_10

    .line 506
    .line 507
    :cond_6
    move-object/from16 v11, v27

    .line 508
    .line 509
    :cond_7
    :goto_6
    sget-boolean v3, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    .line 510
    .line 511
    if-eqz v3, :cond_8

    .line 512
    .line 513
    iget v3, v10, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    .line 514
    .line 515
    if-nez v3, :cond_8

    .line 516
    .line 517
    iget v3, v10, Lcom/android/server/notification/PreferencesHelper;->mDeviceFirstApiLevel:I

    .line 518
    .line 519
    const/16 v4, 0x21

    .line 520
    .line 521
    if-lt v3, v4, :cond_8

    .line 522
    .line 523
    iget-object v3, v10, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    .line 524
    .line 525
    iget-object v4, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    if-eqz v3, :cond_8

    .line 532
    .line 533
    iput v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 534
    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    move-object/from16 v2, v26

    .line 538
    .line 539
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    goto :goto_7

    .line 555
    :cond_8
    invoke-interface {v15, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 560
    .line 561
    :goto_7
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 562
    .line 563
    .line 564
    move-result v12

    .line 565
    move v13, v8

    .line 566
    move v14, v13

    .line 567
    :goto_8
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-eq v1, v9, :cond_9

    .line 572
    .line 573
    const/4 v2, 0x3

    .line 574
    if-ne v1, v2, :cond_a

    .line 575
    .line 576
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-le v3, v12, :cond_9

    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_9
    const/16 v2, -0x2710

    .line 584
    .line 585
    goto/16 :goto_d

    .line 586
    .line 587
    :cond_a
    :goto_9
    if-eq v1, v2, :cond_b

    .line 588
    .line 589
    const/4 v2, 0x4

    .line 590
    if-ne v1, v2, :cond_c

    .line 591
    .line 592
    :cond_b
    move-object/from16 v1, v29

    .line 593
    .line 594
    const/16 v2, -0x2710

    .line 595
    .line 596
    goto/16 :goto_c

    .line 597
    .line 598
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    const-string v1, "channelGroup"

    .line 603
    .line 604
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 608
    const-string/jumbo v5, "name"

    .line 609
    .line 610
    .line 611
    if-eqz v1, :cond_e

    .line 612
    .line 613
    :try_start_6
    iget-object v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 614
    .line 615
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    const/16 v2, 0x1770

    .line 620
    .line 621
    if-lt v1, v2, :cond_d

    .line 622
    .line 623
    if-nez v13, :cond_b

    .line 624
    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .line 629
    .line 630
    const-string v2, "Skipping further groups for "

    .line 631
    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    move v13, v9

    .line 648
    goto :goto_8

    .line 649
    :cond_d
    const-string v1, "id"

    .line 650
    .line 651
    invoke-interface {v15, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-interface {v15, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    if-nez v3, :cond_e

    .line 664
    .line 665
    new-instance v3, Landroid/app/NotificationChannelGroup;

    .line 666
    .line 667
    invoke-direct {v3, v1, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v3, v15}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 671
    .line 672
    .line 673
    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 674
    .line 675
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    :cond_e
    const-string v1, "channel"

    .line 679
    .line 680
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    if-eqz v1, :cond_10

    .line 685
    .line 686
    iget-object v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 687
    .line 688
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    const/16 v2, 0x1388

    .line 693
    .line 694
    if-lt v1, v2, :cond_f

    .line 695
    .line 696
    if-nez v14, :cond_b

    .line 697
    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    const-string v2, "Skipping further channels for "

    .line 704
    .line 705
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 709
    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .line 719
    .line 720
    move v14, v9

    .line 721
    goto/16 :goto_8

    .line 722
    .line 723
    :cond_f
    iget-object v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 724
    .line 725
    iget v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 726
    .line 727
    invoke-virtual {v10, v2, v1}, Lcom/android/server/notification/PreferencesHelper;->hasNotificationChannelsBypassingDnd(ILjava/lang/String;)Z

    .line 728
    .line 729
    .line 730
    move-result v16

    .line 731
    move-object/from16 v1, p0

    .line 732
    .line 733
    move-object/from16 v2, p1

    .line 734
    .line 735
    move/from16 v3, p2

    .line 736
    .line 737
    move-object v4, v7

    .line 738
    move-object v8, v5

    .line 739
    move/from16 v5, v31

    .line 740
    .line 741
    move-object v9, v6

    .line 742
    move/from16 v6, v16

    .line 743
    .line 744
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->restoreChannel(Lcom/android/modules/utils/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;ZZ)V

    .line 745
    .line 746
    .line 747
    goto :goto_a

    .line 748
    :cond_10
    move-object v8, v5

    .line 749
    move-object v9, v6

    .line 750
    :goto_a
    const-string v1, "delegate"

    .line 751
    .line 752
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-eqz v1, :cond_b

    .line 757
    .line 758
    move-object/from16 v1, v29

    .line 759
    .line 760
    const/16 v2, -0x2710

    .line 761
    .line 762
    invoke-interface {v15, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    invoke-static {v15, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    const-string v5, "enabled"

    .line 771
    .line 772
    const/4 v6, 0x1

    .line 773
    invoke-interface {v15, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 774
    .line 775
    .line 776
    move-result v5

    .line 777
    if-eq v3, v2, :cond_11

    .line 778
    .line 779
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 780
    .line 781
    .line 782
    move-result v6

    .line 783
    if-nez v6, :cond_11

    .line 784
    .line 785
    new-instance v6, Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 786
    .line 787
    invoke-direct {v6, v3, v4, v5}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(ILjava/lang/String;Z)V

    .line 788
    .line 789
    .line 790
    goto :goto_b

    .line 791
    :cond_11
    move-object v6, v0

    .line 792
    :goto_b
    iput-object v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 793
    .line 794
    :goto_c
    move-object/from16 v29, v1

    .line 795
    .line 796
    const/4 v8, 0x0

    .line 797
    const/4 v9, 0x1

    .line 798
    goto/16 :goto_8

    .line 799
    .line 800
    :goto_d
    :try_start_7
    invoke-virtual {v10, v7}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 801
    .line 802
    .line 803
    goto :goto_e

    .line 804
    :catch_6
    move-exception v0

    .line 805
    move-object v1, v0

    .line 806
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .line 810
    .line 811
    const-string v3, "deleteDefaultChannelIfNeededLocked - Exception: "

    .line 812
    .line 813
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    :goto_e
    if-eqz p6, :cond_13

    .line 827
    .line 828
    move/from16 v1, v20

    .line 829
    .line 830
    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 831
    .line 832
    const/4 v1, 0x1

    .line 833
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    .line 834
    .line 835
    iget v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 836
    .line 837
    if-eq v0, v2, :cond_13

    .line 838
    .line 839
    new-instance v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    .line 840
    .line 841
    iget-object v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 842
    .line 843
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    iget v4, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 848
    .line 849
    if-eqz v4, :cond_12

    .line 850
    .line 851
    move v5, v1

    .line 852
    goto :goto_f

    .line 853
    :cond_12
    const/4 v5, 0x0

    .line 854
    :goto_f
    invoke-static {v7}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    .line 855
    .line 856
    .line 857
    move-result v1

    .line 858
    invoke-direct {v2, v3, v5, v1, v0}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;ZZI)V

    .line 859
    .line 860
    .line 861
    move-object/from16 v1, p7

    .line 862
    .line 863
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 864
    .line 865
    .line 866
    goto :goto_11

    .line 867
    :goto_10
    const-string v1, "Failed to restore pkg"

    .line 868
    .line 869
    invoke-static {v11, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .line 871
    .line 872
    :cond_13
    :goto_11
    return-void
.end method

.method public final setAllowOngoingActivityState(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setAppBypassDndList(IZLjava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v4, v1, :cond_2

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 28
    .line 29
    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Landroid/app/NotificationChannel;

    .line 50
    .line 51
    invoke-virtual {p0, v5, v7}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_0

    .line 56
    .line 57
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    invoke-virtual {v7, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_4

    .line 69
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    const-string v4, ":"

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    array-length v4, v1

    .line 95
    const/4 v5, 0x2

    .line 96
    if-ne v4, v5, :cond_3

    .line 97
    .line 98
    aget-object v4, v1, v3

    .line 99
    .line 100
    aget-object v1, v1, v2

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {p0, v1, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Landroid/app/NotificationChannel;

    .line 131
    .line 132
    invoke-virtual {v4, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    invoke-virtual {p0, p3}, Lcom/android/server/notification/PreferencesHelper;->getAppsBypassingDndCount(I)I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    if-lez p3, :cond_5

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    move v2, v3

    .line 148
    :goto_3
    iget-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 149
    .line 150
    if-eq p3, v2, :cond_6

    .line 151
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasChannelsBypassingDnd(IZ)V

    .line 153
    .line 154
    .line 155
    :cond_6
    monitor-exit v0

    .line 156
    return-void

    .line 157
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    throw p0
.end method

.method public final setChannelsBypassingDndForMode(IZZ)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_6

    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 5
    .line 6
    if-nez p2, :cond_7

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/android/server/notification/ZenModeHelper;->getAppsToBypassDndForEnabledForMode()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move v4, v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eqz v5, :cond_5

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Ljava/lang/String;

    .line 39
    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v7, ":"

    .line 44
    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    array-length v8, v7

    .line 50
    const/4 v9, 0x2

    .line 51
    if-ge v8, v9, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v8, v0

    .line 55
    :goto_1
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-ge v8, v9, :cond_0

    .line 62
    .line 63
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 70
    .line 71
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 72
    .line 73
    aget-object v11, v7, v0

    .line 74
    .line 75
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_4

    .line 80
    .line 81
    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 82
    .line 83
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    aget-object v11, v7, v6

    .line 88
    .line 89
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-ne v10, v11, :cond_4

    .line 94
    .line 95
    iget-object v10, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 96
    .line 97
    iget v9, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 98
    .line 99
    invoke-virtual {v10, v9}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    move v4, v6

    .line 112
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v4, :cond_7

    .line 120
    .line 121
    iput-boolean v6, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 122
    .line 123
    invoke-virtual {p0, p1, v6, p3}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(IZZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_6
    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 130
    .line 131
    if-eqz p2, :cond_7

    .line 132
    .line 133
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 134
    .line 135
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(IZZ)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasChannelsBypassingDnd(IZ)V

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_4
    return-void
.end method

.method public final setHideContentAllowList(Ljava/util/List;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v0, "setHideContentAllowList - size = "

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "NotificationPrefHelper"

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    const-string v0, "Set a isNotificationAlertsEnabled : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    .line 13
    .line 14
    const-string p1, "NotificationPrefHelper"

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    .line 22
    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v1

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final setOngoingActivityAppList(Ljava/util/List;)V
    .locals 5

    .line 1
    const-string v0, "NotificationPrefHelper"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "ongoing activity app list is null"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v4, "setOngoingActivityAppList package= "

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public final setReminderEnabled(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setWearableAppMuted(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final syncChannelsBypassingDnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 17
    .line 18
    const/16 v0, 0x3e8

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasChannelsBypassingDnd(IZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final updateBadgingEnabled()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v1, v3, :cond_3

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string/jumbo v6, "notification_badging"

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    move v5, v7

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v5, v0

    .line 54
    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 55
    .line 56
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 57
    .line 58
    .line 59
    if-eq v4, v5, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v7, v0

    .line 63
    :goto_2
    or-int/2addr v2, v7

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method public final updateBubblesEnabled()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v1, v3, :cond_3

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string/jumbo v6, "notification_bubbles"

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-ne v5, v7, :cond_1

    .line 50
    .line 51
    move v5, v7

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v5, v0

    .line 54
    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 55
    .line 56
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 57
    .line 58
    .line 59
    if-eq v4, v5, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v7, v0

    .line 63
    :goto_2
    or-int/2addr v2, v7

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method public final updateChildrenConversationChannels(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 9

    .line 1
    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isConversation()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_d

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v3, v1

    .line 36
    check-cast v3, Landroid/app/NotificationChannel;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isConversation()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 59
    .line 60
    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v2, 0x1

    .line 75
    and-int/2addr v1, v2

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eq v1, v7, :cond_3

    .line 87
    .line 88
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 93
    .line 94
    .line 95
    move v1, v2

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v1, 0x0

    .line 98
    :goto_1
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    and-int/lit8 v7, v7, 0x2

    .line 103
    .line 104
    if-nez v7, :cond_4

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eq v7, v8, :cond_4

    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 121
    .line 122
    .line 123
    move v1, v2

    .line 124
    :cond_4
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    and-int/lit8 v7, v7, 0x4

    .line 129
    .line 130
    if-nez v7, :cond_5

    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eq v7, v8, :cond_5

    .line 141
    .line 142
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 147
    .line 148
    .line 149
    move v1, v2

    .line 150
    :cond_5
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    and-int/lit8 v7, v7, 0x8

    .line 155
    .line 156
    if-nez v7, :cond_7

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-ne v7, v8, :cond_6

    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eq v7, v8, :cond_7

    .line 177
    .line 178
    :cond_6
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 190
    .line 191
    .line 192
    move v1, v2

    .line 193
    :cond_7
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    and-int/lit8 v7, v7, 0x20

    .line 198
    .line 199
    if-nez v7, :cond_8

    .line 200
    .line 201
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-nez v7, :cond_8

    .line 214
    .line 215
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v3, v1, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 224
    .line 225
    .line 226
    move v1, v2

    .line 227
    :cond_8
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    and-int/lit8 v7, v7, 0x10

    .line 232
    .line 233
    if-nez v7, :cond_a

    .line 234
    .line 235
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([J[J)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_9

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_9

    .line 262
    .line 263
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eq v7, v8, :cond_a

    .line 272
    .line 273
    :cond_9
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 285
    .line 286
    .line 287
    move v1, v2

    .line 288
    :cond_a
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    and-int/lit16 v7, v7, 0x80

    .line 293
    .line 294
    if-nez v7, :cond_b

    .line 295
    .line 296
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    if-eq v7, v8, :cond_b

    .line 305
    .line 306
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 311
    .line 312
    .line 313
    move v1, v2

    .line 314
    :cond_b
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    and-int/lit16 v7, v7, 0x100

    .line 319
    .line 320
    if-nez v7, :cond_c

    .line 321
    .line 322
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-eq v7, v8, :cond_c

    .line 331
    .line 332
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 337
    .line 338
    .line 339
    move v1, v2

    .line 340
    :cond_c
    if-eqz v1, :cond_2

    .line 341
    .line 342
    invoke-static {v3, v5}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 351
    .line 352
    .line 353
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 354
    .line 355
    const/4 v7, 0x1

    .line 356
    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_d
    return-void
.end method

.method public final updateConfig()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final updateCurrentUserHasChannelsBypassingDnd(IZ)V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-class v4, Landroid/os/UserManager;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/os/UserManager;

    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v3, v7, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    array-length v6, v3

    .line 42
    move v7, v5

    .line 43
    :goto_0
    if-ge v7, v6, :cond_0

    .line 44
    .line 45
    aget v8, v3, v7

    .line 46
    .line 47
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    move v3, v5

    .line 70
    :goto_1
    if-ge v3, v2, :cond_4

    .line 71
    .line 72
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 79
    .line 80
    iget v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 81
    .line 82
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    iget-object v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_3

    .line 112
    .line 113
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    check-cast v8, Landroid/app/NotificationChannel;

    .line 118
    .line 119
    invoke-virtual {p0, v6, v8}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_2

    .line 124
    .line 125
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_2

    .line 130
    .line 131
    new-instance v7, Landroid/util/Pair;

    .line 132
    .line 133
    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 134
    .line 135
    iget v6, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 136
    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    goto :goto_4

    .line 150
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    const/4 v2, 0x1

    .line 159
    sub-int/2addr v1, v2

    .line 160
    :goto_3
    if-ltz v1, :cond_6

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Landroid/util/Pair;

    .line 167
    .line 168
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 169
    .line 170
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v3, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {v4, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_5

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-lez v0, :cond_7

    .line 195
    .line 196
    move v5, v2

    .line 197
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 198
    .line 199
    if-eq v0, v5, :cond_8

    .line 200
    .line 201
    iput-boolean v5, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 202
    .line 203
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(IZZ)V

    .line 204
    .line 205
    .line 206
    :cond_8
    return-void

    .line 207
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    throw p0
.end method

.method public final updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 25
    .line 26
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 27
    .line 28
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne p1, v3, :cond_0

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 46
    .line 47
    iget-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 48
    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Landroid/app/NotificationChannel;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Landroid/util/Pair;

    .line 94
    .line 95
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p3, Ljava/lang/String;

    .line 98
    .line 99
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p2, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const/4 p3, 0x1

    .line 112
    iput-boolean p3, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 113
    .line 114
    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_2

    .line 129
    .line 130
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/app/NotificationChannel;

    .line 135
    .line 136
    invoke-virtual {v1, p3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    throw p0
.end method

.method public final updateMediaNotificationFilteringEnabled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "qs_media_controls"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x1110207

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 35
    .line 36
    if-eq v2, v0, :cond_1

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v4, p1

    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    const-string v1, "NameNotFoundException pkg "

    .line 8
    .line 9
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v9

    .line 22
    move/from16 v3, p2

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0, v3, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    iget-object v2, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v11, v2

    .line 39
    check-cast v11, Landroid/app/NotificationChannel;

    .line 40
    .line 41
    if-eqz v11, :cond_b

    .line 42
    .line 43
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_b

    .line 48
    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v12, 0x1

    .line 54
    if-ne v2, v12, :cond_0

    .line 55
    .line 56
    const/16 v2, -0x3e8

    .line 57
    .line 58
    invoke-virtual {v7, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 66
    .line 67
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v7, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v11, v7}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v7, v2}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/4 v13, 0x0

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->isBlockable()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    .line 99
    .line 100
    .line 101
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    :try_start_1
    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 105
    .line 106
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const/16 v6, 0x80

    .line 111
    .line 112
    invoke-virtual {v2, p1, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 117
    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    const-string v5, "com.samsung.android.notification.blockable"

    .line 121
    .line 122
    invoke-virtual {v2, v5, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v7, v2}, Landroid/app/NotificationChannel;->setImportance(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catch_0
    :try_start_2
    const-string v2, "NotificationPrefHelper"

    .line 137
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_2
    iget-object v1, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_4

    .line 169
    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_3

    .line 175
    .line 176
    const/4 v1, 0x2

    .line 177
    goto :goto_3

    .line 178
    :cond_3
    move v1, v13

    .line 179
    :goto_3
    iput v1, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 180
    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iput v1, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 186
    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    iput-boolean v1, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 192
    .line 193
    move v1, v12

    .line 194
    goto :goto_4

    .line 195
    :cond_4
    move v1, v13

    .line 196
    :goto_4
    invoke-virtual {v11, v7}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_5

    .line 201
    .line 202
    invoke-static {v7, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 214
    .line 215
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-static {v11, v2}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    move-object/from16 v2, p3

    .line 224
    .line 225
    move/from16 v3, p2

    .line 226
    .line 227
    move-object v4, p1

    .line 228
    move/from16 v6, p4

    .line 229
    .line 230
    invoke-interface/range {v1 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    .line 231
    .line 232
    .line 233
    move v1, v12

    .line 234
    :cond_5
    if-eqz v8, :cond_6

    .line 235
    .line 236
    invoke-static {}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->getResolver()Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    sget-object v3, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->PROPAGATE_CHANNEL_UPDATES_TO_CONVERSATIONS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 241
    .line 242
    invoke-interface {v2, v3}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_6

    .line 247
    .line 248
    invoke-virtual {p0, v10, v11, v7}, Lcom/android/server/notification/PreferencesHelper;->updateChildrenConversationChannels(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 249
    .line 250
    .line 251
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    iget-boolean v3, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasChannelsBypassingDnd:Z

    .line 256
    .line 257
    if-ne v2, v3, :cond_8

    .line 258
    .line 259
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eq v2, v3, :cond_7

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_7
    move v12, v13

    .line 271
    goto :goto_6

    .line 272
    :cond_8
    :goto_5
    move v1, v12

    .line 273
    :goto_6
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    if-eqz v12, :cond_9

    .line 275
    .line 276
    move/from16 v2, p5

    .line 277
    .line 278
    move/from16 v3, p6

    .line 279
    .line 280
    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasChannelsBypassingDnd(IZ)V

    .line 281
    .line 282
    .line 283
    :cond_9
    if-eqz v1, :cond_a

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 286
    .line 287
    .line 288
    :cond_a
    return-void

    .line 289
    :cond_b
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 290
    .line 291
    const-string v1, "Channel does not exist"

    .line 292
    .line 293
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :goto_7
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    throw v0
.end method

.method public final updateZenPolicy(IZZ)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x5

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    new-instance v15, Landroid/app/NotificationManager$Policy;

    .line 15
    .line 16
    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 17
    .line 18
    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 19
    .line 20
    iget v8, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 21
    .line 22
    iget v9, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 23
    .line 24
    iget v11, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 25
    .line 26
    iget v12, v2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    iget v14, v2, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v5, v15

    .line 39
    move/from16 v10, p2

    .line 40
    .line 41
    move-object v3, v15

    .line 42
    move-object v15, v2

    .line 43
    invoke-direct/range {v5 .. v15}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v4, 0x4

    .line 50
    :goto_0
    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;II)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v3, Landroid/app/NotificationManager$Policy;

    .line 55
    .line 56
    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 57
    .line 58
    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 59
    .line 60
    iget v8, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 61
    .line 62
    iget v9, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 63
    .line 64
    iget v11, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 65
    .line 66
    move-object v5, v3

    .line 67
    move/from16 v10, p2

    .line 68
    .line 69
    invoke-direct/range {v5 .. v11}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 70
    .line 71
    .line 72
    if-eqz p3, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v4, 0x4

    .line 76
    :goto_1
    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;II)V

    .line 77
    .line 78
    .line 79
    :goto_2
    return-void
.end method

.method public final writePackageXml(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Lcom/android/modules/utils/TypedXmlSerializer;Landroid/util/ArrayMap;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v3, "name"

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v4, "importance"

    .line 21
    .line 22
    const/16 v5, -0x3e8

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Landroid/util/Pair;

    .line 27
    .line 28
    iget v6, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 29
    .line 30
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v7, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Landroid/util/Pair;

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    const/4 v6, 0x3

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v6, 0x0

    .line 60
    :goto_0
    invoke-interface {p2, v0, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 68
    .line 69
    if-eq p3, v5, :cond_2

    .line 70
    .line 71
    invoke-interface {p2, v0, v4, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 75
    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    const-string/jumbo v2, "priority"

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    .line 83
    .line 84
    :cond_3
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 85
    .line 86
    if-eq p3, v5, :cond_4

    .line 87
    .line 88
    const-string/jumbo v2, "visibility"

    .line 89
    .line 90
    .line 91
    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    .line 93
    .line 94
    :cond_4
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 95
    .line 96
    if-eqz p3, :cond_5

    .line 97
    .line 98
    const-string v2, "allow_bubble"

    .line 99
    .line 100
    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    .line 102
    .line 103
    :cond_5
    const-string/jumbo p3, "show_badge"

    .line 104
    .line 105
    .line 106
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 107
    .line 108
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    const-string p3, "app_user_locked_fields"

    .line 112
    .line 113
    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 114
    .line 115
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .line 117
    .line 118
    const-string/jumbo p3, "sent_invalid_msg"

    .line 119
    .line 120
    .line 121
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 122
    .line 123
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    .line 125
    .line 126
    const-string/jumbo p3, "sent_valid_msg"

    .line 127
    .line 128
    .line 129
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 130
    .line 131
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    .line 133
    .line 134
    const-string/jumbo p3, "user_demote_msg_app"

    .line 135
    .line 136
    .line 137
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 138
    .line 139
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    .line 141
    .line 142
    const-string/jumbo p3, "sent_valid_bubble"

    .line 143
    .line 144
    .line 145
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 146
    .line 147
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/android/server/notification/Flags;->persistIncompleteRestoreData()Z

    .line 151
    .line 152
    .line 153
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 154
    .line 155
    const/16 v2, -0x2710

    .line 156
    .line 157
    if-ne p3, v2, :cond_6

    .line 158
    .line 159
    const-string p3, "creation_time"

    .line 160
    .line 161
    iget-wide v6, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    .line 162
    .line 163
    invoke-interface {p2, v0, p3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    .line 165
    .line 166
    const-string/jumbo p3, "userid"

    .line 167
    .line 168
    .line 169
    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userId:I

    .line 170
    .line 171
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    .line 173
    .line 174
    :cond_6
    const-string p3, "allow_edge_lighting"

    .line 175
    .line 176
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    .line 177
    .line 178
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    .line 180
    .line 181
    const-string p3, "allow_sub_display_noti"

    .line 182
    .line 183
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    .line 184
    .line 185
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    .line 187
    .line 188
    const-string p3, "allow_ongoing_activity_setting"

    .line 189
    .line 190
    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    .line 191
    .line 192
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    .line 194
    .line 195
    const-string/jumbo p3, "notification_alerts_enabled"

    .line 196
    .line 197
    .line 198
    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    .line 199
    .line 200
    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    .line 202
    .line 203
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    .line 204
    .line 205
    const/4 v2, -0x1

    .line 206
    if-eq p3, v2, :cond_7

    .line 207
    .line 208
    const-string/jumbo v2, "mute_for_wearable_app"

    .line 209
    .line 210
    .line 211
    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    .line 213
    .line 214
    :cond_7
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 215
    .line 216
    if-eq p3, v5, :cond_8

    .line 217
    .line 218
    const-string v2, "app_lockscreen_visibility"

    .line 219
    .line 220
    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    .line 222
    .line 223
    :cond_8
    iget-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 224
    .line 225
    const/4 v2, 0x1

    .line 226
    if-eq p3, v2, :cond_9

    .line 227
    .line 228
    const-string v4, "allow_popup"

    .line 229
    .line 230
    invoke-interface {p2, v0, v4, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    .line 232
    .line 233
    :cond_9
    iget-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 234
    .line 235
    if-eqz p3, :cond_a

    .line 236
    .line 237
    const-string v4, "enable_reminder"

    .line 238
    .line 239
    invoke-interface {p2, v0, v4, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    .line 241
    .line 242
    :cond_a
    const-string/jumbo p3, "uid"

    .line 243
    .line 244
    .line 245
    if-nez p4, :cond_b

    .line 246
    .line 247
    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 248
    .line 249
    invoke-interface {p2, v0, p3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    .line 251
    .line 252
    :cond_b
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 253
    .line 254
    if-eqz v4, :cond_d

    .line 255
    .line 256
    const-string v4, "delegate"

    .line 257
    .line 258
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    .line 260
    .line 261
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 262
    .line 263
    iget-object v5, v5, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    .line 264
    .line 265
    invoke-interface {p2, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    .line 267
    .line 268
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 269
    .line 270
    iget v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 271
    .line 272
    invoke-interface {p2, v0, p3, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    .line 274
    .line 275
    iget-object p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 276
    .line 277
    iget-boolean p3, p3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 278
    .line 279
    if-eq p3, v2, :cond_c

    .line 280
    .line 281
    const-string v2, "enabled"

    .line 282
    .line 283
    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    .line 285
    .line 286
    :cond_c
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    .line 288
    .line 289
    :cond_d
    iget-object p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 290
    .line 291
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_e

    .line 304
    .line 305
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 310
    .line 311
    invoke-virtual {v2, p2}, Landroid/app/NotificationChannelGroup;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_e
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 316
    .line 317
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    :cond_f
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result p3

    .line 329
    if-eqz p3, :cond_11

    .line 330
    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    check-cast p3, Landroid/app/NotificationChannel;

    .line 336
    .line 337
    if-eqz p4, :cond_10

    .line 338
    .line 339
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-nez v2, :cond_f

    .line 344
    .line 345
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 346
    .line 347
    invoke-virtual {p3, p2, v2}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_10
    invoke-virtual {p3, p2}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 352
    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_11
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    .line 357
    .line 358
    return-void
.end method
