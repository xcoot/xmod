.class public abstract Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mCacheEnabled:Z

.field public volatile mCacheReady:Z

.field public final mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

.field public mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

.field public mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field public mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mHandler:Landroid/os/Handler;

.field public mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public volatile mNeedToUpdateCacheForImplicitAccess:Z

.field public mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field public mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

.field public mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

.field public mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSystemAppsQueryable:Z

.field public mSystemSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    return-void
.end method

.method public static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_3

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const-string v0, ":"

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "  "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p5, p3}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method public static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v3, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {p4, v2}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v4, p0

    .line 38
    move-object v8, p3

    .line 39
    move-object v9, p4

    .line 40
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v3, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {p4, v2}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    move-object v4, p0

    .line 55
    move-object v5, p1

    .line 56
    move-object v8, p3

    .line 57
    move-object v9, p4

    .line 58
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public final canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x2710

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    .line 29
    .line 30
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v2, 0x0

    .line 59
    :goto_0
    return v2
.end method

.method public dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 6

    .line 1
    const-string v0, "  queries via forceQueryable:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 9
    .line 10
    const-string v3, "forceQueryable"

    .line 11
    .line 12
    const-string v4, "  "

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    move-object v1, p2

    .line 16
    move-object v5, p3

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const-string v0, "  queries via component:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 7
    .line 8
    const-string v0, "    "

    .line 9
    .line 10
    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 7

    .line 1
    const-string v0, "  queryable via interaction:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p3

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    aget v2, p3, v1

    .line 11
    .line 12
    const-string v3, "    User "

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, ":"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    move-object v4, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 49
    .line 50
    const-string v6, "      "

    .line 51
    .line 52
    invoke-static {p1, v4, v5, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 53
    .line 54
    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 71
    .line 72
    invoke-static {p1, v3, v2, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return-void
.end method

.method public dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const-string v0, "  queries via package name:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 7
    .line 8
    const-string v0, "    "

    .line 9
    .line 10
    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const-string v0, "  queryable via uses-library:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 7
    .line 8
    const-string v0, "    "

    .line 9
    .line 10
    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .locals 19

    move-object/from16 v0, p3

    .line 3
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return-object v9

    .line 4
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v10, 0x0

    move v11, v10

    .line 5
    :goto_0
    array-length v2, v0

    if-ge v11, v2, :cond_6

    .line 6
    aget v12, v0, v11

    .line 7
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v13

    new-array v14, v13, [I

    .line 8
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v15, v2

    move-object/from16 v16, v9

    move v7, v10

    :goto_1
    if-ltz v15, :cond_5

    move-object/from16 v6, p4

    .line 9
    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 10
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const/16 v2, 0x2710

    if-ge v4, v2, :cond_1

    :goto_2
    move v4, v10

    move v10, v7

    goto :goto_4

    .line 11
    :cond_1
    invoke-static {v14, v10, v7, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {v12, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v17

    move-object/from16 v2, p0

    move v9, v3

    move-object/from16 v3, p1

    move/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v6, p2

    move v10, v7

    move v7, v12

    .line 13
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v16, :cond_3

    .line 14
    new-array v2, v13, [I

    goto :goto_3

    :cond_3
    move-object/from16 v2, v16

    :goto_3
    not-int v3, v9

    sub-int v7, v10, v3

    const/4 v4, 0x0

    .line 15
    invoke-static {v14, v3, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    aput v18, v14, v3

    add-int/lit8 v3, v3, 0x1

    .line 17
    invoke-static {v2, v4, v14, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v16, v2

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_4
    move v7, v10

    :goto_5
    add-int/lit8 v15, v15, -0x1

    move v10, v4

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    move v4, v10

    move v10, v7

    .line 18
    invoke-static {v14, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move v10, v4

    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p4, p4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public isForceQueryable(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isImplicitlyQueryable(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isQueryableViaComponent(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 15
    .line 16
    invoke-static {p2, p4, p0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    sub-int/2addr p2, p1

    .line 28
    :goto_0
    if-ltz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 35
    .line 36
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 37
    .line 38
    .line 39
    move-result-object p5

    .line 40
    if-eqz p5, :cond_1

    .line 41
    .line 42
    iget-object p6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 43
    .line 44
    invoke-static {p5, p4, p6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 45
    .line 46
    .line 47
    move-result p5

    .line 48
    if-eqz p5, :cond_1

    .line 49
    .line 50
    return p1

    .line 51
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public isQueryableViaPackage(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isQueryableViaUsesLibrary(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isQueryableViaUsesPermission(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isRetainedImplicitlyQueryable(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .locals 11

    .line 1
    move-object v6, p0

    .line 2
    move v2, p2

    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    const-string v7, " BLOCKED"

    .line 6
    .line 7
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    const/16 v0, 0x2710

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    if-lt v8, v0, :cond_8

    .line 15
    .line 16
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lt v1, v0, :cond_8

    .line 21
    .line 22
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v8, v0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    invoke-static {v8}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v10, 0x1

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v5, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->allowSdkSandboxQueryIntentActivities()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move v9, v10

    .line 75
    :cond_2
    :goto_0
    return v9

    .line 76
    :cond_3
    iget-boolean v0, v6, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-boolean v0, v6, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p0, p2, v0, v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    return v9

    .line 95
    :cond_4
    move-object v1, p1

    .line 96
    check-cast v1, Lcom/android/server/pm/Computer;

    .line 97
    .line 98
    move-object v0, p0

    .line 99
    move v2, p2

    .line 100
    move-object v3, p3

    .line 101
    move-object v4, p4

    .line 102
    move/from16 v5, p5

    .line 103
    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    return v9

    .line 111
    :cond_5
    iget-object v0, v6, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 112
    .line 113
    invoke-interface {v0, v8}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v1, "interaction: "

    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-nez p3, :cond_6

    .line 127
    .line 128
    const-string/jumbo v1, "system"

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    move-object v1, p3

    .line 133
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, " -> "

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-object v1, p4

    .line 142
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "AppsFilter"

    .line 153
    .line 154
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_7
    return v10

    .line 158
    :cond_8
    :goto_2
    return v9
.end method

.method public final shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move/from16 v9, p5

    .line 8
    .line 9
    iget-object v1, v7, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v10, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return v10

    .line 19
    :cond_0
    const/4 v11, 0x1

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "No setting found for non system uid "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "AppsFilter"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return v11

    .line 42
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    if-eq v12, v13, :cond_1a

    .line 51
    .line 52
    const/16 v1, 0x2710

    .line 53
    .line 54
    if-lt v12, v1, :cond_1a

    .line 55
    .line 56
    if-ge v13, v1, :cond_2

    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_2
    new-instance v14, Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 63
    .line 64
    .line 65
    instance-of v1, v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    move-object/from16 v1, p1

    .line 83
    .line 84
    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 93
    .line 94
    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    move-object/from16 v1, p1

    .line 99
    .line 100
    move-object v2, v0

    .line 101
    :cond_4
    :goto_0
    move-object v15, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object/from16 v1, p1

    .line 104
    .line 105
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 110
    .line 111
    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :goto_1
    if-eqz v15, :cond_6

    .line 116
    .line 117
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    iget-object v0, v7, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 124
    .line 125
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v0, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    return v10

    .line 136
    :cond_6
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    sub-int/2addr v0, v11

    .line 141
    :goto_2
    if-ltz v0, :cond_8

    .line 142
    .line 143
    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 148
    .line 149
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    iget-object v3, v7, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 156
    .line 157
    invoke-interface {v3, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_7

    .line 162
    .line 163
    return v10

    .line 164
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    .line 168
    .line 169
    if-eqz v15, :cond_9

    .line 170
    .line 171
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-eqz v2, :cond_b

    .line 176
    .line 177
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    return v10

    .line 192
    :cond_9
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    sub-int/2addr v2, v11

    .line 197
    :goto_3
    if-ltz v2, :cond_b

    .line 198
    .line 199
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 204
    .line 205
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-eqz v3, :cond_a

    .line 210
    .line 211
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_a

    .line 220
    .line 221
    return v10

    .line 222
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_b
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    if-nez v16, :cond_d

    .line 230
    .line 231
    const-wide/16 v0, 0x2000

    .line 232
    .line 233
    move-object/from16 v2, p4

    .line 234
    .line 235
    invoke-static {v2, v0, v1, v9}, Lcom/samsung/android/server/pm/PmServerUtils;->installedOnSdcardAsUser(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_c

    .line 240
    .line 241
    return v10

    .line 242
    :cond_c
    return v11

    .line 243
    :cond_d
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_e

    .line 248
    .line 249
    return v10

    .line 250
    :cond_e
    invoke-virtual {v7, v13}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_f

    .line 255
    .line 256
    return v10

    .line 257
    :cond_f
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_10

    .line 262
    .line 263
    return v10

    .line 264
    :cond_10
    iget-object v0, v7, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_11

    .line 271
    .line 272
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_12

    .line 277
    .line 278
    return v10

    .line 279
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    move-object/from16 v0, p0

    .line 284
    .line 285
    move-object v2, v15

    .line 286
    move-object v3, v14

    .line 287
    move-object/from16 v4, v16

    .line 288
    .line 289
    move v5, v12

    .line 290
    move v6, v13

    .line 291
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_12

    .line 296
    .line 297
    return v10

    .line 298
    :cond_12
    invoke-static {v9, v13}, Landroid/os/UserHandle;->getUid(II)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_13

    .line 307
    .line 308
    return v10

    .line 309
    :cond_13
    invoke-static {v9, v13}, Landroid/os/UserHandle;->getUid(II)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_14

    .line 318
    .line 319
    return v10

    .line 320
    :cond_14
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v14}, Landroid/util/ArraySet;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-nez v1, :cond_16

    .line 329
    .line 330
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    move v2, v10

    .line 335
    :goto_4
    if-ge v2, v1, :cond_17

    .line 336
    .line 337
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 342
    .line 343
    iget-object v4, v7, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 344
    .line 345
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v4, v0, v3}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_15

    .line 354
    .line 355
    return v10

    .line 356
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_16
    iget-object v1, v7, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 360
    .line 361
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v1, v0, v2}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_17

    .line 370
    .line 371
    return v10

    .line 372
    :cond_17
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_18

    .line 377
    .line 378
    return v10

    .line 379
    :cond_18
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesPermission(II)Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-eqz v0, :cond_19

    .line 384
    .line 385
    return v10

    .line 386
    :cond_19
    return v11

    .line 387
    :cond_1a
    :goto_5
    return v10
.end method

.method public shouldFilterApplicationUsingCache(III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "AppsFilter"

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "Encountered calling uid with no cached rules: "

    .line 15
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-gez p3, :cond_1

    .line 41
    .line 42
    const-string p0, "Encountered calling -> target with no cached rules: "

    .line 43
    .line 44
    const-string p3, " -> "

    .line 45
    .line 46
    invoke-static {p1, p2, p0, p3, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 59
    .line 60
    aget p2, p1, v0

    .line 61
    .line 62
    aget p1, p1, p3

    .line 63
    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0
.end method
