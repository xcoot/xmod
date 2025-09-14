.class public final Lcom/android/server/sepunion/SemPluginLocalService;
.super Lcom/samsung/android/sepunion/SemPluginManagerLocal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/SemPluginLocalService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addLedNotification(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v2, "CoverManager_CoverManagerServiceImpl"

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 39
    .line 40
    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const-string p0, "addLedNotification : caller is invalid"

    .line 47
    .line 48
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v0, "addLedNotification"

    .line 53
    .line 54
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 51
    .line 52
    const-string p1, "disableCoverManager : caller is invalid"

    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz p2, :cond_5

    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 71
    .line 72
    iget-boolean p2, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x1

    .line 80
    if-eq v0, v2, :cond_2

    .line 81
    .line 82
    move v0, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move v0, v1

    .line 85
    :goto_0
    if-nez p2, :cond_3

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    :cond_3
    move v1, v2

    .line 90
    :cond_4
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 91
    .line 92
    iput-boolean v0, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 93
    .line 94
    const-string p2, "CoverManager_"

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "disable CoverManager : "

    .line 99
    .line 100
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, ", pkg : "

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    .line 122
    .line 123
    new-instance p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;

    .line 124
    .line 125
    invoke-direct {p2, p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_1
    return-void

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw p0
.end method

.method public final disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    const-string v0, "cover"

    .line 4
    .line 5
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    iget-object p4, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    if-nez p4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    iput-object p4, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 17
    .line 18
    const-string v0, "deprecated getCoverStateForExternal"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final getCoverSwitchState()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 43
    .line 44
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 51
    .line 52
    const-string v0, "getCoverSwitchState : caller is invalid"

    .line 53
    .line 54
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 60
    .line 61
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-boolean p0, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    :goto_0
    return p0
.end method

.method public final getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/high16 p0, 0x10c0000

    .line 17
    .line 18
    return p0
.end method

.method public final isCoverManagerDisabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    const-string v0, "Caller is not SYSTEM_PROCESS"

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 42
    .line 43
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 44
    .line 45
    return p0
.end method

.method public final onCoverAppCovered(Z)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    const-string p1, "Caller is not SYSTEM_PROCESS"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_2
    :goto_0
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v2, "onCoverAppCovered : "

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 66
    .line 67
    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    .line 70
    .line 71
    iput-boolean p1, v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v2, 0x0

    .line 95
    if-lez v0, :cond_3

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v0, v2

    .line 100
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter v0

    .line 108
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    monitor-exit v0

    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 138
    .line 139
    sget-object v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 140
    .line 141
    iget-object v4, v1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    move v2, v1

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    monitor-exit v0

    .line 160
    goto :goto_5

    .line 161
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    throw p0

    .line 163
    :cond_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 166
    .line 167
    monitor-enter v0

    .line 168
    :try_start_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 185
    .line 186
    iget-object v3, v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 187
    .line 188
    const-string v4, "CoverManager_StateNotifier"

    .line 189
    .line 190
    if-nez v3, :cond_9

    .line 191
    .line 192
    const-string/jumbo v1, "onCoverAppStateChanged : token is null"

    .line 193
    .line 194
    .line 195
    invoke-static {v4, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    iget v1, v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    .line 201
    and-int/lit8 v1, v1, 0x4

    .line 202
    .line 203
    if-eqz v1, :cond_8

    .line 204
    .line 205
    :try_start_3
    invoke-static {v3}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_8

    .line 210
    .line 211
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;->onCoverAppCovered(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :catch_0
    move-exception v1

    .line 216
    :try_start_4
    const-string v3, "Failed onCoverAppCovered callback"

    .line 217
    .line 218
    invoke-static {v4, v3, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :catchall_1
    move-exception p0

    .line 223
    goto :goto_6

    .line 224
    :cond_a
    monitor-exit v0

    .line 225
    :goto_5
    return v2

    .line 226
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 227
    throw p0

    .line 228
    :catchall_2
    move-exception p0

    .line 229
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 230
    throw p0
.end method

.method public final registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "deprecated registerListenerCallbackForExternal "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    .line 38
    .line 39
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final removeLedNotification(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v2, "CoverManager_CoverManagerServiceImpl"

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 39
    .line 40
    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "removeLedNotification : caller is invalid"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v0, "removeLedNotification"

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public final requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final sendDataToCover(I[B)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 27
    .line 28
    if-eq p1, p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "sendDataToCover : caller is invalid"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "com.android.systemui"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    const-string/jumbo p0, "sendDataToCover : ignoring call from SystemUI"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public final sendDataToNfcLedCover(I[B)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v2, "CoverManager_CoverManagerServiceImpl"

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "sendStateDataToCover : caller is invalid"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "com.android.systemui"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const-string/jumbo p0, "sendDataToCover : ignoring call from SystemUI"

    .line 75
    .line 76
    .line 77
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 88
    .line 89
    if-eqz p0, :cond_9

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const/4 v0, -0x2

    .line 96
    const/4 v1, -0x1

    .line 97
    if-eq p1, v1, :cond_6

    .line 98
    .line 99
    if-ne p1, v0, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 103
    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 110
    .line 111
    if-eqz p0, :cond_9

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    :goto_0
    const/4 p2, 0x1

    .line 118
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 119
    .line 120
    if-ne p1, v1, :cond_7

    .line 121
    .line 122
    const/4 p1, 0x7

    .line 123
    invoke-virtual {v2, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    if-ne p1, v0, :cond_8

    .line 128
    .line 129
    const/16 p1, 0xe

    .line 130
    .line 131
    invoke-virtual {v2, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 135
    .line 136
    if-nez p1, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 139
    .line 140
    .line 141
    :cond_9
    :goto_2
    return-void
.end method

.method public final sendPowerKeyToCover()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    const-string v0, "Caller is not SYSTEM_PROCESS"

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_2
    :goto_0
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 42
    .line 43
    const-string/jumbo v1, "sendPowerKeyToCover"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 57
    .line 58
    if-eqz p0, :cond_5

    .line 59
    .line 60
    const-string v0, "CoverManager_GenericCoverServiceController"

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    :try_start_0
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    const-string v4, "Shouldn\'t happen"

    .line 83
    .line 84
    invoke-static {v0, v4, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    .line 99
    .line 100
    :cond_5
    return-void
.end method

.method public final sendSystemEvent(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 37
    .line 38
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 45
    .line 46
    const-string/jumbo p1, "sendSystemEvent : caller is invalid"

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final unregisterCallback(Landroid/os/IBinder;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x0

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    iget-object v5, v3, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-interface {p1, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move-object v3, v4

    .line 83
    :goto_0
    const/4 v1, 0x1

    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-interface {p1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 101
    .line 102
    .line 103
    monitor-exit v0

    .line 104
    :goto_1
    move v2, v1

    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_4

    .line 108
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 110
    .line 111
    monitor-enter v3

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 129
    .line 130
    if-eqz v5, :cond_6

    .line 131
    .line 132
    iget-object v6, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 133
    .line 134
    invoke-interface {p1, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_6

    .line 139
    .line 140
    move-object v4, v5

    .line 141
    :cond_7
    if-eqz v4, :cond_9

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 158
    .line 159
    .line 160
    monitor-exit v3

    .line 161
    goto :goto_1

    .line 162
    :catchall_1
    move-exception p0

    .line 163
    goto :goto_3

    .line 164
    :cond_9
    monitor-exit v3

    .line 165
    :goto_2
    return v2

    .line 166
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    throw p0

    .line 168
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    throw p0
.end method

.method public final unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "deprecated unregisterCallbackForExternal "

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    .line 38
    .line 39
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 46
    .line 47
    const-string/jumbo p1, "unregisterNfcTouchListenerCallback : caller is invalid"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v0, v2

    .line 65
    :goto_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    if-eqz p0, :cond_5

    .line 69
    .line 70
    const-string v3, "CoverManager_GenericCoverServiceController"

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v5, "unRegisterNfcTouchListenerCallback: binder = "

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v5, ", pid : "

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v5, ", uid : "

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 115
    .line 116
    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_4

    .line 128
    .line 129
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 134
    .line 135
    if-eqz v5, :cond_3

    .line 136
    .line 137
    iget-object v6, v5, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    .line 138
    .line 139
    invoke-interface {p1, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_3

    .line 144
    .line 145
    const-string v4, "CoverManager_GenericCoverServiceController"

    .line 146
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string/jumbo v7, "remove listener: "

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v7, v5, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-static {v4, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v5, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 176
    .line 177
    .line 178
    monitor-exit v3

    .line 179
    move p0, v1

    .line 180
    goto :goto_3

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const-string p0, "CoverManager_GenericCoverServiceController"

    .line 185
    .line 186
    const-string p1, "UnregisterNfcTouchListener: listener does not exist"

    .line 187
    .line 188
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    throw p0

    .line 194
    :cond_5
    :goto_2
    move p0, v2

    .line 195
    :goto_3
    if-nez v0, :cond_6

    .line 196
    .line 197
    if-eqz p0, :cond_7

    .line 198
    .line 199
    :cond_6
    move v2, v1

    .line 200
    :cond_7
    :goto_4
    return v2
.end method
