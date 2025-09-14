.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

.field public static final sObserverLeakDetectedUid:Landroid/util/ArraySet;


# instance fields
.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mCache:Landroid/util/SparseArray;

.field public final mCacheReceiver:Lcom/android/server/content/ContentService$1;

.field public final mContext:Landroid/content/Context;

.field public final mFactoryTest:Z

.field public final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field public mSyncManager:Lcom/android/server/content/SyncManager;

.field public final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArraySet;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/content/ContentService$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 38
    .line 39
    const-class p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 40
    .line 41
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 46
    .line 47
    new-instance v1, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 55
    .line 56
    iget-object v2, p2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v2

    .line 59
    :try_start_0
    iput-object v1, p2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    new-instance v4, Landroid/content/IntentFilter;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 68
    .line 69
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    .line 73
    .line 74
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 78
    .line 79
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 83
    .line 84
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo p2, "package"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v6, 0x0

    .line 97
    move-object v1, p1

    .line 98
    move-object v2, v0

    .line 99
    move-object v3, p2

    .line 100
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 104
    .line 105
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    move-object v1, p1

    .line 110
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    const-class p1, Landroid/accounts/AccountManagerInternal;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/accounts/AccountManagerInternal;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 122
    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p0
.end method

.method public static clampPeriod(J)J
    .locals 4

    .line 1
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    cmp-long v2, p0, v0

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    const-string v2, "Requested poll frequency of "

    .line 13
    .line 14
    const-string v3, " seconds being rounded up to "

    .line 15
    .line 16
    invoke-static {v2, p0, p1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string/jumbo p1, "s."

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "ContentService"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-wide p0, v0

    .line 39
    :cond_0
    return-wide p0
.end method

.method public static getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .locals 11

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo v0, "v_exemption"

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eq v2, v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x2

    .line 38
    if-le v1, v3, :cond_b

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    if-ne v1, v4, :cond_2

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    const/4 v5, 0x6

    .line 46
    if-le v1, v5, :cond_4

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return v0

    .line 52
    :cond_4
    :goto_0
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x5

    .line 54
    const/16 v8, 0xa

    .line 55
    .line 56
    const/16 v9, 0x14

    .line 57
    .line 58
    const/4 v10, 0x1

    .line 59
    packed-switch v1, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    :pswitch_0
    move v1, v0

    .line 63
    goto :goto_1

    .line 64
    :pswitch_1
    move v1, v9

    .line 65
    goto :goto_1

    .line 66
    :pswitch_2
    const/16 v1, 0x13

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_3
    const/16 v1, 0x12

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_4
    const/16 v1, 0x11

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_5
    const/16 v1, 0x10

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_6
    const/16 v1, 0xe

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_7
    const/16 v1, 0xd

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :pswitch_8
    const/16 v1, 0xc

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_9
    const/16 v1, 0xb

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_a
    move v1, v8

    .line 91
    goto :goto_1

    .line 92
    :pswitch_b
    const/16 v1, 0x9

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_c
    const/16 v1, 0x8

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_d
    const/4 v1, 0x7

    .line 99
    goto :goto_1

    .line 100
    :pswitch_e
    move v1, v5

    .line 101
    goto :goto_1

    .line 102
    :pswitch_f
    move v1, v7

    .line 103
    goto :goto_1

    .line 104
    :pswitch_10
    move v1, v6

    .line 105
    goto :goto_1

    .line 106
    :pswitch_11
    move v1, v4

    .line 107
    goto :goto_1

    .line 108
    :pswitch_12
    move v1, v3

    .line 109
    goto :goto_1

    .line 110
    :pswitch_13
    move v1, v10

    .line 111
    :goto_1
    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eq p1, v8, :cond_a

    .line 116
    .line 117
    if-eq p1, v9, :cond_9

    .line 118
    .line 119
    const/16 v3, 0x1e

    .line 120
    .line 121
    if-eq p1, v3, :cond_8

    .line 122
    .line 123
    const/16 v3, 0x28

    .line 124
    .line 125
    if-eq p1, v3, :cond_7

    .line 126
    .line 127
    const/16 v3, 0x32

    .line 128
    .line 129
    if-eq p1, v3, :cond_6

    .line 130
    .line 131
    const/16 v3, 0x3c

    .line 132
    .line 133
    if-eq p1, v3, :cond_5

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    move v0, v5

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    move v0, v7

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    move v0, v6

    .line 141
    goto :goto_2

    .line 142
    :cond_8
    move v0, v4

    .line 143
    goto :goto_2

    .line 144
    :cond_9
    move v0, v3

    .line 145
    goto :goto_2

    .line 146
    :cond_a
    move v0, v10

    .line 147
    :goto_2
    const/16 p1, 0x1d4

    .line 148
    .line 149
    invoke-static {p1, p0, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZI)V

    .line 150
    .line 151
    .line 152
    return v10

    .line 153
    :cond_b
    :goto_3
    return v3

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static validateExtras(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "v_exemption"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/16 p1, 0x3e8

    .line 13
    .line 14
    if-eq p0, p1, :cond_1

    .line 15
    .line 16
    const/16 p1, 0x7d0

    .line 17
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "ContentService"

    .line 22
    .line 23
    const-string p1, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    const-string p1, "Invalid extras specified."

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 16
    .line 17
    const-string/jumbo v2, "no permission to write the sync settings"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-static {v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p4, p5}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-static {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 57
    .line 58
    .line 59
    move-result-wide p4

    .line 60
    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 61
    .line 62
    invoke-direct {v4, p1, p2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v9, p3

    .line 70
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p1, "Authority must not be empty."

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p1, "Account must not be null"

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 18
    .line 19
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v3

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final cancelRequest(Landroid/content/SyncRequest;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "cancelRequest() by uid="

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    .line 13
    .line 14
    const-string/jumbo v3, "no permission to write the sync settings"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    new-instance v2, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 53
    .line 54
    invoke-direct {v8, v6, v7, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v8, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object p1, p1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 87
    .line 88
    const/16 v1, 0xe

    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, v8, v2}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "API"

    .line 115
    .line 116
    invoke-virtual {p0, v8, v2, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_1
    invoke-static {v4, v5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public final cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p1, "Authority must be non-empty"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v1, "no permission to modify the sync settings for user "

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz p3, :cond_2

    .line 37
    .line 38
    const-string p0, "ContentService"

    .line 39
    .line 40
    const-string/jumbo p1, "cname not null."

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    :try_start_0
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "API"

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v0, "ContentService"

    .line 5
    .line 6
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 15
    .line 16
    const-string v0, "  "

    .line 17
    .line 18
    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "-a"

    .line 22
    .line 23
    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 31
    :try_start_2
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p2, "SyncManager not available yet"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/PrintWriter;Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 48
    .line 49
    .line 50
    const-string p2, "Observer tree:"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 56
    .line 57
    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    const/4 v0, 0x2

    .line 59
    :try_start_3
    new-array v8, v0, [I

    .line 60
    .line 61
    new-instance v9, Landroid/util/SparseIntArray;

    .line 62
    .line 63
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 67
    .line 68
    const-string v3, ""

    .line 69
    .line 70
    move-object v1, p1

    .line 71
    move-object v2, p3

    .line 72
    move-object v4, v8

    .line 73
    move-object v5, v9

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 78
    .line 79
    .line 80
    new-instance p3, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    move v1, v0

    .line 87
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ge v1, v2, :cond_2

    .line 92
    .line 93
    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_2
    new-instance v1, Lcom/android/server/content/ContentService$2;

    .line 111
    .line 112
    invoke-direct {v1, v9}, Lcom/android/server/content/ContentService$2;-><init>(Landroid/util/SparseIntArray;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    .line 117
    .line 118
    move v1, v0

    .line 119
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-ge v1, v2, :cond_3

    .line 124
    .line 125
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    const-string v3, "  pid "

    .line 136
    .line 137
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 141
    .line 142
    .line 143
    const-string v3, ": "

    .line 144
    .line 145
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 153
    .line 154
    .line 155
    const-string v2, " observers"

    .line 156
    .line 157
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 167
    .line 168
    .line 169
    const-string p3, "Total number of nodes: "

    .line 170
    .line 171
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    aget p3, v8, v0

    .line 175
    .line 176
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 177
    .line 178
    .line 179
    const-string p3, "Total number of observers: "

    .line 180
    .line 181
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 p3, 0x1

    .line 185
    aget p3, v8, p3

    .line 186
    .line 187
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 188
    .line 189
    .line 190
    sget-object p3, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 191
    .line 192
    invoke-virtual {p3, p1}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 196
    .line 197
    .line 198
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    :try_start_4
    sget-object p2, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    .line 200
    .line 201
    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 203
    .line 204
    .line 205
    const-string p3, "Observer leaking UIDs: "

    .line 206
    .line 207
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 218
    :try_start_6
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 219
    .line 220
    monitor-enter p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 221
    :try_start_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 222
    .line 223
    .line 224
    const-string p3, "Cached content:"

    .line 225
    .line 226
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 230
    .line 231
    .line 232
    :goto_3
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 233
    .line 234
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 235
    .line 236
    .line 237
    move-result p3

    .line 238
    if-ge v0, p3, :cond_4

    .line 239
    .line 240
    new-instance p3, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v1, "User "

    .line 246
    .line 247
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 251
    .line 252
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v1, ":"

    .line 260
    .line 261
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 272
    .line 273
    .line 274
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 275
    .line 276
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 284
    .line 285
    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :catchall_2
    move-exception p1

    .line 290
    goto :goto_4

    .line 291
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 292
    .line 293
    .line 294
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 295
    :try_start_8
    invoke-static {v6, v7}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 296
    .line 297
    .line 298
    monitor-exit p0

    .line 299
    return-void

    .line 300
    :catchall_3
    move-exception p1

    .line 301
    goto :goto_7

    .line 302
    :goto_4
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 303
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 304
    :catchall_4
    move-exception p1

    .line 305
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 306
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 307
    :goto_5
    :try_start_d
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 308
    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 309
    :goto_6
    :try_start_f
    invoke-static {v6, v7}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 310
    .line 311
    .line 312
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 313
    :goto_7
    monitor-exit p0

    .line 314
    throw p1
.end method

.method public final enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    new-instance p0, Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    return-object p0
.end method

.method public final getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 22
    .line 23
    const-string v2, "ContentService"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string v1, "android.permission.CACHE_CONTENT"

    .line 31
    .line 32
    const-string v2, "ContentService"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class v1, Landroid/app/AppOpsManager;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/app/AppOpsManager;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p3, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(ILandroid/net/Uri;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 63
    .line 64
    monitor-enter p2

    .line 65
    :try_start_0
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Landroid/os/Bundle;

    .line 74
    .line 75
    monitor-exit p2

    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final getCurrentSyncs()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to read the sync settings for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.READ_SYNC_STATS"

    .line 22
    .line 23
    const-string/jumbo v2, "no permission to read the sync stats"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 55
    .line 56
    invoke-virtual {v4, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/content/ContentService;II)V

    .line 66
    .line 67
    .line 68
    move-object p0, v0

    .line 69
    check-cast p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to read the sync settings for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    .line 22
    .line 23
    const-string/jumbo v2, "no permission to read the sync settings"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    return v2

    .line 41
    :cond_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    move-object v3, p1

    .line 59
    move v4, p3

    .line 60
    move-object v5, p2

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    .line 62
    .line 63
    .line 64
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return p0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final getMasterSyncAutomatically()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getMasterSyncAutomaticallyAsUser(I)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to read the sync settings for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    .line 22
    .line 23
    const-string/jumbo v2, "no permission to read the sync settings"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_2

    .line 8
    .line 9
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    .line 12
    .line 13
    const-string/jumbo v1, "no permission to read the sync settings"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance p0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    new-instance p0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 60
    .line 61
    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p1, "Authority must not be empty"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p1, "Account must not be null"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final getProviderPackageName(ILandroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method public final getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to read sync settings for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 41
    .line 42
    invoke-static {p2, p1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v4, p1, p3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Landroid/content/SyncAdapterType;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_3

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    invoke-virtual {p0, v0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v3, p1

    .line 78
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to read sync settings for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 32
    .line 33
    invoke-virtual {v3, p1, p2}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    array-length v4, p1

    .line 40
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    array-length v4, p1

    .line 44
    const/4 v5, 0x0

    .line 45
    move v6, v5

    .line 46
    :goto_0
    if-ge v6, v4, :cond_2

    .line 47
    .line 48
    aget-object v7, p1, v6

    .line 49
    .line 50
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_1

    .line 55
    .line 56
    iget-object v8, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 57
    .line 58
    const/4 v9, 0x1

    .line 59
    invoke-virtual {v8, v0, p2, v7, v9}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-array p0, v5, [Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to read sync settings for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to read the sync settings for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    .line 22
    .line 23
    const-string/jumbo v2, "no permission to read the sync settings"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    return v2

    .line 41
    :cond_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public final getSyncManager()Lcom/android/server/content/SyncManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/content/SyncManager;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_3

    .line 6
    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "no permission to read the sync stats for user "

    .line 10
    .line 11
    .line 12
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v0, "android.permission.READ_SYNC_STATS"

    .line 28
    .line 29
    const-string/jumbo v1, "no permission to read the sync stats"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-virtual {p0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_0
    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-nez p3, :cond_1

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    :try_start_0
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 63
    .line 64
    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 72
    .line 73
    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    .line 74
    .line 75
    .line 76
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string p1, "Must call sync status with valid authority"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string p1, "Authority must not be empty"

    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final handleIncomingUser(Landroid/net/Uri;IIII)I
    .locals 10

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p5, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 5
    .line 6
    .line 7
    move-result p5

    .line 8
    :cond_0
    const-string v7, "No access to "

    .line 9
    .line 10
    const/4 v8, -0x1

    .line 11
    const-string v9, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 12
    .line 13
    if-ne p5, v8, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, v9, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    if-ltz p5, :cond_6

    .line 34
    .line 35
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eq p5, v0, :cond_5

    .line 40
    .line 41
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v1, p1

    .line 47
    move v2, p2

    .line 48
    move v3, p3

    .line 49
    move v4, p4

    .line 50
    move v5, p5

    .line 51
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    .line 52
    .line 53
    .line 54
    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    if-eqz v8, :cond_5

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p2, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/4 p4, 0x1

    .line 64
    if-nez p2, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 70
    .line 71
    invoke-virtual {p0, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 p4, 0x0

    .line 79
    :goto_0
    if-eqz p4, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, ": neither user "

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, " nor current process has "

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_5
    :goto_1
    return p5

    .line 119
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string p1, "Invalid user: "

    .line 122
    .line 123
    invoke-static {p5, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method

.method public final hasAccountAccess(Landroid/accounts/Account;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-wide/32 v1, 0xc0722ff

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final hasAuthorityAccess(IILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-wide/32 v2, 0xc589c26

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    xor-int/2addr p0, v1

    .line 28
    return p0
.end method

.method public final invalidateCacheLocked(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/util/ArrayMap;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    if-eqz p2, :cond_3

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-ge p1, p3, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Landroid/util/Pair;

    .line 35
    .line 36
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    check-cast p3, Landroid/net/Uri;

    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->isSyncActive_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-nez p3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 36
    .line 37
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 38
    .line 39
    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v0, "no permission to retrieve the sync settings for user "

    .line 7
    .line 8
    .line 9
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-nez p3, :cond_1

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    :try_start_0
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 50
    .line 51
    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 59
    .line 60
    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 61
    .line 62
    .line 63
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p1, "Invalid authority specified"

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v15

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v22

    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v23

    .line 17
    new-instance v8, Lcom/android/server/content/ContentService$ObserverCollector;

    .line 18
    .line 19
    invoke-direct {v8}, Lcom/android/server/content/ContentService$ObserverCollector;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v14, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    .line 26
    .line 27
    array-length v9, v7

    .line 28
    const/16 v33, 0x0

    .line 29
    .line 30
    move/from16 v10, v33

    .line 31
    .line 32
    :goto_0
    const/4 v13, 0x1

    .line 33
    if-ge v10, v9, :cond_5

    .line 34
    .line 35
    aget-object v11, v7, v10

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    move-object/from16 v1, p0

    .line 39
    .line 40
    move-object v2, v11

    .line 41
    move/from16 v3, v22

    .line 42
    .line 43
    move v4, v15

    .line 44
    move/from16 v6, p5

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIII)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 75
    .line 76
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    const/16 v4, 0x1a

    .line 87
    .line 88
    move/from16 v5, p6

    .line 89
    .line 90
    if-lt v5, v4, :cond_1

    .line 91
    .line 92
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    const-string v0, "ContentService"

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "Ignoring notify for "

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, " from "

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, ": "

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 135
    .line 136
    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_1
    const-string v4, "Failed to find provider"

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_2

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    const-string v1, "ContentService"

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v4, "Ignoring notify for "

    .line 154
    .line 155
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v4, " from "

    .line 162
    .line 163
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v4, ": "

    .line 170
    .line 171
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_3
    move/from16 v5, p6

    .line 186
    .line 187
    :goto_1
    invoke-virtual {v0, v1, v11}, Lcom/android/server/content/ContentService;->getProviderPackageName(ILandroid/net/Uri;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v14, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    move/from16 v5, p6

    .line 196
    .line 197
    :goto_2
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 198
    .line 199
    monitor-enter v2

    .line 200
    :try_start_0
    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    add-int/lit8 v26, v3, 0x1

    .line 209
    .line 210
    iget-object v3, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 211
    .line 212
    const/16 v27, 0x0

    .line 213
    .line 214
    move-object/from16 v24, v3

    .line 215
    .line 216
    move-object/from16 v25, v11

    .line 217
    .line 218
    move-object/from16 v28, p2

    .line 219
    .line 220
    move/from16 v29, p3

    .line 221
    .line 222
    move/from16 v30, p4

    .line 223
    .line 224
    move/from16 v31, v1

    .line 225
    .line 226
    move-object/from16 v32, v8

    .line 227
    .line 228
    invoke-virtual/range {v24 .. v32}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 229
    .line 230
    .line 231
    monitor-exit v2

    .line 232
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :catchall_0
    move-exception v0

    .line 237
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    throw v0

    .line 239
    :cond_5
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 240
    .line 241
    .line 242
    move-result-wide v1

    .line 243
    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/content/ContentService$ObserverCollector;->dispatch()V

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    move/from16 v4, v33

    .line 251
    .line 252
    :goto_4
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-ge v4, v5, :cond_9

    .line 257
    .line 258
    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Landroid/util/Pair;

    .line 263
    .line 264
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v5, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    check-cast v6, Landroid/util/Pair;

    .line 273
    .line 274
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v6, Ljava/lang/Integer;

    .line 277
    .line 278
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    move-object v12, v8

    .line 287
    check-cast v12, Ljava/lang/String;

    .line 288
    .line 289
    and-int/lit8 v8, p4, 0x1

    .line 290
    .line 291
    if-eqz v8, :cond_6

    .line 292
    .line 293
    const/4 v8, 0x0

    .line 294
    invoke-static {v15, v8}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    .line 295
    .line 296
    .line 297
    move-result v18

    .line 298
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    new-instance v11, Landroid/os/Bundle;

    .line 302
    .line 303
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string/jumbo v8, "upload"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v11, v8, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    .line 311
    .line 312
    sget-wide v16, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 313
    .line 314
    const/16 v19, -0x2

    .line 315
    .line 316
    const/4 v9, 0x0

    .line 317
    const/16 v20, 0x1

    .line 318
    .line 319
    move-object v8, v3

    .line 320
    move/from16 v10, v23

    .line 321
    .line 322
    move-object/from16 v21, v11

    .line 323
    .line 324
    move v11, v15

    .line 325
    move-object/from16 v34, v12

    .line 326
    .line 327
    move-object v12, v5

    .line 328
    move/from16 v24, v13

    .line 329
    .line 330
    move-object/from16 v13, v21

    .line 331
    .line 332
    move-object/from16 v25, v14

    .line 333
    .line 334
    move/from16 v14, v19

    .line 335
    .line 336
    move/from16 v26, v15

    .line 337
    .line 338
    move-wide/from16 v15, v16

    .line 339
    .line 340
    move/from16 v17, v20

    .line 341
    .line 342
    move/from16 v19, v26

    .line 343
    .line 344
    move/from16 v20, v22

    .line 345
    .line 346
    move-object/from16 v21, p7

    .line 347
    .line 348
    invoke-virtual/range {v8 .. v21}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_6
    move-object/from16 v34, v12

    .line 353
    .line 354
    move/from16 v24, v13

    .line 355
    .line 356
    move-object/from16 v25, v14

    .line 357
    .line 358
    move/from16 v26, v15

    .line 359
    .line 360
    :goto_5
    iget-object v8, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 361
    .line 362
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 363
    :try_start_2
    array-length v9, v7

    .line 364
    move/from16 v10, v33

    .line 365
    .line 366
    :goto_6
    if-ge v10, v9, :cond_8

    .line 367
    .line 368
    aget-object v11, v7, v10

    .line 369
    .line 370
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v12

    .line 374
    invoke-static {v12, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v12

    .line 378
    if-eqz v12, :cond_7

    .line 379
    .line 380
    move-object/from16 v12, v34

    .line 381
    .line 382
    invoke-virtual {v0, v12, v11, v6}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :catchall_1
    move-exception v0

    .line 387
    goto :goto_8

    .line 388
    :cond_7
    move-object/from16 v12, v34

    .line 389
    .line 390
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 391
    .line 392
    move-object/from16 v34, v12

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_8
    monitor-exit v8

    .line 396
    add-int/lit8 v4, v4, 0x1

    .line 397
    .line 398
    move/from16 v13, v24

    .line 399
    .line 400
    move-object/from16 v14, v25

    .line 401
    .line 402
    move/from16 v15, v26

    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :goto_8
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 408
    :catchall_2
    move-exception v0

    .line 409
    goto :goto_9

    .line 410
    :cond_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    .line 416
    .line 417
    throw v0
.end method

.method public final onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "at "

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne v0, p4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 26
    .line 27
    const-string v2, "ContentService"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string v1, "android.permission.CACHE_CONTENT"

    .line 35
    .line 36
    const-string v2, "ContentService"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-class v1, Landroid/app/AppOpsManager;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/app/AppOpsManager;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p4, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(ILandroid/net/Uri;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 67
    .line 68
    monitor-enter p2

    .line 69
    :try_start_0
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :goto_1
    monitor-exit p2

    .line 85
    return-void

    .line 86
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .locals 9

    .line 1
    if-eqz p3, :cond_5

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    const/4 v4, 0x1

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move v2, v7

    .line 17
    move v3, v6

    .line 18
    move v5, p4

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIII)I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    invoke-static {p4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1, p4}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    :goto_0
    move v8, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2, v1, p4}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v8, p4

    .line 56
    :goto_1
    const-class p4, Landroid/app/ActivityManagerInternal;

    .line 57
    .line 58
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    check-cast p4, Landroid/app/ActivityManagerInternal;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p4, v0, v8}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    if-eqz p4, :cond_4

    .line 73
    .line 74
    const/16 v0, 0x1a

    .line 75
    .line 76
    if-ge p5, v0, :cond_3

    .line 77
    .line 78
    const-string p5, "Failed to find provider"

    .line 79
    .line 80
    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    if-eqz p5, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string p0, "ContentService"

    .line 88
    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p3, "Ignoring content changes for "

    .line 92
    .line 93
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, " from "

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, ": "

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 124
    .line 125
    invoke-direct {p0, p4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_4
    :goto_2
    iget-object p4, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 130
    .line 131
    monitor-enter p4

    .line 132
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    move-object v0, v5

    .line 136
    move-object v1, p1

    .line 137
    move-object v3, p3

    .line 138
    move v4, p2

    .line 139
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 140
    .line 141
    .line 142
    monitor-exit p4

    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0

    .line 147
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string p1, "You must pass a valid uri and observer"

    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0
.end method

.method public final removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "removePeriodicSync() by uid="

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p3, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    .line 19
    .line 20
    const-string/jumbo v3, "no permission to write the sync settings"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-static {v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 60
    .line 61
    invoke-direct {v5, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v5, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 84
    .line 85
    const/16 p2, 0xe

    .line 86
    .line 87
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string p1, "Authority must not be empty"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string p1, "Account must not be null"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 19
    .line 20
    .line 21
    monitor-exit v2

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :catchall_1
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v5, p3

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v5, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual {p0, p1, v8}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    move-object v4, p2

    .line 32
    invoke-virtual {p0, v8, v2, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-static {v8, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v8, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 47
    .line 48
    .line 49
    move-result-wide v11

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v6, -0x2

    .line 55
    move-object v1, p1

    .line 56
    move v3, v8

    .line 57
    move-object v4, p2

    .line 58
    move-object/from16 v5, p3

    .line 59
    .line 60
    move-object/from16 v10, p4

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public final resetTodayStats()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v0, "Non-shell user attempted to call resetTodayStats"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public final setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "no permission to set the sync settings for user "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 28
    .line 29
    const-string/jumbo v2, "no permission to write the sync settings"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-lez p3, :cond_0

    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    :goto_0
    move v4, p3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    if-nez p3, :cond_1

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p3, -0x2

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {p0, p1, v5}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-nez p3, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-virtual {p0, v5, p4, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-nez p3, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 77
    .line 78
    move-object v1, p1

    .line 79
    move v2, p4

    .line 80
    move-object v3, p2

    .line 81
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {v7, v8}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    invoke-static {v7, v8}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string p1, "Authority must not be empty"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public final setMasterSyncAutomatically(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "no permission to set the sync status for user "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 22
    .line 23
    const-string/jumbo v2, "no permission to write the sync settings"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    const-string/jumbo v0, "roaming_policy"

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string/jumbo v2, "phone"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 50
    .line 51
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 52
    .line 53
    invoke-direct {v2, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v3, "ro.multisim.simslotcount"

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v5, 0x0

    .line 65
    if-le v3, v4, :cond_0

    .line 66
    .line 67
    move v3, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v3, v5

    .line 70
    :goto_0
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const-string v6, "ContentService"

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {v0, v2}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_1

    .line 87
    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    const-string/jumbo v1, "setMasterSyncAutomaticallyAsUser() : policy restricts sync by network-roaming."

    .line 91
    .line 92
    .line 93
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move p1, v5

    .line 97
    :cond_1
    if-eqz v3, :cond_2

    .line 98
    .line 99
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const-string/jumbo v3, "gsm.operator.isroaming"

    .line 108
    .line 109
    .line 110
    const-string/jumbo v7, "false"

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v3, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    const-string/jumbo v3, "true"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    invoke-interface {v0, v2}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    const-string/jumbo v0, "setMasterSyncAutomaticallyAsUser() : policy restricts sync by network-roaming. (dual-sim)"

    .line 135
    .line 136
    .line 137
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move p1, v5

    .line 141
    :cond_2
    const-string/jumbo v0, "restriction_policy"

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    invoke-interface {v0, v2, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_3

    .line 159
    .line 160
    const-string/jumbo v0, "setMasterSyncAutomaticallyAsUser() : policy restricts changed settings."

    .line 161
    .line 162
    .line 163
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :catch_0
    :cond_3
    move v5, p1

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 177
    .line 178
    .line 179
    move-result-wide v6

    .line 180
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 185
    .line 186
    const/4 p0, 0x0

    .line 187
    invoke-static {v3, p0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    move v1, p2

    .line 192
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(IIIIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    invoke-static {v6, v7}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    invoke-static {v6, v7}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 201
    .line 202
    .line 203
    throw p0
.end method

.method public final setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 11

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 10
    .line 11
    const-string/jumbo v2, "no permission to write the sync settings"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v1, "no permission to modify the sync settings for user "

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-virtual {p0, p1, v7}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v7, p4, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    invoke-static {v7, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 63
    .line 64
    const-string/jumbo v1, "com.google"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    :try_start_0
    const-string/jumbo v0, "restriction_policy"

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-interface {v0, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    const-string v0, "ContentService"

    .line 93
    .line 94
    const-string/jumbo v1, "policy restricts sync of google account"

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catch_0
    :cond_2
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 102
    .line 103
    .line 104
    move-result-wide v9

    .line 105
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 110
    .line 111
    move-object v2, p1

    .line 112
    move v3, p4

    .line 113
    move-object v4, p2

    .line 114
    move v5, p3

    .line 115
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string p1, "Authority must be non-empty"

    .line 130
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0
.end method

.method public final sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v3, "no permission to request sync as user: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1, v8}, Lcom/android/server/content/ContentService;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v8, v2, v1}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v8, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v8, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    .line 65
    .line 66
    .line 67
    move-result-wide v17

    .line 68
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v14

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const-string v6, "android.permission.WRITE_SYNC_SETTINGS"

    .line 85
    .line 86
    const-string/jumbo v7, "no permission to write the sync settings"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-direct {v11, v1, v6, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v12

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    move-object/from16 v16, v5

    .line 114
    .line 115
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const/4 v6, -0x2

    .line 134
    move/from16 v2, p2

    .line 135
    .line 136
    move v3, v8

    .line 137
    move-object/from16 v10, p3

    .line 138
    .line 139
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :goto_0
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_1
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 147
    .line 148
    .line 149
    throw v0
.end method

.method public final unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p1, "You must pass a valid observer"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method
