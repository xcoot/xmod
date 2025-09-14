.class public final Lcom/android/server/power/AdaptiveScreenOffTimeoutController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public mAdaptiveScreenOffTimeout:J

.field public final mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

.field public final mCallbacks:Lcom/android/server/power/PowerManagerService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeout:J

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final addAdaptiveScreenOffTimeoutConfigLocked(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->getScreenOffTimeout()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "AdaptiveScreenOffTimeoutConfig: "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ":"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "AdaptiveScreenOffTimeoutController"

    .line 52
    .line 53
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {v2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    xor-int/lit8 p0, p0, 0x1

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    new-instance v1, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {v1, p1, p0}, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService$1;Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final getAdaptiveScreenOffTimeoutConfigLocked()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    new-instance v2, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-direct {v2, v3, v4, v5}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;-><init>(Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object v0
.end method

.method public final removeAdaptiveScreenOffTimeoutConfigLocked(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "removeAdaptiveScreenOffTimeoutConfigLocked: "

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "AdaptiveScreenOffTimeoutController"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    xor-int/lit8 p0, p0, 0x1

    .line 52
    .line 53
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance v1, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    invoke-direct {v1, p1, p0}, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService$1;Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    .line 1
    instance-of p1, p1, Lcom/android/server/power/ForegroundPackageObserver;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-wide v2, v0

    .line 33
    :goto_0
    iget-wide v4, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeout:J

    .line 34
    .line 35
    cmp-long p2, v2, v4

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iput-wide v2, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeout:J

    .line 40
    .line 41
    const-string p2, "AdaptiveScreenOffTimeoutController"

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v5, "updateAdaptiveScreenOffTimeout: "

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-wide v5, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeout:J

    .line 52
    .line 53
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    cmp-long v0, v2, v0

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-string v0, "("

    .line 61
    .line 62
    const-string v1, ")"

    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string p1, ""

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter p1

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 89
    .line 90
    iget p2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 91
    .line 92
    or-int/lit8 p2, p2, 0x20

    .line 93
    .line 94
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 97
    .line 98
    .line 99
    monitor-exit p1

    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_2
    :goto_2
    return-void
.end method
