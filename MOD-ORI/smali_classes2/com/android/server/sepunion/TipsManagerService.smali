.class public final Lcom/android/server/sepunion/TipsManagerService;
.super Lcom/samsung/android/sepunion/ITipsManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final mLastDeviceConnectMsgTime:Ljava/lang/Long;


# instance fields
.field public mBootupCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public mDialCount:I

.field public mHUNDisplayCount:I

.field public final mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

.field public final mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

.field public mTipsHUNAlreadyShown:Z

.field public mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

.field public mTipsNetworkGranted:Z

.field public mTipsOnBoot:Z

.field public mTipsPackageExist:Z

.field public mWaitingCallEnd:Z


# direct methods
.method public static -$$Nest$smsendMsg(Landroid/os/Handler;II)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    int-to-long v3, p2

    .line 12
    add-long/2addr v1, v3

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/sepunion/TipsManagerService;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Long;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sepunion/ITipsManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    .line 9
    .line 10
    .line 11
    iput-object v2, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    iput v8, v0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    .line 25
    .line 26
    iput-boolean v8, v0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 27
    .line 28
    iput-boolean v8, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 29
    .line 30
    iput-boolean v8, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 33
    .line 34
    iput-boolean v8, v0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 37
    .line 38
    move-object/from16 v3, p1

    .line 39
    .line 40
    iput-object v3, v0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v4, "TipsManagerService"

    .line 43
    .line 44
    const-string v5, "[GalaxyTips] TipsManagerService"

    .line 45
    .line 46
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "com.samsung.android.app.tips"

    .line 54
    .line 55
    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 56
    .line 57
    .line 58
    new-instance v4, Landroid/content/IntentFilter;

    .line 59
    .line 60
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string/jumbo v6, "tips_trigger_count"

    .line 68
    .line 69
    .line 70
    const/4 v7, -0x2

    .line 71
    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iput v5, v0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    .line 76
    .line 77
    const/16 v6, 0x3e8

    .line 78
    .line 79
    if-ne v5, v6, :cond_0

    .line 80
    .line 81
    iput-boolean v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 82
    .line 83
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v6, "gtips_network_granted"

    .line 88
    .line 89
    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ne v5, v1, :cond_1

    .line 94
    .line 95
    iput-boolean v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 96
    .line 97
    :cond_1
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 98
    .line 99
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v1, "samsung.galaxy.tips.application.terminated"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 109
    .line 110
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v1, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    .line 114
    .line 115
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-boolean v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 119
    .line 120
    if-nez v1, :cond_2

    .line 121
    .line 122
    const-string/jumbo v1, "samsung.galaxy.tips.network_granted"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 129
    .line 130
    if-nez v1, :cond_3

    .line 131
    .line 132
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 133
    .line 134
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v1, "android.intent.action.PHONE_STATE"

    .line 138
    .line 139
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 143
    .line 144
    const/4 v7, 0x2

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v9, 0x0

    .line 147
    move-object/from16 v1, p1

    .line 148
    .line 149
    move-object v3, v5

    .line 150
    move-object v5, v6

    .line 151
    move-object v6, v9

    .line 152
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catch_0
    iput-boolean v8, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 157
    .line 158
    iput-boolean v8, v0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 159
    .line 160
    :goto_0
    new-instance v13, Landroid/content/IntentFilter;

    .line 161
    .line 162
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    .line 166
    .line 167
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 171
    .line 172
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 176
    .line 177
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v1, "package"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v10, v0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    iget-object v11, v0, Lcom/android/server/sepunion/TipsManagerService;->mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    .line 189
    .line 190
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 191
    .line 192
    const/16 v16, 0x2

    .line 193
    .line 194
    const/4 v14, 0x0

    .line 195
    const/4 v15, 0x0

    .line 196
    invoke-virtual/range {v10 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    new-instance v1, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

    .line 200
    .line 201
    invoke-direct {v1, v0}, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public static getDeviceVersion(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 2
    .line 3
    const v0, 0x138e4

    .line 4
    .line 5
    .line 6
    if-lt p0, v0, :cond_0

    .line 7
    .line 8
    div-int/lit16 v0, p0, 0x2710

    .line 9
    .line 10
    rem-int/lit16 p0, p0, 0x2710

    .line 11
    .line 12
    div-int/lit8 p0, p0, 0x64

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    if-eqz p3, :cond_e

    .line 2
    .line 3
    array-length p1, p3

    .line 4
    if-lez p1, :cond_e

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    .line 8
    .line 9
    const-string/jumbo v0, "welcome"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    const-string/jumbo v2, "tips_extras"

    .line 18
    .line 19
    .line 20
    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    .line 21
    .line 22
    const-string v4, "com.samsung.android.app.tips"

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroid/content/Intent;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const-string v0, "clearall"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v5, 0x1

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance p1, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    const-string/jumbo v0, "showbasic"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v6, 0x3

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    new-instance p1, Landroid/content/Intent;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    const-string v0, "getcustom"

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    new-instance p1, Landroid/content/Intent;

    .line 111
    .line 112
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string p2, "android.intent.action.MAIN"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    const/high16 p2, 0x18000000

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    const-string p2, "com.samsung.android.app.tips.TipsSmartItemDetailActivity"

    .line 126
    .line 127
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    const-string p2, "custom_inventory"

    .line 131
    .line 132
    aget-object p3, p3, v5

    .line 133
    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_3
    const-string v0, "fotadone"

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v7, 0x5

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    new-instance p1, Landroid/content/Intent;

    .line 153
    .line 154
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 166
    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    const-string v0, "fotaready"

    .line 172
    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const-string/jumbo v8, "tips_extras2"

    .line 178
    .line 179
    .line 180
    const/4 v9, 0x4

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    new-instance p1, Landroid/content/Intent;

    .line 184
    .line 185
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    aget-object p2, p3, v5

    .line 195
    .line 196
    invoke-virtual {p1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 202
    .line 203
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_5
    const-string/jumbo v0, "showrecent"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    const/4 v10, 0x6

    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    new-instance p1, Landroid/content/Intent;

    .line 218
    .line 219
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    .line 227
    .line 228
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 231
    .line 232
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_6
    const-string/jumbo v0, "showcontent"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_7

    .line 244
    .line 245
    new-instance p1, Landroid/content/Intent;

    .line 246
    .line 247
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    const/4 p2, 0x7

    .line 254
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    aget-object p2, p3, v5

    .line 258
    .line 259
    invoke-virtual {p1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 265
    .line 266
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_7
    const-string/jumbo v0, "showjit"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_d

    .line 278
    .line 279
    new-instance p1, Landroid/content/Intent;

    .line 280
    .line 281
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    const/16 p2, 0x8

    .line 288
    .line 289
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    aget-object p2, p3, v5

    .line 293
    .line 294
    invoke-virtual {p1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    array-length p2, p3

    .line 298
    const-string/jumbo v0, "tips_extras6"

    .line 299
    .line 300
    .line 301
    const-string/jumbo v2, "tips_extras5"

    .line 302
    .line 303
    .line 304
    const-string/jumbo v3, "tips_extras3"

    .line 305
    .line 306
    .line 307
    const-string/jumbo v4, "tips_extras4"

    .line 308
    .line 309
    .line 310
    const-string v5, ""

    .line 311
    .line 312
    if-ne p2, v1, :cond_8

    .line 313
    .line 314
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    .line 325
    .line 326
    goto :goto_0

    .line 327
    :cond_8
    array-length p2, p3

    .line 328
    if-ne p2, v6, :cond_9

    .line 329
    .line 330
    aget-object p2, p3, v1

    .line 331
    .line 332
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    goto :goto_0

    .line 345
    :cond_9
    array-length p2, p3

    .line 346
    if-ne p2, v9, :cond_a

    .line 347
    .line 348
    aget-object p2, p3, v1

    .line 349
    .line 350
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    aget-object p2, p3, v6

    .line 354
    .line 355
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    .line 363
    .line 364
    goto :goto_0

    .line 365
    :cond_a
    array-length p2, p3

    .line 366
    if-ne p2, v7, :cond_b

    .line 367
    .line 368
    aget-object p2, p3, v1

    .line 369
    .line 370
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    .line 372
    .line 373
    aget-object p2, p3, v6

    .line 374
    .line 375
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    aget-object p2, p3, v9

    .line 379
    .line 380
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    goto :goto_0

    .line 387
    :cond_b
    array-length p2, p3

    .line 388
    if-ne p2, v10, :cond_c

    .line 389
    .line 390
    aget-object p2, p3, v1

    .line 391
    .line 392
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    .line 394
    .line 395
    aget-object p2, p3, v6

    .line 396
    .line 397
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    .line 399
    .line 400
    aget-object p2, p3, v9

    .line 401
    .line 402
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    .line 404
    .line 405
    aget-object p2, p3, v7

    .line 406
    .line 407
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    .line 409
    .line 410
    :cond_c
    :goto_0
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 411
    .line 412
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 413
    .line 414
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :cond_d
    const-string/jumbo v0, "showtip"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    if-eqz p1, :cond_e

    .line 426
    .line 427
    new-instance p1, Landroid/content/Intent;

    .line 428
    .line 429
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    const/16 p2, 0x9

    .line 436
    .line 437
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    .line 439
    .line 440
    const-string/jumbo p2, "tips_id"

    .line 441
    .line 442
    .line 443
    aget-object v0, p3, v5

    .line 444
    .line 445
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    .line 447
    .line 448
    const-string/jumbo p2, "tips_title"

    .line 449
    .line 450
    .line 451
    aget-object v0, p3, v1

    .line 452
    .line 453
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    .line 455
    .line 456
    const-string/jumbo p2, "tips_text"

    .line 457
    .line 458
    .line 459
    aget-object v0, p3, v6

    .line 460
    .line 461
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    .line 463
    .line 464
    aget-object p2, p3, v9

    .line 465
    .line 466
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    move-result p2

    .line 470
    const-string/jumbo p3, "tips_condition"

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    .line 475
    .line 476
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 477
    .line 478
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 479
    .line 480
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_e
    const-string p1, "\n\n"

    .line 485
    .line 486
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    const-string p3, "[Galaxy Tips]"

    .line 490
    .line 491
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-boolean p3, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 495
    .line 496
    if-nez p3, :cond_f

    .line 497
    .line 498
    const-string p0, "Galaxy Tips is not exist this device"

    .line 499
    .line 500
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    :cond_f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    const-string p1, "ETC Values"

    .line 508
    .line 509
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const-string p1, "=========================================================================="

    .line 513
    .line 514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    const-string/jumbo p1, "mTipsNetworkGranted = "

    .line 518
    .line 519
    .line 520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 524
    .line 525
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 526
    .line 527
    .line 528
    const-string/jumbo p1, "mTipsHUNAlreadyShown = "

    .line 529
    .line 530
    .line 531
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 535
    .line 536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    .line 538
    .line 539
    const-string p1, "mDialCount = "

    .line 540
    .line 541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    .line 545
    .line 546
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 547
    .line 548
    .line 549
    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method
