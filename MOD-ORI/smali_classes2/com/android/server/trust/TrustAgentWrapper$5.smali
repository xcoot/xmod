.class public final Lcom/android/server/trust/TrustAgentWrapper$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "TrustAgent started : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TrustAgentWrapper"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 37
    .line 38
    invoke-static {p2}, Landroid/service/trust/ITrustAgentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 45
    .line 46
    iget-object v0, p2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v2, 0x4

    .line 58
    iget v3, p2, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 59
    .line 60
    const-wide/16 v6, 0x0

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v1, v10

    .line 64
    move-object v4, p1

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 72
    .line 73
    iget-object p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Lcom/android/server/trust/TrustAgentWrapper$4;

    .line 74
    .line 75
    :try_start_0
    iget-object p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-interface {p1, p2}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 93
    .line 94
    iget-boolean p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    :try_start_1
    iget-object p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    invoke-interface {p2, v1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_1
    move-exception p1

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iput-boolean v1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_1
    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 117
    .line 118
    iput-boolean v0, p1, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    .line 119
    .line 120
    :cond_3
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 121
    .line 122
    iget-object p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 123
    .line 124
    iget p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 133
    .line 134
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 135
    .line 136
    :try_start_2
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 137
    .line 138
    if-eqz p0, :cond_5

    .line 139
    .line 140
    invoke-interface {p0}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_2
    move-exception p0

    .line 145
    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    :try_start_3
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 155
    .line 156
    if-eqz p0, :cond_5

    .line 157
    .line 158
    invoke-interface {p0}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catch_3
    move-exception p0

    .line 163
    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "TrustAgent disconnected : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TrustAgentWrapper"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput-boolean v2, v0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v12, Lcom/android/server/trust/TrustArchive$Event;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v4, 0x3

    .line 50
    iget v5, v0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 51
    .line 52
    const-wide/16 v8, 0x0

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    move-object v3, v12

    .line 56
    move-object v6, p1

    .line 57
    invoke-direct/range {v3 .. v11}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v12}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 72
    .line 73
    iget-boolean v0, p1, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p1, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 78
    .line 79
    const/4 v2, 0x4

    .line 80
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    const-wide/32 v5, 0x493e0

    .line 88
    .line 89
    .line 90
    add-long/2addr v3, v5

    .line 91
    iput-wide v3, p1, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 92
    .line 93
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 97
    .line 98
    iget-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 99
    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 105
    .line 106
    const/16 v0, 0x100

    .line 107
    .line 108
    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 109
    .line 110
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 111
    .line 112
    .line 113
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-interface {p0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    const-string p0, "TrustManagerService"

    .line 122
    .line 123
    const-string p1, "Error locking screen when called from trust agent"

    .line 124
    .line 125
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_0
    return-void
.end method
