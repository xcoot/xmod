.class public final Lcom/android/server/people/data/DataManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MAX_CACHED_RECENT_SHORTCUTS:I = 0x1e


# instance fields
.field public final mBroadcastReceivers:Landroid/util/SparseArray;

.field public mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

.field public final mContactsContentObservers:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mConversationsListeners:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/people/data/DataManager$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

.field public final mNotificationListeners:Landroid/util/SparseArray;

.field public mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitors:Landroid/util/SparseArray;

.field public final mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

.field public final mUsageStatsQueryFutures:Landroid/util/SparseArray;

.field public final mUserDataArray:Landroid/util/SparseArray;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 23
    .line 24
    iget-boolean v2, v1, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public static -$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1, v2}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object v1, p0

    .line 45
    :goto_0
    return-object v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/people/data/DataManager$Injector;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$Injector;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance v2, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 30
    .line 31
    new-instance v2, Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 37
    .line 38
    new-instance v2, Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 44
    .line 45
    new-instance v2, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    .line 51
    .line 52
    new-instance v2, Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 58
    .line 59
    new-instance v2, Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 77
    .line 78
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    .line 84
    new-instance p1, Landroid/os/Handler;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    return-void
.end method

.method public static getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "Conversation does not exist"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static mimeTypeToShareEventType(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string/jumbo v1, "text/"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x4

    .line 15
    return p0

    .line 16
    :cond_1
    const-string v1, "image/"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x5

    .line 25
    return p0

    .line 26
    :cond_2
    const-string/jumbo v1, "video/"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    const/4 p0, 0x6

    .line 36
    return p0

    .line 37
    :cond_3
    return v0
.end method


# virtual methods
.method public addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v3, v0, v1}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iput-wide v3, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    .line 57
    .line 58
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput v1, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    iput-object v1, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    .line 78
    .line 79
    iput-object v1, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    .line 80
    .line 81
    const/16 v3, 0x20

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    array-length v5, v5

    .line 98
    if-eqz v5, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    aget-object v5, v5, v4

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/app/Person;->isImportant()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    const/16 v7, 0x8

    .line 111
    .line 112
    invoke-virtual {v2, v7, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/app/Person;->isBot()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    const/16 v7, 0x10

    .line 120
    .line 121
    invoke-virtual {v2, v7, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/app/Person;->getUri()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-eqz v5, :cond_6

    .line 129
    .line 130
    iget-object v6, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance v7, Lcom/android/server/people/data/ContactsQueryHelper;

    .line 138
    .line 139
    invoke-direct {v7, v6}, Lcom/android/server/people/data/ContactsQueryHelper;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_3

    .line 147
    .line 148
    :cond_2
    move v1, v4

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    const-string/jumbo v9, "tel"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    const-string v9, "lookup"

    .line 166
    .line 167
    const-string v10, "_id"

    .line 168
    .line 169
    const-string v11, "has_phone_number"

    .line 170
    .line 171
    const-string/jumbo v12, "starred"

    .line 172
    .line 173
    .line 174
    if-eqz v8, :cond_4

    .line 175
    .line 176
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 181
    .line 182
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    filled-new-array {v10, v9, v12, v11}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v7, v5, v6, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    goto :goto_1

    .line 199
    :cond_4
    const-string/jumbo v8, "mailto"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-eqz v8, :cond_5

    .line 211
    .line 212
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 217
    .line 218
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    filled-new-array {v10, v9, v12, v11}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v7, v5, v6, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    goto :goto_1

    .line 235
    :cond_5
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 236
    .line 237
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_2

    .line 246
    .line 247
    filled-new-array {v10, v9, v12, v11}, [Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v7, v6, v5, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    :goto_1
    if-eqz v1, :cond_6

    .line 256
    .line 257
    iget-object v1, v7, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 258
    .line 259
    iput-object v1, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    .line 260
    .line 261
    iget-boolean v1, v7, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 262
    .line 263
    invoke-virtual {v2, v3, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v7, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    .line 267
    .line 268
    iput-object v1, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    .line 269
    .line 270
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-virtual {v0, v7}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    move-object v5, p0

    .line 293
    move-object v6, p1

    .line 294
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    if-eqz p1, :cond_7

    .line 299
    .line 300
    const/4 v0, 0x1

    .line 301
    new-array v0, v0, [Landroid/app/people/ConversationChannel;

    .line 302
    .line 303
    aput-object p1, v0, v4

    .line 304
    .line 305
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    .line 310
    .line 311
    .line 312
    :cond_7
    return-void
.end method

.method public final cleanupCachedShortcuts(I)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v2, 0x1e

    .line 27
    .line 28
    if-gt v0, v2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v2, v0, -0x1e

    .line 36
    .line 37
    new-instance v3, Ljava/util/PriorityQueue;

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1d

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v3, v0, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/util/Pair;

    .line 72
    .line 73
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v5, Lcom/android/server/people/data/ConversationInfo;

    .line 80
    .line 81
    iget-object v5, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(ILjava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-le v1, v2, :cond_2

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/util/Pair;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 124
    .line 125
    move-object v7, v1

    .line 126
    check-cast v7, Ljava/lang/String;

    .line 127
    .line 128
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    const/16 v10, 0x4000

    .line 139
    .line 140
    move v5, p1

    .line 141
    move v9, p1

    .line 142
    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    return-void
.end method

.method public final forPackagesInProfile(ILjava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public getCallLogContentObserverForTesting()Landroid/database/ContentObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContactsContentObserverForTesting(I)Landroid/database/ContentObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/database/ContentObserver;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    const/16 v6, 0x40

    .line 9
    invoke-virtual {v1, v6}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 10
    const-string v1, "DataManager"

    const-string v6, "Shortcut no longer found"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, v0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 13
    new-instance v6, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v5

    .line 14
    :cond_1
    iget-object v6, v0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v2, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v9

    .line 15
    iget-object v6, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 16
    check-cast v6, Lcom/android/server/notification/NotificationManagerService$18;

    iget-object v7, v1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v6, v9, v2, v7}, Lcom/android/server/notification/NotificationManagerService$18;->getNotificationChannel(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 17
    iget-object v5, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 18
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    .line 19
    check-cast v5, Lcom/android/server/notification/NotificationManagerService$18;

    invoke-virtual {v5, v9, v2, v6}, Lcom/android/server/notification/NotificationManagerService$18;->getNotificationChannelGroup(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v5

    :cond_2
    move-object v11, v5

    .line 20
    new-instance v5, Landroid/app/people/ConversationChannel;

    .line 21
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 22
    iget-object v0, v1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v16, v2

    goto :goto_0

    .line 26
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 27
    :goto_0
    iget-wide v12, v1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    const/4 v15, 0x0

    move-object v7, v5

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v16}, Landroid/app/people/ConversationChannel;-><init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZZLjava/util/List;)V

    :cond_4
    :goto_1
    return-object v5
.end method

.method public final getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;
    .locals 14

    move-object v0, p0

    .line 1
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 2
    iget-object v1, v0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v2, v0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc13

    move-object v6, p1

    move/from16 v11, p2

    .line 5
    invoke-virtual/range {v1 .. v13}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p4

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    return-object v0
.end method

.method public final getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "No conversations exist for package "

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p1, "No settings exist for package "

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public getMmsSmsContentObserverForTesting()Landroid/database/ContentObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotificationListenerServiceForTesting(I)Lcom/android/server/people/data/DataManager$NotificationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 8
    .line 9
    check-cast p0, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/people/data/PackageData;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method

.method public getPackageMonitorForTesting(I)Lcom/android/internal/content/PackageMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getUnlockedUserData(I)Lcom/android/server/people/data/UserData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/people/data/UserData;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public getUserDataForTesting(I)Lcom/android/server/people/data/UserData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/people/data/UserData;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hasActiveNotifications(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    .line 13
    .line 14
    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p1, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final initialize()V
    .locals 4

    .line 1
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 10
    .line 11
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-class v1, Landroid/os/UserManager;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/UserManager;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 44
    .line 45
    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    new-instance v2, Landroid/content/IntentFilter;

    .line 63
    .line 64
    const-string v3, "ConversationStatusExpiration"

    .line 65
    .line 66
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "expStatus"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v3, 0x4

    .line 75
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    .line 79
    .line 80
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public notifyConversationsListeners(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final removeConversations(ILjava/lang/String;Ljava/util/Set;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_9

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    :try_start_0
    iget-object v4, v3, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 27
    .line 28
    check-cast v4, Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/server/people/data/ConversationInfo;

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    monitor-exit v3

    .line 39
    const/4 v4, 0x0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_1
    iget-object v5, v4, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    iget-object v6, v3, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 49
    .line 50
    check-cast v6, Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v5, v4, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    iget-object v6, v3, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 60
    .line 61
    check-cast v6, Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v5, v4, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    iget-object v6, v3, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v6, Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v5, v4, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    iget-object v6, v3, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 82
    .line 83
    check-cast v6, Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v3}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    .line 90
    .line 91
    .line 92
    :goto_1
    if-nez v4, :cond_6

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3, v5, v2}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, v4, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const/4 v5, 0x1

    .line 112
    invoke-virtual {v3, v5, v2}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_7
    iget-object v2, v4, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_0

    .line 122
    .line 123
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 124
    .line 125
    iget-object v4, v0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v3, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 134
    .line 135
    const/4 v4, 0x2

    .line 136
    invoke-virtual {v3, v4, v2}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_8
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    .line 140
    .line 141
    iget-object v4, v0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v3, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_0

    .line 148
    .line 149
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 150
    .line 151
    const/4 v4, 0x3

    .line 152
    invoke-virtual {v3, v4, v2}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw p0

    .line 159
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 170
    .line 171
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$18;

    .line 172
    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$18;->onConversationRemoved(ILjava/lang/String;Ljava/util/Set;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_0
    move-exception p0

    .line 178
    const-string p1, "DataManager"

    .line 179
    .line 180
    new-instance p3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v0, "Package not found when removing conversation: "

    .line 183
    .line 184
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .line 196
    .line 197
    :goto_3
    return-void
.end method

.method public updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    new-array p2, p2, [Landroid/app/people/ConversationChannel;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    aput-object p1, p2, p3

    .line 20
    .line 21
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
