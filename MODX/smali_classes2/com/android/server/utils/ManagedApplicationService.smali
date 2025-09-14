.class public final Lcom/android/server/utils/ManagedApplicationService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBoundInterface:Landroid/os/IInterface;

.field public final mChecker:Lcom/android/server/vr/VrManagerService$3;

.field public final mClientLabel:I

.field public final mComponent:Landroid/content/ComponentName;

.field public mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

.field public final mContext:Landroid/content/Context;

.field public final mEventCb:Lcom/android/server/vr/VrManagerService$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsImportant:Z

.field public mLastRetryTimeMs:J

.field public final mLock:Ljava/lang/Object;

.field public mNextRetryDurationMs:J

.field public mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

.field public mRetryCount:I

.field public final mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

.field public final mRetryType:I

.field public mRetrying:Z

.field public final mSettingsAction:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/vr/VrManagerService$3;ILandroid/os/Handler;Lcom/android/server/vr/VrManagerService$1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const-wide/16 v0, 0x7d0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    iput p3, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 27
    .line 28
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    .line 29
    .line 30
    iput-object p5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p6, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/vr/VrManagerService$3;

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z

    .line 36
    .line 37
    iput p7, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    .line 38
    .line 39
    iput-object p8, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iput-object p9, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final checkAndDeliverServiceDiedCbLocked()Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Service "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " has died too much, not retrying."

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "ManagedApplicationService"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    new-instance v2, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-direct {v2, v3, v0, v1, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    const/4 p0, 0x1

    .line 63
    return p0
.end method

.method public final connect()V
    .locals 9

    .line 1
    const-string v0, "Unable to bind service: "

    .line 2
    .line 3
    const-string v1, "Unable to bind service: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    monitor-exit v2

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const-string v5, "android.intent.extra.client_label"

    .line 33
    .line 34
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const-string v4, "android.intent.extra.client_intent"

    .line 42
    .line 43
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v6, Landroid/content/Intent;

    .line 46
    .line 47
    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/high16 v7, 0x4000000

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-static {v5, v8, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :cond_2
    new-instance v4, Lcom/android/server/utils/ManagedApplicationService$1;

    .line 63
    .line 64
    invoke-direct {v4, p0}, Lcom/android/server/utils/ManagedApplicationService$1;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 65
    .line 66
    .line 67
    iput-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 68
    .line 69
    iget-boolean v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    const v5, 0x4000041

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const v5, 0x4000001

    .line 78
    .line 79
    .line 80
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    new-instance v7, Landroid/os/UserHandle;

    .line 83
    .line 84
    iget v8, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 85
    .line 86
    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v3, v4, v5, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_4

    .line 94
    .line 95
    const-string v4, "ManagedApplicationService"

    .line 96
    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    :try_start_2
    const-string v4, "ManagedApplicationService"

    .line 118
    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v4, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_1
    monitor-exit v2

    .line 138
    return-void

    .line 139
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    throw p0
.end method

.method public final disconnect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final queueRetryLocked()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/32 v4, 0xfa00

    .line 10
    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    const-wide/16 v2, 0x7d0

    .line 17
    .line 18
    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    .line 22
    .line 23
    :cond_0
    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    const-wide/16 v0, 0x2

    .line 35
    .line 36
    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 37
    .line 38
    mul-long/2addr v2, v0

    .line 39
    const-wide/16 v0, 0x3e80

    .line 40
    .line 41
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 46
    .line 47
    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    iput v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    .line 52
    .line 53
    return-void
.end method

.method public final startRetriesLocked()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
