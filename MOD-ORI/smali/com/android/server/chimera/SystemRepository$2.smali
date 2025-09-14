.class public final Lcom/android/server/chimera/SystemRepository$2;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, v0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    move/from16 v10, p2

    .line 12
    .line 13
    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v11, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-array v2, v11, [Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    array-length v3, v2

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    iget-object v3, v0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    aget-object v4, v2, v11

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v13

    .line 49
    iget-object v3, v0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    .line 52
    .line 53
    check-cast v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    .line 70
    .line 71
    move/from16 v4, p1

    .line 72
    .line 73
    move/from16 v5, p2

    .line 74
    .line 75
    move/from16 v6, p3

    .line 76
    .line 77
    move v7, v12

    .line 78
    move-object v8, v2

    .line 79
    move v9, v13

    .line 80
    invoke-interface/range {v3 .. v9}, Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-nez v13, :cond_3

    .line 85
    .line 86
    if-eqz p3, :cond_3

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 89
    .line 90
    aget-object v2, v2, v11

    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput-object v2, v0, Lcom/android/server/chimera/SystemRepository;->mLastForegroundApp:Landroid/util/Pair;

    .line 105
    .line 106
    :cond_3
    monitor-exit v1

    .line 107
    return-void

    .line 108
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw v0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 2

    .line 1
    sget-object p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    iput v1, v0, Landroid/os/Message;->what:I

    .line 21
    .line 22
    iget-object p2, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Handler onProcessDied catch exception "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "HeimdallAlwaysRunningMonitor"

    .line 37
    .line 38
    invoke-static {p2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-object p2, p0, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
