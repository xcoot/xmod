.class public final Lcom/android/server/infra/AbstractMasterSystemService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 7
    return-void
.end method


# virtual methods
.method public final handleActiveServiceRestartedLocked(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 5
    and-int/lit8 v1, v1, 0x10

    .line 7
    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 9
    const-string v3, " is being restarted"

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 15
    if-eqz v0, :cond_3

    .line 17
    const-string v0, "Holding service for user "

    .line 19
    const-string v1, " while package "

    .line 21
    invoke-static {p1, v0, v1, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 31
    if-eqz v0, :cond_1

    .line 33
    const-string v0, "Removing service for user "

    .line 35
    const-string v1, " because package "

    .line 37
    invoke-static {p1, v0, v1, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 46
    invoke-virtual {p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 49
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 51
    iget v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 53
    and-int/lit8 v0, v0, 0x40

    .line 55
    if-eqz v0, :cond_3

    .line 57
    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 59
    if-eqz v0, :cond_2

    .line 61
    const-string v0, "Eagerly recreating service for user "

    .line 63
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 69
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 74
    invoke-virtual {p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 77
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    .line 82
    return-void
.end method

.method public final handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/util/List;

    .line 21
    move v4, v1

    .line 22
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_0

    .line 28
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 34
    invoke-virtual {v5, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 7

    .line 1
    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p3

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    :goto_0
    array-length v0, p2

    .line 32
    const/4 v2, 0x0

    .line 33
    move v3, v2

    .line 34
    :goto_1
    if-ge v3, v0, :cond_5

    .line 36
    aget-object v4, p2, v3

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_4

    .line 44
    if-nez p4, :cond_2

    .line 46
    monitor-exit p3

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 58
    move-result v5

    .line 59
    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    .line 61
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 67
    invoke-virtual {p0, v5, v1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRestartedLocked(ILjava/lang/String;)V

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 73
    invoke-virtual {v4, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 80
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    monitor-exit p3

    .line 84
    return v2

    .line 85
    :goto_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "onPackageDataCleared(): "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 30
    move-result p2

    .line 31
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 33
    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 35
    if-eqz v1, :cond_2

    .line 37
    iget-boolean v1, v1, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 39
    if-eqz v1, :cond_2

    .line 41
    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 46
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 48
    if-eqz p1, :cond_1

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v0, "onServicePackageDataClearedMultiModeLocked("

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string p2, ")"

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0

    .line 80
    :cond_2
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 82
    monitor-enter v0

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 85
    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_3

    .line 107
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 109
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 111
    if-eqz p1, :cond_3

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, "onServicePackageDataCleared("

    .line 118
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string p2, ")"

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 135
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_0

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    :goto_0
    monitor-exit v0

    .line 142
    return-void

    .line 143
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    throw p0
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onPackageModified(): "

    .line 4
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 11
    iget-boolean v3, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 13
    if-eqz v3, :cond_0

    .line 15
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 37
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 39
    if-nez v0, :cond_1

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 46
    move-result v0

    .line 47
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 49
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 51
    invoke-virtual {v2, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_6

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_1
    array-length v4, v2

    .line 59
    if-ge v3, v4, :cond_6

    .line 61
    aget-object v4, v2, v3

    .line 63
    if-nez v4, :cond_2

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 69
    move-result-object v4

    .line 70
    if-eqz v4, :cond_5

    .line 72
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_3

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 85
    invoke-virtual {v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_5

    .line 91
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 94
    move-result-object v4

    .line 95
    if-nez v4, :cond_5

    .line 97
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 99
    iget-boolean v5, v4, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 101
    if-eqz v5, :cond_4

    .line 103
    iget-object v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 105
    const-string/jumbo v5, "update cached"

    .line 108
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_4
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 113
    invoke-virtual {v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 116
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_6
    monitor-exit v1

    .line 120
    return-void

    .line 121
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget-object v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 14
    move-result p2

    .line 15
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 17
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->handlePackageRemovedMultiModeLocked(ILjava/lang/String;)V

    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_0
    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter p2

    .line 33
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 39
    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 63
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 65
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 66
    :try_start_2
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 68
    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 71
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :try_start_3
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_1

    .line 80
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object p0

    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 94
    goto :goto_0

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :try_start_5
    throw p0

    .line 98
    :catchall_2
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    monitor-exit p2

    .line 101
    return-void

    .line 102
    :goto_1
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 103
    throw p0
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "onPackageUpdateFinished(): "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 30
    move-result p2

    .line 31
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 33
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 38
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 40
    const/4 v2, 0x0

    .line 41
    if-nez v1, :cond_1

    .line 43
    move-object v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 51
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 57
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 59
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 61
    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 68
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 78
    iput-object v2, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 92
    :goto_2
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0
.end method

.method public final onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 8

    .line 1
    const-string p2, "Eagerly recreating service for user "

    .line 3
    const-string v0, "Removing service for user "

    .line 5
    const-string v1, "Holding service for user "

    .line 7
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 9
    iget-boolean v3, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 11
    if-eqz v3, :cond_0

    .line 13
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v4, "onPackageUpdateStarted(): "

    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 39
    invoke-virtual {v3, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez v2, :cond_1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 64
    return-void

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 68
    move-result v2

    .line 69
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 71
    iget-object v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 73
    monitor-enter v4

    .line 74
    :try_start_0
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 76
    iget-object v6, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 78
    if-nez v6, :cond_4

    .line 80
    new-instance v6, Landroid/util/SparseArray;

    .line 82
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 84
    iget-object v7, v7, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 89
    move-result v7

    .line 90
    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 93
    iput-object v6, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_3

    .line 99
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 101
    iget-object v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {v5, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 108
    invoke-virtual {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    .line 111
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 113
    iget v5, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 115
    and-int/lit8 v5, v5, 0x1

    .line 117
    if-eqz v5, :cond_5

    .line 119
    iget-boolean p0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 121
    if-eqz p0, :cond_8

    .line 123
    iget-object p0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string p2, " while package "

    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string p2, " is being updated"

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_2

    .line 154
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 156
    if-eqz v1, :cond_6

    .line 158
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, " because package "

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v0, " is being updated"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 190
    invoke-virtual {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 193
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 195
    iget v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 197
    and-int/lit8 v0, v0, 0x4

    .line 199
    if-eqz v0, :cond_8

    .line 201
    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 203
    if-eqz v0, :cond_7

    .line 205
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p2

    .line 219
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_7
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 227
    :cond_8
    :goto_2
    monitor-exit v4

    .line 228
    return-void

    .line 229
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    throw p0
.end method
