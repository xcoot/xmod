.class public final Lcom/android/server/appop/AppOpsCheckingServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# static fields
.field static final CURRENT_VERSION:I = 0x4


# instance fields
.field public final mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mModeChangedListeners:Ljava/util/List;

.field final mUidModes:Landroid/util/SparseArray;

.field public final mUserPackageModes:Landroid/util/SparseArray;

.field public mVersionAtBoot:I

.field public final mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

.field public mWriteScheduled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    .line 16
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 21
    new-instance v0, Lcom/android/server/appop/LegacyAppOpStateParser;

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    .line 37
    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl;)V

    .line 40
    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    .line 42
    new-instance v0, Landroid/util/AtomicFile;

    .line 44
    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 47
    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 49
    iput-object p2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 51
    iput-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public final addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final clearAllModes()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getForegroundOps(I)Landroid/util/SparseBooleanArray;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 3

    .line 9
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 12
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    .line 14
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/ArrayMap;

    .line 12
    if-nez p0, :cond_0

    .line 14
    new-instance p0, Landroid/util/SparseIntArray;

    .line 16
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/util/SparseIntArray;

    .line 29
    if-nez p0, :cond_1

    .line 31
    new-instance p0, Landroid/util/SparseIntArray;

    .line 33
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 36
    monitor-exit v0

    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    .line 41
    move-result-object p0

    .line 42
    monitor-exit v0

    .line 43
    return-object p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/util/SparseIntArray;

    .line 13
    if-nez p0, :cond_0

    .line 15
    new-instance p0, Landroid/util/SparseIntArray;

    .line 17
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final getPackageMode(IILjava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/util/ArrayMap;

    .line 13
    if-nez p0, :cond_0

    .line 15
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p3, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/util/SparseIntArray;

    .line 29
    if-nez p0, :cond_1

    .line 31
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 34
    move-result p0

    .line 35
    monitor-exit v0

    .line 36
    return p0

    .line 37
    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    .line 44
    move-result p0

    .line 45
    monitor-exit v0

    .line 46
    return p0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public getPackagesWithNonDefaultModes()Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_2

    .line 19
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/util/ArrayMap;

    .line 27
    move v5, v2

    .line 28
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 31
    move-result v6

    .line 32
    if-ge v5, v6, :cond_1

    .line 34
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Landroid/util/SparseIntArray;

    .line 40
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 43
    move-result v6

    .line 44
    if-lez v6, :cond_0

    .line 46
    iget-object v6, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 51
    move-result v6

    .line 52
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Ljava/lang/String;

    .line 58
    invoke-static {v6, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    monitor-exit v1

    .line 75
    return-object v0

    .line 76
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final getUidMode(IILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/util/SparseIntArray;

    .line 13
    if-nez p0, :cond_0

    .line 15
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 18
    move-result p0

    .line 19
    monitor-exit p3

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->get(II)I

    .line 30
    move-result p0

    .line 31
    monitor-exit p3

    .line 32
    return p0

    .line 33
    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public getUidsWithNonDefaultModes()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 18
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 29
    move-result v3

    .line 30
    if-lez v3, :cond_0

    .line 32
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit v1

    .line 52
    return-object v0

    .line 53
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final readState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    .line 9
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 11
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 13
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v3, v4, v5}, Lcom/android/server/appop/LegacyAppOpStateParser;->readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    .line 21
    move-result v2

    .line 22
    iput v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p0

    .line 30
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    throw p0

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    throw p0
.end method

.method public final removePackage(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/util/ArrayMap;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 16
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/util/SparseIntArray;

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 31
    monitor-exit v0

    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return v1

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final removeUid(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/SparseIntArray;

    .line 12
    if-nez v1, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public resetUseFullScreenIntentLocked()V
    .locals 15

    .line 1
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 9
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 11
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 17
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 19
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 25
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    const-class v4, Landroid/permission/PermissionManager;

    .line 29
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/permission/PermissionManager;

    .line 35
    const/16 v4, 0x85

    .line 37
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 43
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 45
    invoke-interface {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 52
    move-result-object v1

    .line 53
    array-length v6, v0

    .line 54
    const/4 v7, 0x0

    .line 55
    move v8, v7

    .line 56
    :goto_0
    if-ge v8, v6, :cond_2

    .line 58
    aget-object v9, v0, v8

    .line 60
    array-length v10, v1

    .line 61
    move v11, v7

    .line 62
    :goto_1
    if-ge v11, v10, :cond_1

    .line 64
    aget v12, v1, v11

    .line 66
    const-wide/16 v13, 0x0

    .line 68
    invoke-virtual {v2, v9, v13, v14, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 71
    move-result v13

    .line 72
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 75
    move-result-object v12

    .line 76
    invoke-virtual {v3, v9, v5, v12}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 79
    move-result v12

    .line 80
    and-int/lit8 v12, v12, 0x1

    .line 82
    if-nez v12, :cond_0

    .line 84
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 87
    move-result v12

    .line 88
    invoke-virtual {p0, v13, v4, v12}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(III)Z

    .line 91
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method public final scheduleFastWriteLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 10
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    .line 12
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    const-wide/16 v1, 0x2710

    .line 19
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    :cond_0
    return-void
.end method

.method public final setPackageMode(IIILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, p3, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/util/ArrayMap;

    .line 17
    if-nez v2, :cond_0

    .line 19
    if-eq p2, v0, :cond_0

    .line 21
    new-instance v2, Landroid/util/ArrayMap;

    .line 23
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v4, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_4

    .line 35
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/util/SparseIntArray;

    .line 43
    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v4, v0

    .line 51
    :goto_1
    if-ne p2, v4, :cond_2

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 55
    :cond_2
    if-ne p2, v0, :cond_3

    .line 57
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 60
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 66
    invoke-virtual {v2, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_6

    .line 75
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-nez v2, :cond_4

    .line 83
    new-instance v2, Landroid/util/ArrayMap;

    .line 85
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    :cond_4
    if-nez v3, :cond_5

    .line 95
    new-instance v3, Landroid/util/SparseIntArray;

    .line 97
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 100
    invoke-virtual {v2, p4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    .line 113
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 p0, 0x0

    .line 118
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 121
    move-result v1

    .line 122
    if-ge p0, v1, :cond_7

    .line 124
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/android/server/appop/AppOpsService$2;

    .line 130
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 132
    iget-object v1, v3, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    .line 136
    const/4 v4, 0x1

    .line 137
    invoke-direct {v2, v4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(I)V

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v5

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v6

    .line 148
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v7

    .line 152
    move-object v4, p4

    .line 153
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    add-int/lit8 p0, p0, 0x1

    .line 162
    goto :goto_3

    .line 163
    :cond_7
    return-void

    .line 164
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw p0
.end method

.method public final setUidMode(III)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "default:0"

    .line 4
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/util/SparseIntArray;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v3, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 25
    move-result v4

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :cond_0
    move v4, v1

    .line 30
    :goto_0
    const/4 v5, 0x0

    .line 31
    if-ne p3, v4, :cond_1

    .line 33
    monitor-exit v2

    .line 34
    return v5

    .line 35
    :cond_1
    if-ne p3, v1, :cond_2

    .line 37
    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 40
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 43
    move-result p3

    .line 44
    if-nez p3, :cond_4

    .line 46
    iget-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    if-nez v3, :cond_3

    .line 54
    new-instance v3, Landroid/util/SparseIntArray;

    .line 56
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    :cond_3
    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 70
    new-instance p3, Ljava/util/ArrayList;

    .line 72
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    .line 74
    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result p0

    .line 82
    if-ge v5, p0, :cond_5

    .line 84
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Lcom/android/server/appop/AppOpsService$2;

    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService$2;->onUidModeChanged(IILjava/lang/String;)V

    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    const/4 p0, 0x1

    .line 97
    return p0

    .line 98
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw p0
.end method

.method public final shutdown()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 9
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 11
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    .line 13
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->writeState()V

    .line 28
    :cond_1
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    .line 6
    const/4 v2, -0x2

    .line 7
    if-eq v1, v2, :cond_4

    .line 9
    const/4 v2, 0x4

    .line 10
    if-lt v1, v2, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "Upgrading app-ops xml from version "

    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, " to 4"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    const-string v3, "LegacyAppOpsServiceInterfaceImpl"

    .line 34
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v2, -0x1

    .line 38
    if-eq v1, v2, :cond_1

    .line 40
    const/4 v2, 0x1

    .line 41
    if-eq v1, v2, :cond_2

    .line 43
    const/4 v2, 0x2

    .line 44
    if-eq v1, v2, :cond_3

    .line 46
    const/4 v2, 0x3

    .line 47
    if-eq v1, v2, :cond_3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeRunAnyInBackgroundLocked()V

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeScheduleExactAlarmLocked()V

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->resetUseFullScreenIntentLocked()V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 62
    :cond_4
    :goto_1
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public upgradeRunAnyInBackgroundLocked()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/16 v3, 0x46

    .line 11
    const/16 v4, 0x3f

    .line 13
    if-ge v2, v0, :cond_1

    .line 15
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroid/util/SparseIntArray;

    .line 23
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 26
    move-result v4

    .line 27
    if-ltz v4, :cond_0

    .line 29
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 32
    move-result v4

    .line 33
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 44
    move-result v0

    .line 45
    move v2, v1

    .line 46
    :goto_1
    if-ge v2, v0, :cond_4

    .line 48
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 59
    move-result v6

    .line 60
    move v7, v1

    .line 61
    :goto_2
    if-ge v7, v6, :cond_3

    .line 63
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 66
    move-result-object v8

    .line 67
    check-cast v8, Landroid/util/SparseIntArray;

    .line 69
    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 72
    move-result v9

    .line 73
    if-ltz v9, :cond_2

    .line 75
    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 78
    move-result v9

    .line 79
    invoke-virtual {v8, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    return-void
.end method

.method public upgradeScheduleExactAlarmLocked()V
    .locals 13

    .line 1
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 9
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 11
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 17
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 19
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 25
    const/16 v3, 0x6b

    .line 27
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 33
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 35
    invoke-interface {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 42
    move-result-object v1

    .line 43
    array-length v4, v0

    .line 44
    const/4 v5, 0x0

    .line 45
    move v6, v5

    .line 46
    :goto_0
    if-ge v6, v4, :cond_2

    .line 48
    aget-object v7, v0, v6

    .line 50
    array-length v8, v1

    .line 51
    move v9, v5

    .line 52
    :goto_1
    if-ge v9, v8, :cond_1

    .line 54
    aget v10, v1, v9

    .line 56
    const-wide/16 v11, 0x0

    .line 58
    invoke-virtual {v2, v7, v11, v12, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 61
    move-result v10

    .line 62
    const-string/jumbo v11, "default:0"

    .line 65
    invoke-virtual {p0, v10, v3, v11}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->getUidMode(IILjava/lang/String;)I

    .line 68
    move-result v11

    .line 69
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 72
    move-result v12

    .line 73
    if-ne v11, v12, :cond_0

    .line 75
    invoke-virtual {p0, v10, v3, v5}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(III)Z

    .line 78
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method public final writeState()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "Failed to write state: "

    .line 5
    iget-object v3, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 7
    monitor-enter v3

    .line 8
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 10
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 17
    move-result-object v0

    .line 18
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    const-string v4, "app-ops"

    .line 26
    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    const-string/jumbo v4, "v"

    .line 32
    const/4 v6, 0x4

    .line 33
    invoke-interface {v0, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    new-instance v4, Landroid/util/SparseArray;

    .line 38
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 41
    new-instance v6, Landroid/util/SparseArray;

    .line 43
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 46
    iget-object v7, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    iget-object v8, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 54
    move-result v8

    .line 55
    const/4 v10, 0x0

    .line 56
    :goto_0
    if-ge v10, v8, :cond_0

    .line 58
    iget-object v11, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 63
    move-result v11

    .line 64
    iget-object v12, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 69
    move-result-object v12

    .line 70
    check-cast v12, Landroid/util/SparseIntArray;

    .line 72
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    .line 75
    move-result-object v12

    .line 76
    invoke-virtual {v4, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    add-int/lit8 v10, v10, 0x1

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto/16 :goto_8

    .line 85
    :cond_0
    iget-object v10, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 90
    move-result v10

    .line 91
    const/4 v11, 0x0

    .line 92
    :goto_1
    if-ge v11, v10, :cond_2

    .line 94
    iget-object v12, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 96
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 99
    move-result v12

    .line 100
    iget-object v13, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 102
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 105
    move-result-object v13

    .line 106
    check-cast v13, Landroid/util/ArrayMap;

    .line 108
    new-instance v14, Landroid/util/ArrayMap;

    .line 110
    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 113
    invoke-virtual {v6, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 119
    move-result v12

    .line 120
    const/4 v15, 0x0

    .line 121
    :goto_2
    if-ge v15, v12, :cond_1

    .line 123
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 126
    move-result-object v16

    .line 127
    move-object/from16 v9, v16

    .line 129
    check-cast v9, Ljava/lang/String;

    .line 131
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 134
    move-result-object v16

    .line 135
    check-cast v16, Landroid/util/SparseIntArray;

    .line 137
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v14, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v15, v15, 0x1

    .line 146
    const/4 v5, 0x0

    .line 147
    goto :goto_2

    .line 148
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 150
    const/4 v5, 0x0

    .line 151
    goto :goto_1

    .line 152
    :cond_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    const/4 v5, 0x0

    .line 154
    :goto_3
    if-ge v5, v8, :cond_4

    .line 156
    :try_start_3
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 159
    move-result v7

    .line 160
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 163
    move-result-object v9

    .line 164
    check-cast v9, Landroid/util/SparseIntArray;

    .line 166
    const-string/jumbo v11, "uid"

    .line 169
    const/4 v12, 0x0

    .line 170
    invoke-interface {v0, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const-string/jumbo v11, "n"

    .line 176
    invoke-interface {v0, v12, v11, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 182
    move-result v7

    .line 183
    const/4 v11, 0x0

    .line 184
    :goto_4
    if-ge v11, v7, :cond_3

    .line 186
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 189
    move-result v12

    .line 190
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 193
    move-result v13

    .line 194
    const-string/jumbo v14, "op"

    .line 197
    const/4 v15, 0x0

    .line 198
    invoke-interface {v0, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    const-string/jumbo v14, "n"

    .line 204
    invoke-interface {v0, v15, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string/jumbo v12, "m"

    .line 210
    invoke-interface {v0, v15, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const-string/jumbo v12, "op"

    .line 216
    invoke-interface {v0, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    add-int/lit8 v11, v11, 0x1

    .line 221
    goto :goto_4

    .line 222
    :catchall_1
    move-exception v0

    .line 223
    goto/16 :goto_b

    .line 225
    :catch_0
    move-exception v0

    .line 226
    goto/16 :goto_9

    .line 228
    :cond_3
    const-string/jumbo v7, "uid"

    .line 231
    const/4 v9, 0x0

    .line 232
    invoke-interface {v0, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 237
    goto :goto_3

    .line 238
    :cond_4
    const/4 v4, 0x0

    .line 239
    :goto_5
    if-ge v4, v10, :cond_7

    .line 241
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 244
    move-result v5

    .line 245
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 248
    move-result-object v7

    .line 249
    check-cast v7, Landroid/util/ArrayMap;

    .line 251
    const-string/jumbo v8, "user"

    .line 254
    const/4 v9, 0x0

    .line 255
    invoke-interface {v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    const-string/jumbo v8, "n"

    .line 261
    invoke-interface {v0, v9, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 267
    move-result v5

    .line 268
    const/4 v8, 0x0

    .line 269
    :goto_6
    if-ge v8, v5, :cond_6

    .line 271
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 274
    move-result-object v9

    .line 275
    check-cast v9, Ljava/lang/String;

    .line 277
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 280
    move-result-object v11

    .line 281
    check-cast v11, Landroid/util/SparseIntArray;

    .line 283
    const-string/jumbo v12, "pkg"

    .line 286
    const/4 v13, 0x0

    .line 287
    invoke-interface {v0, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    const-string/jumbo v12, "n"

    .line 293
    invoke-interface {v0, v13, v12, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    .line 299
    move-result v9

    .line 300
    const/4 v12, 0x0

    .line 301
    :goto_7
    if-ge v12, v9, :cond_5

    .line 303
    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 306
    move-result v13

    .line 307
    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 310
    move-result v14

    .line 311
    const-string/jumbo v15, "op"

    .line 314
    move/from16 v16, v5

    .line 316
    const/4 v5, 0x0

    .line 317
    invoke-interface {v0, v5, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    const-string/jumbo v15, "n"

    .line 323
    invoke-interface {v0, v5, v15, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    const-string/jumbo v13, "m"

    .line 329
    invoke-interface {v0, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const-string/jumbo v13, "op"

    .line 335
    invoke-interface {v0, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    add-int/lit8 v12, v12, 0x1

    .line 340
    move/from16 v5, v16

    .line 342
    goto :goto_7

    .line 343
    :cond_5
    move/from16 v16, v5

    .line 345
    const-string/jumbo v5, "pkg"

    .line 348
    const/4 v9, 0x0

    .line 349
    invoke-interface {v0, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    add-int/lit8 v8, v8, 0x1

    .line 354
    move/from16 v5, v16

    .line 356
    goto :goto_6

    .line 357
    :cond_6
    const-string/jumbo v5, "user"

    .line 360
    const/4 v7, 0x0

    .line 361
    invoke-interface {v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    add-int/lit8 v4, v4, 0x1

    .line 366
    goto :goto_5

    .line 367
    :cond_7
    const-string v4, "app-ops"

    .line 369
    const/4 v5, 0x0

    .line 370
    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 376
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 378
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 381
    goto :goto_a

    .line 382
    :goto_8
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 383
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 384
    :goto_9
    :try_start_6
    const-string v4, "LegacyAppOpsServiceInterfaceImpl"

    .line 386
    const-string v5, "Failed to write state, restoring backup."

    .line 388
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 393
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 396
    :goto_a
    monitor-exit v3

    .line 397
    return-void

    .line 398
    :catch_1
    move-exception v0

    .line 399
    const-string v1, "LegacyAppOpsServiceInterfaceImpl"

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v0

    .line 413
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    monitor-exit v3

    .line 417
    return-void

    .line 418
    :goto_b
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 419
    throw v0
.end method
