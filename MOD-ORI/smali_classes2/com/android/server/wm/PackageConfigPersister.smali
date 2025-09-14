.class public final Lcom/android/server/wm/PackageConfigPersister;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mModified:Landroid/util/SparseArray;

.field public final mPendingWrite:Landroid/util/SparseArray;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    return-void
.end method

.method public static findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/HashMap;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 16
    .line 17
    return-object p0
.end method

.method public static findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public final findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .locals 3

    .line 1
    const-string v0, "App-specific configuration not found for packageName: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-static {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, "PackageConfigPersister"

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, " and userId: "

    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit v1

    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;-><init>(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-object p1

    .line 57
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final removePackage(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {v0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget v3, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/HashMap;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 31
    .line 32
    .line 33
    const-class v0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-static {v0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 47
    .line 48
    iget v2, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/util/HashMap;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_2
    new-instance p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;

    .line 64
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;-><init>(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public final removeUser(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/HashMap;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageConfigPersister;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_2
    :goto_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-static {v1, p3, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p3, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 13
    .line 14
    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1, p3, p0, p2}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    invoke-virtual {p1, p0, p0, p0}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-static {v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v4, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-static {v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move v4, v2

    .line 23
    :goto_0
    iget-object v5, p3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    iget-object v6, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iput-object v5, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 37
    .line 38
    move v5, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    move v5, v2

    .line 41
    :goto_2
    iget-object v6, p3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    .line 42
    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    iput-object v6, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 55
    .line 56
    move v6, v3

    .line 57
    goto :goto_4

    .line 58
    :cond_4
    :goto_3
    move v6, v2

    .line 59
    :goto_4
    iget p3, p3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    .line 60
    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p3, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_5

    .line 72
    .line 73
    move p3, v2

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    iput-object p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 76
    .line 77
    move p3, v3

    .line 78
    :goto_5
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 79
    .line 80
    if-eqz v7, :cond_6

    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v7, :cond_8

    .line 87
    .line 88
    :cond_6
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 89
    .line 90
    if-eqz v7, :cond_7

    .line 91
    .line 92
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_8

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto/16 :goto_c

    .line 101
    .line 102
    :cond_7
    :goto_6
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v7, :cond_11

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-nez v7, :cond_8

    .line 111
    .line 112
    goto :goto_b

    .line 113
    :cond_8
    if-nez v5, :cond_9

    .line 114
    .line 115
    if-nez v6, :cond_9

    .line 116
    .line 117
    if-nez p3, :cond_9

    .line 118
    .line 119
    monitor-exit v0

    .line 120
    return v2

    .line 121
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 122
    .line 123
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 124
    .line 125
    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 126
    .line 127
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-nez p1, :cond_a

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 134
    .line 135
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 136
    .line 137
    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 138
    .line 139
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :cond_a
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 144
    .line 145
    if-eqz p2, :cond_c

    .line 146
    .line 147
    iget-object p3, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {p2, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-eqz p3, :cond_b

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_b
    iput-object p2, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_c
    :goto_7
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 160
    .line 161
    if-eqz p2, :cond_e

    .line 162
    .line 163
    iget-object p3, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 164
    .line 165
    invoke-virtual {p2, p3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-eqz p3, :cond_d

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_d
    iput-object p2, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_e
    :goto_8
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 176
    .line 177
    if-eqz p2, :cond_10

    .line 178
    .line 179
    iget-object p3, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-virtual {p2, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    if-eqz p3, :cond_f

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_f
    iput-object p2, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 189
    .line 190
    :goto_9
    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 191
    .line 192
    new-instance p3, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    .line 193
    .line 194
    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;-><init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p3, v2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 198
    .line 199
    .line 200
    monitor-exit v0

    .line 201
    return v3

    .line 202
    :cond_10
    :goto_a
    monitor-exit v0

    .line 203
    return v2

    .line 204
    :cond_11
    :goto_b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(ILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    monitor-exit v0

    .line 208
    return v4

    .line 209
    :goto_c
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    throw p0
.end method
