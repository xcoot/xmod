.class public final Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChangeValuesAsUser:Ljava/util/Map;

.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

.field public final mFileName:Ljava/lang/String;

.field public final mFilePath:Ljava/lang/String;

.field public final mIdentityFlag:I

.field public mIsLoadFileCompleted:Z

.field public mIsSystemReady:Z

.field public final mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

.field public final mPersisterCallback:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFilePath:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFileName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 8
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    if-eqz p5, :cond_1

    .line 9
    sget-object p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    .line 10
    sget-object p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyHolder;->sPackageFeatureUserChangePersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 12
    iget-object p3, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 13
    :try_start_0
    iget-object p4, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mPackageFeatureUserChanges:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p4, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget p5, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    or-int/2addr p1, p5

    iput p1, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    .line 16
    iget-object p1, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 17
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    :goto_0
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    iput-object p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersisterCallback:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 21
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 22
    :goto_1
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersisterCallback:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;

    :goto_2
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-static {p3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    .line 8
    .line 9
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, " (u"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, ")"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_0

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Ljava/util/Map$Entry;

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Ljava/lang/String;

    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v7, "["

    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v7, "] "

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v7, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 137
    .line 138
    if-eqz v7, :cond_2

    .line 139
    .line 140
    if-eqz v4, :cond_2

    .line 141
    .line 142
    invoke-interface {v7, v5, v2, v4}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;->valueToString(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    return-void
.end method

.method public final getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getValue(ILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p1, "getValue, packageName is null. caller="

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "PackageFeature"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final onLoadFileCompletedAndSystemReady(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersisterCallback:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;

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
    iget-boolean v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIsSystemReady:Z

    .line 8
    .line 9
    or-int/2addr p1, v0

    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIsSystemReady:Z

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIsLoadFileCompleted:Z

    .line 13
    .line 14
    or-int/2addr p2, v0

    .line 15
    iput-boolean p2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIsLoadFileCompleted:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move p1, v0

    .line 25
    :goto_0
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIsLoadFileCompleted:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIsSystemReady:Z

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    const-string p1, "PackageFeature"

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v0, "onLoadFileCompletedAndSystemReady: flag="

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 49
    .line 50
    invoke-static {p2, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersisterCallback:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string p1, "MultiTaskingAppCompat"

    .line 61
    .line 62
    const-string p2, "Start to migrate to package manager."

    .line 63
    .line 64
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 74
    .line 75
    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    .line 76
    .line 77
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_1
    move-exception p1

    .line 125
    goto :goto_5

    .line 126
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    new-instance p2, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda2;

    .line 128
    .line 129
    invoke-direct {p2, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 133
    .line 134
    .line 135
    monitor-enter p0

    .line 136
    :try_start_2
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    .line 139
    .line 140
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_4

    .line 155
    .line 156
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    check-cast p2, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 167
    .line 168
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :catchall_2
    move-exception p1

    .line 173
    goto :goto_4

    .line 174
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 175
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 176
    .line 177
    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 179
    .line 180
    const-string p0, "MultiTaskingAppCompat"

    .line 181
    .line 182
    const-string p1, "Finish to migrate to package manager."

    .line 183
    .line 184
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 189
    throw p1

    .line 190
    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    throw p1

    .line 192
    :cond_5
    :goto_6
    return-void

    .line 193
    :goto_7
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    throw p1
.end method

.method public final putValue(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x6

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "PackageFeature"

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p2, "putValue, packageName is null. caller="

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    if-nez p3, :cond_1

    .line 31
    .line 32
    const-string p0, "PackageFeature"

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo p2, "putValue, value is null. caller="

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 70
    .line 71
    iget-object p3, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p3

    .line 74
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Integer;

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    or-int/2addr p0, v1

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    .line 99
    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    .line 110
    invoke-virtual {v1, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget-object p0, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    .line 114
    .line 115
    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const-wide/16 v1, 0x7d0

    .line 124
    .line 125
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    .line 127
    .line 128
    :goto_1
    monitor-exit p3

    .line 129
    goto :goto_3

    .line 130
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p0

    .line 132
    :cond_4
    :goto_3
    return-object v0
.end method

.method public final reset(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 13
    .line 14
    iget-object v1, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    .line 25
    .line 26
    iget-object v2, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    .line 27
    .line 28
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->resetFiles(II)V

    .line 34
    .line 35
    .line 36
    monitor-exit v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_0
    :goto_0
    return-void
.end method
