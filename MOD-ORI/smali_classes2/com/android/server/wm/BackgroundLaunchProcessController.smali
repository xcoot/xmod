.class public final Lcom/android/server/wm/BackgroundLaunchProcessController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

.field public mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBalOptInBoundClientUids:Landroid/util/IntArray;

.field public final mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;Lcom/android/server/notification/NotificationManagerService$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "Background activity start tokens (token: originating token):"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "  - "

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string v2, ": "

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "BoundClientUids:"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw p1
.end method

.method public final getOriginatingTokensThatAllowBal()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 13
    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/app/BackgroundStartPrivileges;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->getOriginatingToken()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    move v1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0
.end method

.method public final isBoundByForegroundUid()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    :goto_0
    if-ltz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-interface {v2, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return v1

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit p0

    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v0
.end method
