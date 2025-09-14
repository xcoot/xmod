.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/PackageWatchdog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/PackageWatchdog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    .line 8
    .line 9
    const-string/jumbo v3, "observing new packages"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    iget-object v4, v0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    const-string v4, "PackageWatchdog"

    .line 33
    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v6, " started monitoring health of packages "

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-instance v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-direct {v5, v7, v6, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const-string v5, "PackageWatchdog"

    .line 84
    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v7, " added the following packages to monitor "

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 117
    .line 118
    .line 119
    const-string/jumbo p0, "updated observers"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    throw p0
.end method
