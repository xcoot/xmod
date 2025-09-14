.class public final Lcom/android/server/systemcaptions/SystemCaptionsManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 2
    .line 3
    const v1, 0x1040334

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v2, 0x44

    .line 11
    .line 12
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 6

    .line 1
    new-instance p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 9
    .line 10
    const-string v1, "initialize()"

    .line 11
    .line 12
    const-string v2, "SystemCaptionsManagerPerUserService"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 20
    .line 21
    if-nez v0, :cond_6

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, "getRemoteServiceLocked(): Not set"

    .line 34
    .line 35
    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v3, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-boolean v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 51
    .line 52
    invoke-direct {v3, v4, v0, v5, p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 53
    .line 54
    .line 55
    iput-object v3, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const-string v0, "getRemoteServiceLocked(): initialize for user "

    .line 62
    .line 63
    invoke-static {p1, v0, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object p1, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 67
    .line 68
    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 69
    .line 70
    const-string v3, "RemoteSystemCaptionsManagerService"

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    const-string/jumbo p1, "scheduleBind(): already scheduled"

    .line 89
    .line 90
    .line 91
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    new-instance v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-direct {v0, v3}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v4}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_0
    iget-object p1, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 113
    .line 114
    :goto_1
    if-nez p1, :cond_7

    .line 115
    .line 116
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 117
    .line 118
    if-eqz p0, :cond_7

    .line 119
    .line 120
    const-string p0, "initialize(): Failed to init remote server"

    .line 121
    .line 122
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_7
    return-object p2
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    .line 8
    check-cast p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    .line 9
    .line 10
    iget-boolean p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const-string p2, "SystemCaptionsManagerPerUserService"

    .line 15
    .line 16
    const-string v0, "destroyLocked()"

    .line 17
    .line 18
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p2, p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object v0, p2, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    iput-object p2, p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 42
    .line 43
    :cond_1
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method
