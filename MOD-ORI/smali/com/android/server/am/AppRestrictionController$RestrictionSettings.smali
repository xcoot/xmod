.class public final Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRestrictionLevels:Landroid/util/SparseArrayMap;

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v2, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/lit8 v3, v3, -0x1

    .line 30
    .line 31
    :goto_1
    if-ltz v3, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 34
    .line 35
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 40
    .line 41
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 44
    .line 45
    invoke-virtual {v6, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 50
    .line 51
    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->clone()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 62
    .line 63
    invoke-virtual {v5, v6, v7, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    monitor-exit v1

    .line 75
    return-object v0

    .line 76
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eq v3, v4, :cond_2

    .line 33
    .line 34
    monitor-exit v2

    .line 35
    return v1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sub-int/2addr v3, v0

    .line 45
    :goto_0
    if-ltz v3, :cond_6

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {p1, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 58
    .line 59
    invoke-virtual {v6, v3}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eq v5, v6, :cond_3

    .line 64
    .line 65
    monitor-exit v2

    .line 66
    return v1

    .line 67
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 68
    .line 69
    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    sub-int/2addr v5, v0

    .line 74
    :goto_1
    if-ltz v5, :cond_5

    .line 75
    .line 76
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 77
    .line 78
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 83
    .line 84
    iget-object v7, v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v4, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_4

    .line 95
    .line 96
    monitor-exit v2

    .line 97
    return v1

    .line 98
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    monitor-exit v2

    .line 105
    return v0

    .line 106
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_7
    :goto_3
    return v1
.end method

.method public final forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 28
    .line 29
    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    iget v4, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v2, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {p2, v3, v4, v2}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final getRestrictionLevel(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 5
    monitor-exit v0

    return v1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 6
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-eqz v4, :cond_3

    .line 7
    iget v4, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    if-nez v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    move v3, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_4
    monitor-exit v0

    return v3

    .line 10
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRestrictionLevel(ILjava/lang/String;)I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p2

    if-nez p2, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_0
    iget p0, p2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 15
    :goto_0
    monitor-exit v0

    return p0

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 8
    .line 9
    return-object p0
.end method

.method public getXmlFileNameForUser(I)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "apprestriction"

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/io/File;

    .line 20
    .line 21
    const-string/jumbo p1, "settings.xml"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public loadFromXml(Z)V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v8, v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 4
    .line 5
    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    array-length v10, v9

    .line 16
    const/4 v0, 0x0

    .line 17
    move v11, v0

    .line 18
    :goto_0
    const/4 v0, 0x1

    .line 19
    if-ge v11, v10, :cond_4

    .line 20
    .line 21
    aget v1, v9, v11

    .line 22
    .line 23
    const-string v12, "ActivityManager"

    .line 24
    .line 25
    invoke-virtual {v7, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v13

    .line 29
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    const/4 v14, 0x2

    .line 38
    new-array v15, v14, [J

    .line 39
    .line 40
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 41
    .line 42
    invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 46
    .line 47
    .line 48
    move-result-object v16

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v17

    .line 53
    :goto_1
    invoke-interface/range {v16 .. v16}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eq v1, v0, :cond_3

    .line 58
    .line 59
    if-eq v1, v14, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-interface/range {v16 .. v16}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string/jumbo v2, "settings"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "Unexpected tag name: "

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object v1, v0

    .line 98
    move-object/from16 v19, v6

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    move-object/from16 v1, p0

    .line 102
    .line 103
    move-object/from16 v2, v16

    .line 104
    .line 105
    move-wide/from16 v3, v17

    .line 106
    .line 107
    move-object v5, v15

    .line 108
    move-object/from16 v19, v6

    .line 109
    .line 110
    move/from16 v6, p1

    .line 111
    .line 112
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadOneFromXml(Lcom/android/modules/utils/TypedXmlPullParser;J[JZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    .line 114
    .line 115
    move-object/from16 v6, v19

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    :goto_2
    move-object v1, v0

    .line 120
    goto :goto_3

    .line 121
    :catchall_2
    move-exception v0

    .line 122
    move-object/from16 v19, v6

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    move-object/from16 v19, v6

    .line 126
    .line 127
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :catch_0
    move-exception v0

    .line 132
    goto :goto_5

    .line 133
    :goto_3
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :catchall_3
    move-exception v0

    .line 138
    move-object v2, v0

    .line 139
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_4
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 143
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "Caught exception while trying to load "

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, v8, Lcom/android/server/am/AppRestrictionController;->errorMsg:Ljava/lang/String;

    .line 165
    .line 166
    :catch_1
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_4
    iget-object v1, v8, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final loadOneFromXml(Lcom/android/modules/utils/TypedXmlPullParser;J[JZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_0
    array-length v6, v2

    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    if-ge v5, v6, :cond_0

    .line 13
    .line 14
    aput-wide v7, v2, v5

    .line 15
    .line 16
    add-int/2addr v5, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x100

    .line 20
    .line 21
    move-wide v12, v7

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v14, 0x0

    .line 24
    const/4 v15, 0x0

    .line 25
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    if-ge v9, v10, :cond_9

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    invoke-interface {v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v16

    .line 43
    const/4 v7, 0x3

    .line 44
    const/4 v8, 0x2

    .line 45
    sparse-switch v16, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :sswitch_0
    const-string/jumbo v4, "curlevel"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    move v4, v8

    .line 59
    goto :goto_3

    .line 60
    :sswitch_1
    const-string/jumbo v4, "levelts"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    move v4, v7

    .line 70
    goto :goto_3

    .line 71
    :sswitch_2
    const-string/jumbo v4, "uid"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    goto :goto_3

    .line 82
    :sswitch_3
    const-string/jumbo v4, "package"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    move v4, v3

    .line 92
    goto :goto_3

    .line 93
    :sswitch_4
    const-string/jumbo v4, "reason"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    const/4 v4, 0x4

    .line 103
    goto :goto_3

    .line 104
    :cond_1
    :goto_2
    const/4 v4, -0x1

    .line 105
    :goto_3
    if-eqz v4, :cond_8

    .line 106
    .line 107
    if-eq v4, v3, :cond_7

    .line 108
    .line 109
    if-eq v4, v8, :cond_6

    .line 110
    .line 111
    if-eq v4, v7, :cond_5

    .line 112
    .line 113
    const/4 v7, 0x4

    .line 114
    if-eq v4, v7, :cond_4

    .line 115
    .line 116
    const-string/jumbo v4, "last_long_fgs_noti_ts"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_3

    .line 124
    .line 125
    const-string/jumbo v4, "last_batt_noti_ts"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_2

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    goto :goto_4

    .line 136
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 139
    .line 140
    .line 141
    throw v4

    .line 142
    :cond_3
    move v4, v3

    .line 143
    :goto_4
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    aput-wide v7, v2, v4

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    goto :goto_5

    .line 155
    :cond_5
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v12

    .line 159
    goto :goto_5

    .line 160
    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    goto :goto_5

    .line 165
    :cond_7
    move-object v5, v11

    .line 166
    goto :goto_5

    .line 167
    :cond_8
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v15
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :catch_0
    :goto_5
    add-int/2addr v9, v3

    .line 172
    const-wide/16 v7, 0x0

    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_9
    if-eqz v15, :cond_10

    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 181
    .line 182
    monitor-enter v1

    .line 183
    :try_start_2
    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-nez v4, :cond_a

    .line 188
    .line 189
    monitor-exit v1

    .line 190
    return-void

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    goto/16 :goto_b

    .line 193
    .line 194
    :cond_a
    const/4 v7, 0x0

    .line 195
    :goto_6
    array-length v8, v2

    .line 196
    if-ge v7, v8, :cond_d

    .line 197
    .line 198
    iget-object v8, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 199
    .line 200
    if-nez v8, :cond_b

    .line 201
    .line 202
    const-wide/16 v8, 0x0

    .line 203
    .line 204
    :goto_7
    const-wide/16 v10, 0x0

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_b
    aget-wide v8, v8, v7

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :goto_8
    cmp-long v8, v8, v10

    .line 211
    .line 212
    if-nez v8, :cond_c

    .line 213
    .line 214
    aget-wide v8, v2, v7

    .line 215
    .line 216
    cmp-long v16, v8, v10

    .line 217
    .line 218
    if-eqz v16, :cond_c

    .line 219
    .line 220
    const/4 v10, 0x0

    .line 221
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    .line 222
    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_c
    const/4 v10, 0x0

    .line 226
    :goto_9
    add-int/2addr v7, v3

    .line 227
    goto :goto_6

    .line 228
    :cond_d
    iget v2, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 229
    .line 230
    if-lt v2, v14, :cond_e

    .line 231
    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 234
    :cond_e
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    const/4 v1, 0x0

    .line 248
    move-object v10, v5

    .line 249
    move-wide v7, v12

    .line 250
    move-wide/from16 v12, p2

    .line 251
    .line 252
    move v2, v14

    .line 253
    move v14, v1

    .line 254
    invoke-interface/range {v9 .. v14}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    const v1, 0xff00

    .line 259
    .line 260
    .line 261
    if-eqz p5, :cond_f

    .line 262
    .line 263
    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 264
    .line 265
    iget-object v13, v9, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 266
    .line 267
    and-int v16, v6, v1

    .line 268
    .line 269
    and-int/lit16 v1, v6, 0xff

    .line 270
    .line 271
    const/4 v3, 0x1

    .line 272
    move-object v10, v5

    .line 273
    move v11, v15

    .line 274
    move v12, v2

    .line 275
    move v15, v3

    .line 276
    move/from16 v17, v1

    .line 277
    .line 278
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 279
    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_f
    and-int/2addr v1, v6

    .line 283
    and-int/lit16 v3, v6, 0xff

    .line 284
    .line 285
    invoke-virtual {v4, v2, v1, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    .line 286
    .line 287
    .line 288
    :goto_a
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 289
    .line 290
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 291
    .line 292
    monitor-enter v2

    .line 293
    :try_start_3
    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLevelChangeTime(J)V

    .line 294
    .line 295
    .line 296
    monitor-exit v2

    .line 297
    goto :goto_c

    .line 298
    :catchall_1
    move-exception v0

    .line 299
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 300
    throw v0

    .line 301
    :goto_b
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    throw v0

    .line 303
    :cond_10
    :goto_c
    return-void

    .line 304
    nop

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x37ba6dbc -> :sswitch_4
        -0x301acbba -> :sswitch_3
        0x1c450 -> :sswitch_2
        0x428d903 -> :sswitch_1
        0x21f78144 -> :sswitch_0
    .end sparse-switch
.end method

.method public persistToXml(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "ActivityManager"

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string p0, "Failed to create folder for "

    .line 24
    .line 25
    invoke-static {p1, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->toXmlByteArray(I)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    const/4 v2, 0x0

    .line 53
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "Failed to write file "

    .line 56
    .line 57
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public removeXml()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget v3, v0, v2

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz v1, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public resetToDefault()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public scheduleLoadFromXml()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public schedulePersistToXml(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 4
    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final toXmlByteArray(I)[B
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-interface {v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/lit8 v4, v4, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz v4, :cond_4

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    add-int/lit8 v5, v5, -0x1

    .line 38
    .line 39
    :goto_1
    if-ltz v5, :cond_3

    .line 40
    .line 41
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 42
    .line 43
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 48
    .line 49
    iget v7, v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 50
    .line 51
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eq v8, p1, :cond_0

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_0
    const-string/jumbo v8, "settings"

    .line 59
    .line 60
    .line 61
    invoke-interface {v2, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    .line 63
    .line 64
    const-string/jumbo v8, "uid"

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v0, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v7, "package"

    .line 71
    .line 72
    .line 73
    iget-object v8, v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {v2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v7, "curlevel"

    .line 79
    .line 80
    .line 81
    iget v8, v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 82
    .line 83
    invoke-interface {v2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v7, "levelts"

    .line 87
    .line 88
    .line 89
    iget-wide v8, v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 90
    .line 91
    invoke-interface {v2, v0, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    .line 93
    .line 94
    const-string/jumbo v7, "reason"

    .line 95
    .line 96
    .line 97
    iget v8, v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 98
    .line 99
    invoke-interface {v2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    :goto_2
    const/4 v8, 0x2

    .line 104
    if-ge v7, v8, :cond_2

    .line 105
    .line 106
    sget-object v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

    .line 107
    .line 108
    aget-object v8, v8, v7

    .line 109
    .line 110
    iget-object v9, v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 111
    .line 112
    if-nez v9, :cond_1

    .line 113
    .line 114
    const-wide/16 v9, 0x0

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_1
    aget-wide v9, v9, v7

    .line 118
    .line 119
    :goto_3
    invoke-interface {v2, v0, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    .line 121
    .line 122
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_5

    .line 127
    :cond_2
    const-string/jumbo v6, "settings"

    .line 128
    .line 129
    .line 130
    invoke-interface {v2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    .line 132
    .line 133
    :goto_4
    add-int/lit8 v5, v5, -0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :try_start_3
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 141
    .line 142
    .line 143
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 147
    .line 148
    .line 149
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 151
    .line 152
    .line 153
    return-object p0

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    goto :goto_6

    .line 156
    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 159
    .line 160
    .line 161
    goto :goto_7

    .line 162
    :catchall_2
    move-exception p1

    .line 163
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_7
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 167
    :catch_0
    return-object v0
.end method

.method public final update(IIIILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 13
    .line 14
    invoke-direct {v1, p0, p5, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p5, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
