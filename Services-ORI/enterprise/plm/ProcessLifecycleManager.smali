.class public final Lcom/android/server/enterprise/plm/ProcessLifecycleManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static volatile sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;


# instance fields
.field public final mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string v1, "ProcessLifecycleManager"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 24
    .line 25
    new-instance v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 26
    .line 27
    new-instance v4, Lcom/android/server/enterprise/plm/context/PeripheralContext;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p1, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v0, v3}, Lcom/android/server/enterprise/plm/ProcessAdapter;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 42
    .line 43
    new-instance v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 44
    .line 45
    new-instance v4, Lcom/android/server/enterprise/plm/context/KnoxZtContext;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, p1, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v0, v3}, Lcom/android/server/enterprise/plm/ProcessAdapter;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v2, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 60
    .line 61
    invoke-direct {v2, v0, p1, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 65
    .line 66
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

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
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 27
    .line 28
    return-object p0
.end method
