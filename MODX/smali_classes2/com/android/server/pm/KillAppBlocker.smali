.class public final Lcom/android/server/pm/KillAppBlocker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveUids:Ljava/util/List;

.field public mRegistered:Z

.field public final mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

.field public final mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/pm/KillAppBlocker$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/pm/KillAppBlocker$1;-><init>(Lcom/android/server/pm/KillAppBlocker;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final waitAppProcessGone(Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v1, p3

    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    aget v3, p3, v0

    .line 16
    .line 17
    const-wide/32 v5, 0x20000

    .line 18
    .line 19
    .line 20
    const/16 v4, 0x3e8

    .line 21
    .line 22
    move-object v2, p2

    .line 23
    move-object v7, p4

    .line 24
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackageUidInternal(IIJLjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, -0x1

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v3, 0x14

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    .line 57
    .line 58
    check-cast p1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 70
    .line 71
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    .line 73
    const-wide/16 p2, 0x3e8

    .line 74
    .line 75
    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    return-void

    .line 79
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p1
.end method
