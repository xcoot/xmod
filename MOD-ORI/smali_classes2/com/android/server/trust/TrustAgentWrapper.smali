.class public final Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAlarmIntent:Landroid/content/Intent;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmPendingIntent:Landroid/app/PendingIntent;

.field public mBound:Z

.field public final mBroadcastReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

.field public final mCallback:Lcom/android/server/trust/TrustAgentWrapper$4;

.field public final mConnection:Lcom/android/server/trust/TrustAgentWrapper$5;

.field public final mContext:Landroid/content/Context;

.field public mDisplayTrustGrantedMessage:Z

.field public final mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

.field public mManagingTrust:Z

.field public mMaximumTimeToLock:J

.field public mMessage:Ljava/lang/CharSequence;

.field public final mName:Landroid/content/ComponentName;

.field public mPendingSuccessfulUnlock:Z

.field public mScheduledRestartUptimeMillis:J

.field public mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field public mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field public mTrustDisabledByDpm:Z

.field public final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field public mTrustable:Z

.field public final mTrustableDowngradeReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

.field public mTrusted:Z

.field public final mUserId:I

.field public mWaitingForTrustableDowngrade:Z

.field public mWithinSecurityLockdownWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    .line 18
    .line 19
    new-instance v4, Lcom/android/server/trust/TrustAgentWrapper$1;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v4, p0, v2}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;I)V

    .line 23
    .line 24
    .line 25
    iput-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$4;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Lcom/android/server/trust/TrustAgentWrapper$4;

    .line 40
    .line 41
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$5;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$5;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Lcom/android/server/trust/TrustAgentWrapper$5;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 51
    .line 52
    const-string p2, "alarm"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/app/AlarmManager;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 61
    .line 62
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iput p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 67
    .line 68
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 73
    .line 74
    new-instance v5, Landroid/content/Intent;

    .line 75
    .line 76
    const-string v6, "android.server.trust.TRUST_EXPIRED_ACTION"

    .line 77
    .line 78
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v7, "componentName"

    .line 82
    .line 83
    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iput-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    new-instance v8, Landroid/content/IntentFilter;

    .line 109
    .line 110
    invoke-direct {v8, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v8, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v8, v5, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    .line 128
    .line 129
    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 130
    .line 131
    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/4 v5, 0x4

    .line 135
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    const-wide/32 v9, 0x493e0

    .line 143
    .line 144
    .line 145
    add-long/2addr v6, v9

    .line 146
    iput-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 147
    .line 148
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 149
    .line 150
    .line 151
    const v2, 0x4000001

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p3, v3, v2, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    iput-boolean p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 159
    .line 160
    if-eqz p3, :cond_0

    .line 161
    .line 162
    const/4 p0, 0x2

    .line 163
    const-string v6, "android.permission.PROVIDE_TRUST_AGENT"

    .line 164
    .line 165
    const/4 v7, 0x0

    .line 166
    move-object v3, p1

    .line 167
    move-object v5, v8

    .line 168
    move v8, p0

    .line 169
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string p1, "Can\'t bind to TrustAgent "

    .line 179
    .line 180
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    const-string p1, "TrustAgentWrapper"

    .line 195
    .line 196
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    :goto_0
    return-void
.end method

.method public static onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "TrustAgentWrapper"

    .line 2
    .line 3
    const-string v1, "Exception "

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "TrustAgent unbound : "

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "TrustAgentWrapper"

    .line 37
    .line 38
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v11, Lcom/android/server/trust/TrustArchive$Event;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v3, 0x5

    .line 55
    iget v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 56
    .line 57
    const-wide/16 v7, 0x0

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    move-object v2, v11

    .line 61
    invoke-direct/range {v2 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v11}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Lcom/android/server/trust/TrustAgentWrapper$5;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 95
    .line 96
    const/4 p0, 0x2

    .line 97
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final isManagingTrust()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isTrusted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final updateDevicePolicyFeatures()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 2
    .line 3
    const-string v1, "TrustAgent "

    .line 4
    .line 5
    const-string v2, "Detected trust agents disabled. Config = "

    .line 6
    .line 7
    const-string v3, "TrustAgentWrapper"

    .line 8
    .line 9
    sget-boolean v4, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v6, "updateDevicePolicyFeatures("

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v6, ")"

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v5, 0x0

    .line 39
    :try_start_0
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 40
    .line 41
    if-eqz v6, :cond_5

    .line 42
    .line 43
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v7, "device_policy"

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-virtual {v6, v7, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    and-int/lit8 v8, v8, 0x10

    .line 59
    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    iget-object v8, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 63
    .line 64
    invoke-virtual {v6, v7, v8, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    const/4 v8, 0x1

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    move v5, v8

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-lez v2, :cond_3

    .line 97
    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " disabled until it acknowledges "

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_2
    new-instance v1, Landroid/os/Binder;

    .line 130
    .line 131
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 137
    .line 138
    invoke-interface {v2, v5, v1}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    .line 141
    :cond_3
    move v5, v8

    .line 142
    goto :goto_1

    .line 143
    :catch_1
    move-exception v1

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 146
    .line 147
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v1, v2, v7}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-virtual {v6, v7, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    iget-wide v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 157
    .line 158
    cmp-long v3, v1, v3

    .line 159
    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    iput-wide v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 165
    .line 166
    if-eqz v1, :cond_5

    .line 167
    .line 168
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 171
    .line 172
    .line 173
    iput-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 176
    .line 177
    const/4 v2, 0x3

    .line 178
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :goto_2
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 186
    .line 187
    if-eq v1, v5, :cond_6

    .line 188
    .line 189
    iput-boolean v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 194
    .line 195
    .line 196
    :cond_6
    return-void
.end method
