.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;ZLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$0:Z

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessRecord;

    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$3:Z

    .line 12
    iput-object p5, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$0:Z

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 5
    iget-object v2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessRecord;

    .line 7
    iget-boolean v3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$3:Z

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 24
    move-result-object v0

    .line 25
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 27
    const-wide/16 v4, 0x400

    .line 29
    invoke-interface {v0, p1, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_4

    .line 35
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 37
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 39
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 47
    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 49
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 52
    move-result-object v1

    .line 53
    iget-object v4, v1, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 55
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 58
    move-result v4

    .line 59
    add-int/lit8 v4, v4, -0x1

    .line 61
    :goto_0
    if-ltz v4, :cond_2

    .line 63
    iget-object v5, v1, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 65
    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    .line 71
    iget-object v6, v5, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    .line 73
    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    iget-object v7, v5, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    .line 76
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 78
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 81
    move-result v7

    .line 82
    if-ltz v7, :cond_1

    .line 84
    invoke-virtual {v5, v0, v7}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_1
    monitor-exit v6

    .line 91
    add-int/lit8 v4, v4, -0x1

    .line 93
    goto :goto_0

    .line 94
    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    throw p0

    .line 96
    :cond_2
    if-eqz v3, :cond_3

    .line 98
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 100
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->updateActivityInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 103
    :cond_3
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 105
    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 108
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 110
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    goto :goto_3

    .line 114
    :catch_0
    const-string p0, "ActivityManager"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "Failed to update "

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string p1, " ApplicationInfo for "

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_4
    :goto_3
    return-void
.end method
