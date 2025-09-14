.class public final Lcom/android/server/am/mars/util/UidStateMgr;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidObserver:Landroid/app/IUidObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 16
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    .line 26
    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 28
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    .line 38
    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 40
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    .line 50
    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 52
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    .line 62
    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 64
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    .line 74
    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 76
    new-instance v0, Lcom/android/server/am/mars/util/UidStateMgr$1;

    .line 78
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/UidStateMgr$1;-><init>(Lcom/android/server/am/mars/util/UidStateMgr;)V

    .line 81
    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidObserver:Landroid/app/IUidObserver;

    .line 83
    return-void
.end method


# virtual methods
.method public final addToRunningList(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 22
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    sget-boolean p0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 32
    sget-object p0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v0

    .line 42
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/mars/EventRecorder;->onUidStart(Ljava/lang/Integer;J)V

    .line 45
    :cond_0
    return-void
.end method

.method public final isUidActive(I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final isUidIdle(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isUidRunning(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method
