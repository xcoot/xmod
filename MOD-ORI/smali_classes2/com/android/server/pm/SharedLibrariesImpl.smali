.class public final Lcom/android/server/pm/SharedLibrariesImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mObserver:Lcom/android/server/pm/SharedLibrariesImpl$1;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

.field public final mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 3
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    .line 4
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 6
    new-instance p1, Lcom/android/server/utils/WatchedArrayMap;

    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p2}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 8
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 9
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 10
    const-string v2, "SharedLibrariesImpl.mSharedLibraries"

    const/4 v3, 0x0

    invoke-direct {v1, p1, p1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 11
    iput-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 12
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    .line 13
    invoke-direct {v1, p2}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 14
    iput-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 15
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 16
    const-string v3, "SharedLibrariesImpl.mStaticLibsByDeclaringPackage"

    const/4 v4, 0x0

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 17
    iput-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 19
    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 20
    invoke-static {p0, v0, p2}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    .line 21
    new-instance p1, Lcom/android/server/pm/SharedLibrariesImpl$2;

    const/4 p2, 0x0

    .line 22
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 26
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    .line 27
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 28
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 29
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 30
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 31
    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 33
    iget-object p1, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedArrayMap;

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 34
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 35
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 37
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 38
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static hasString(Ljava/util/List;Ljava/util/List;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v1, v2

    .line 13
    :goto_0
    if-ltz v1, :cond_3

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sub-int/2addr v3, v2

    .line 20
    :goto_1
    if-ltz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public final addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    .line 13
    .line 14
    new-instance v9, Landroid/content/pm/VersionedPackage;

    .line 15
    .line 16
    const-string v1, "android"

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-direct {v9, v1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    iget-object v2, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    iget-object v5, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 30
    .line 31
    const-wide/16 v6, -0x1

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    iget-boolean v12, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-long v1, p1

    .line 22
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    invoke-interface {p3, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    invoke-interface {p3, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    const-wide/16 v1, -0x1

    .line 77
    .line 78
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    :goto_1
    return-void
.end method

.method public final collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 15

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v13, p0

    .line 1
    iget-object v1, v13, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v14

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    .line 5
    const-string/jumbo v7, "shared"

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    move-object v10, v0

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v5, 0x0

    .line 11
    const-string/jumbo v7, "static shared"

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v0

    .line 12
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v5, 0x0

    .line 15
    const-string/jumbo v7, "shared"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v0

    .line 16
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    .line 17
    iget-object v2, v14, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const-wide/32 v3, 0x879a9f0

    .line 18
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 20
    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 21
    iput v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 22
    invoke-virtual {v14, v3, v4, v2}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 23
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v5, 0x0

    .line 27
    const-string/jumbo v7, "native shared"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v0

    .line 28
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 30
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/4 v5, 0x0

    .line 32
    const-string/jumbo v7, "native shared"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v0

    .line 33
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 34
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->sdkLibIndependence()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 35
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 36
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v5

    .line 38
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sdk"

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    move-object v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 39
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v10

    :cond_7
    return-object v10
.end method

.method public final collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    const/4 v3, 0x1

    .line 40
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v6, p9

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_12

    move-object/from16 v8, p1

    .line 41
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 42
    aget-wide v10, p2, v7

    goto :goto_1

    :cond_0
    const-wide/16 v10, -0x1

    .line 43
    :goto_1
    iget-object v12, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v12

    .line 44
    :try_start_0
    iget-object v13, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v14, 0x0

    if-eqz p11, :cond_2

    .line 45
    move-object/from16 v15, p11

    check-cast v15, Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/utils/WatchedLongSparseArray;

    if-eqz v15, :cond_1

    .line 46
    iget-object v15, v15, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    .line 47
    check-cast v15, Landroid/content/pm/SharedLibraryInfo;

    goto :goto_2

    :cond_1
    move-object v15, v14

    :goto_2
    if-eqz v15, :cond_2

    goto :goto_3

    .line 48
    :cond_2
    iget-object v13, v13, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 50
    check-cast v13, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v13, :cond_3

    move-object v15, v14

    goto :goto_3

    .line 51
    :cond_3
    iget-object v13, v13, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    .line 52
    move-object v15, v10

    check-cast v15, Landroid/content/pm/SharedLibraryInfo;

    .line 53
    :goto_3
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v10, -0x9

    if-nez v15, :cond_6

    if-nez p7, :cond_5

    .line 54
    const-string/jumbo v11, "sdk"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz p4, :cond_4

    aget-boolean v11, p4, v7

    if-eqz v11, :cond_5

    :cond_4
    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v18, v5

    move v5, v3

    move/from16 v3, v18

    goto/16 :goto_8

    .line 55
    :cond_5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package "

    const-string v4, " requires unavailable "

    const-string v5, " library "

    .line 56
    invoke-static {v3, v1, v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    const-string v2, "; failing!"

    .line 58
    invoke-static {v1, v9, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 60
    invoke-virtual {v15}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    aget-wide v16, p2, v7

    cmp-long v11, v11, v16

    if-nez v11, :cond_f

    .line 61
    invoke-virtual {v15}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, p10

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v11, :cond_7

    goto :goto_4

    .line 62
    :cond_7
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v14

    :goto_4
    if-eqz v14, :cond_e

    .line 63
    aget-object v11, p3, v7

    .line 64
    array-length v12, v11

    if-le v12, v3, :cond_c

    const/16 v9, 0x1b

    move/from16 v12, p8

    if-lt v12, v9, :cond_8

    .line 65
    invoke-virtual {v14}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v9

    .line 66
    invoke-static {v9}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 67
    :cond_8
    new-array v9, v3, [Landroid/content/pm/Signature;

    .line 68
    invoke-virtual {v14}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v14

    aget-object v14, v14, v5

    aput-object v14, v9, v5

    .line 69
    invoke-static {v9}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v9

    .line 70
    :goto_5
    array-length v14, v11

    array-length v5, v9

    if-ne v14, v5, :cond_b

    .line 71
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 72
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 73
    array-length v5, v9

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v5, :cond_a

    .line 74
    aget-object v10, v9, v14

    aget-object v3, v11, v14

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    add-int/2addr v14, v3

    const/16 v10, -0x9

    goto :goto_6

    .line 75
    :cond_9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package "

    const-string v4, " requires differently signed "

    const-string v5, " library; failing!"

    .line 76
    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0x9

    .line 77
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_b
    move v3, v10

    .line 78
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Package "

    const-string v5, " requires differently signed "

    const-string v6, " library; failing!"

    .line 79
    invoke-static {v4, v1, v5, v2, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    move/from16 v12, p8

    move v3, v5

    .line 81
    :try_start_1
    aget-object v5, v11, v3

    invoke-static {v5, v3}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    invoke-virtual {v14, v5}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    .line 83
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package "

    const-string v4, " requires differently signed "

    const-string v5, " library; failing!"

    .line 84
    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    .line 85
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 86
    :catch_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package "

    const-string v4, " declares bad certificate digest for "

    const-string v5, " library "

    .line 87
    invoke-static {v3, v1, v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string v2, "; failing!"

    .line 89
    invoke-static {v1, v9, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x82

    .line 90
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 91
    :cond_e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package "

    const-string v4, " requires unavailable "

    const-string v5, " library; failing!"

    .line 92
    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    .line 93
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 94
    :cond_f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package "

    const-string v4, " requires unavailable "

    const-string v5, " library "

    .line 95
    invoke-static {v3, v1, v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v15}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; failing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_10
    move/from16 v12, p8

    move-object/from16 v13, p10

    move v3, v5

    :goto_7
    if-nez v6, :cond_11

    .line 98
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :cond_11
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :goto_8
    add-int/2addr v7, v5

    move/from16 v18, v5

    move v5, v3

    move/from16 v3, v18

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 100
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_12
    return-object v6
.end method

.method public final commitSharedLibraryChanges(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/List;Ljava/util/Map;I)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 12
    .line 13
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    move-object v7, p4

    .line 44
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p3

    .line 49
    :try_start_2
    const-string v2, "PackageManager"

    .line 50
    .line 51
    const-string/jumbo v3, "updateSharedLibraries failed: "

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    and-int/lit8 p3, p5, 0x10

    .line 58
    .line 59
    if-nez p3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 71
    .line 72
    return-object v1

    .line 73
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 75
    .line 76
    throw p0
.end method

.method public commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x2

    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-object p0, v2, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object v3, v2, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 56
    .line 57
    invoke-virtual {v3, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v0, v2, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    instance-of v0, p0, Lcom/android/server/utils/Watchable;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v2, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v1, -0x1

    .line 75
    if-ne v0, v1, :cond_2

    .line 76
    .line 77
    check-cast p0, Lcom/android/server/utils/Watchable;

    .line 78
    .line 79
    iget-object v0, v2, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    .line 80
    .line 81
    invoke-interface {p0, v0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-boolean p0, v2, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 85
    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    instance-of p0, p1, Lcom/android/server/utils/Watchable;

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    check-cast p1, Lcom/android/server/utils/Watchable;

    .line 93
    .line 94
    iget-object p0, v2, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    .line 95
    .line 96
    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {v2, v2}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    .line 9
    .line 10
    .line 11
    if-eqz p5, :cond_c

    .line 12
    .line 13
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 14
    .line 15
    invoke-virtual {v0, p5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v3, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz p3, :cond_3

    .line 80
    .line 81
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    :cond_2
    move-object v4, p3

    .line 112
    move-object v3, p4

    .line 113
    :cond_3
    if-eqz v4, :cond_0

    .line 114
    .line 115
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    new-instance v4, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    const/4 v5, 0x1

    .line 125
    invoke-direct {v4, v5}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    .line 129
    .line 130
    .line 131
    if-eqz v3, :cond_0

    .line 132
    .line 133
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 134
    .line 135
    iget-object v2, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesLibraryFiles()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-ne p1, p3, :cond_5

    .line 154
    .line 155
    invoke-interface {p0, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-nez p0, :cond_6

    .line 160
    .line 161
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 167
    .line 168
    iput-object p0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 169
    .line 170
    iget-object p0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 176
    .line 177
    .line 178
    :cond_6
    array-length p0, p6

    .line 179
    new-array p0, p0, [I

    .line 180
    .line 181
    const/4 p1, 0x0

    .line 182
    move p3, p1

    .line 183
    move p4, p3

    .line 184
    :goto_1
    array-length v0, p6

    .line 185
    if-ge p3, v0, :cond_8

    .line 186
    .line 187
    aget v0, p6, p3

    .line 188
    .line 189
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    add-int/lit8 v0, p4, 0x1

    .line 196
    .line 197
    aget v1, p6, p3

    .line 198
    .line 199
    aput v1, p0, p4

    .line 200
    .line 201
    move p4, v0

    .line 202
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_8
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    :cond_9
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    if-eqz p3, :cond_d

    .line 214
    .line 215
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    check-cast p3, Landroid/content/pm/SharedLibraryInfo;

    .line 220
    .line 221
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    .line 222
    .line 223
    .line 224
    move-result p5

    .line 225
    if-nez p5, :cond_a

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_a
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p5

    .line 232
    iget-object p6, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 233
    .line 234
    invoke-virtual {p6, p5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 235
    .line 236
    .line 237
    move-result-object p5

    .line 238
    if-nez p5, :cond_b

    .line 239
    .line 240
    new-instance p5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string p6, "Shared lib without setting: "

    .line 243
    .line 244
    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    const-string p5, "PackageManager"

    .line 255
    .line 256
    invoke-static {p5, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_b
    move p3, p1

    .line 261
    :goto_3
    if-ge p3, p4, :cond_9

    .line 262
    .line 263
    aget p6, p0, p3

    .line 264
    .line 265
    const/4 v0, 0x1

    .line 266
    invoke-virtual {p5, p6, v0}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 267
    .line 268
    .line 269
    add-int/lit8 p3, p3, 0x1

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_c
    iget-object p0, p2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 273
    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)V

    .line 279
    .line 280
    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 290
    .line 291
    .line 292
    :cond_d
    return-void
.end method

.method public final getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 42
    .line 43
    .line 44
    iget-object p0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 47
    .line 48
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 63
    .line 64
    .line 65
    iget-object p0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 68
    .line 69
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v3, 0x0

    .line 79
    const/4 v4, 0x1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    move v1, v4

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move v1, v3

    .line 95
    :goto_0
    if-eqz v0, :cond_b

    .line 96
    .line 97
    if-eqz v1, :cond_b

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 100
    .line 101
    .line 102
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 105
    .line 106
    if-eqz v1, :cond_b

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 119
    .line 120
    iget-boolean v1, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 121
    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    move v3, v4

    .line 125
    :cond_4
    if-eqz v3, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 128
    .line 129
    .line 130
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 135
    .line 136
    if-nez v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 139
    .line 140
    .line 141
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 149
    .line 150
    .line 151
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    move-object v1, v2

    .line 159
    :goto_1
    if-eqz v3, :cond_8

    .line 160
    .line 161
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 162
    .line 163
    if-eqz v4, :cond_7

    .line 164
    .line 165
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLibraryNames()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-nez v4, :cond_8

    .line 170
    .line 171
    :cond_7
    const-string p0, "PackageManager"

    .line 172
    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v1, "Package "

    .line 176
    .line 177
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v0, " declares libraries that are not declared on the system image; skipping"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    return-object v2

    .line 200
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 203
    .line 204
    .line 205
    iget-object v4, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 206
    .line 207
    iget-object v4, v4, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 217
    .line 218
    .line 219
    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 220
    .line 221
    iget-object p1, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_b

    .line 232
    .line 233
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    .line 238
    .line 239
    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    if-eqz v3, :cond_9

    .line 244
    .line 245
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 246
    .line 247
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLibraryNames()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-nez v6, :cond_9

    .line 256
    .line 257
    const-string v4, "PackageManager"

    .line 258
    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v7, "Package "

    .line 262
    .line 263
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v7, " declares library "

    .line 274
    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v5, " that is not declared on system image; skipping"

    .line 282
    .line 283
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_9
    iget-object v6, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 295
    .line 296
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 297
    .line 298
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 299
    .line 300
    monitor-enter v6

    .line 301
    const-wide/16 v7, -0x1

    .line 302
    .line 303
    :try_start_0
    invoke-virtual {p0, v7, v8, v5}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    if-eqz v7, :cond_a

    .line 308
    .line 309
    const-string v4, "PackageManager"

    .line 310
    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v8, "Package "

    .line 317
    .line 318
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v8, " declares library "

    .line 329
    .line 330
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v5, " that already exists; skipping"

    .line 337
    .line 338
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    monitor-exit v6

    .line 349
    goto :goto_2

    .line 350
    :catchall_0
    move-exception p0

    .line 351
    goto :goto_3

    .line 352
    :cond_a
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto/16 :goto_2

    .line 357
    .line 358
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 360
    .line 361
    throw p0

    .line 362
    :cond_b
    return-object v2
.end method

.method public final getLatestStaticSharedLibraVersion(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 17
    .line 18
    throw p0
.end method

.method public final getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v1, :cond_2

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    cmp-long v7, v5, v7

    .line 41
    .line 42
    if-gez v7, :cond_1

    .line 43
    .line 44
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    cmp-long p1, v2, v4

    .line 54
    .line 55
    if-ltz p1, :cond_3

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 58
    .line 59
    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/content/pm/SharedLibraryInfo;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_3
    return-object v0
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/content/pm/SharedLibraryInfo;

    .line 22
    .line 23
    return-object p0
.end method

.method public final getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 23
    .line 24
    throw p0
.end method

.method public final isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Landroid/os/storage/StorageManager;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 10
    .line 11
    invoke-interface {v3, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/os/storage/StorageManager;

    .line 16
    .line 17
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    iget-object v7, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/4 v9, 0x0

    .line 43
    :goto_0
    if-ge v9, v7, :cond_7

    .line 44
    .line 45
    iget-object v10, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    check-cast v10, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 52
    .line 53
    if-nez v10, :cond_1

    .line 54
    .line 55
    :cond_0
    move/from16 v16, v9

    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    iget-object v11, v10, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 60
    .line 61
    invoke-virtual {v11}, Landroid/util/LongSparseArray;->size()I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const/4 v12, 0x0

    .line 66
    :goto_1
    if-ge v12, v11, :cond_0

    .line 67
    .line 68
    iget-object v13, v10, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 69
    .line 70
    invoke-virtual {v13, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    check-cast v13, Landroid/content/pm/SharedLibraryInfo;

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    invoke-virtual {v13}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    if-eqz v15, :cond_2

    .line 85
    .line 86
    invoke-virtual {v14}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    move/from16 v16, v9

    .line 91
    .line 92
    invoke-virtual {v14}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    invoke-interface {v1, v8, v9, v15}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(JLjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-interface {v1, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move/from16 v16, v9

    .line 106
    .line 107
    invoke-virtual {v13}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_3

    .line 112
    .line 113
    invoke-virtual {v14}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-interface {v1, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    const/4 v8, 0x0

    .line 123
    :goto_2
    if-nez v8, :cond_4

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    iget-wide v14, v8, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 127
    .line 128
    sub-long v14, v4, v14

    .line 129
    .line 130
    cmp-long v9, v14, p4

    .line 131
    .line 132
    if-gez v9, :cond_5

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_6

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    new-instance v9, Landroid/content/pm/VersionedPackage;

    .line 143
    .line 144
    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 145
    .line 146
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v13}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    invoke-virtual {v13}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 155
    .line 156
    .line 157
    move-result-wide v13

    .line 158
    invoke-direct {v9, v8, v13, v14}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 165
    .line 166
    move/from16 v9, v16

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :goto_4
    add-int/lit8 v9, v16, 0x1

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    const/4 v4, 0x0

    .line 178
    :goto_5
    if-ge v4, v1, :cond_9

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Landroid/content/pm/VersionedPackage;

    .line 185
    .line 186
    iget-object v6, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 187
    .line 188
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 193
    .line 194
    .line 195
    move-result-wide v9

    .line 196
    const/4 v12, 0x1

    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v8, 0x2

    .line 199
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    const/4 v6, 0x1

    .line 204
    if-ne v5, v6, :cond_8

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    .line 207
    .line 208
    .line 209
    move-result-wide v7

    .line 210
    cmp-long v5, v7, p2

    .line 211
    .line 212
    if-ltz v5, :cond_8

    .line 213
    .line 214
    return v6

    .line 215
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_9
    const/4 v4, 0x0

    .line 219
    return v4
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeSharedLibrary(JLjava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 10
    .line 11
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 12
    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 15
    .line 16
    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    monitor-exit v4

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    iget-object v6, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 32
    .line 33
    invoke-virtual {v6, v1, v2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-gez v6, :cond_1

    .line 38
    .line 39
    monitor-exit v4

    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v7, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 42
    .line 43
    invoke-virtual {v7, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    .line 48
    .line 49
    iget-object v7, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    iget-object v7, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    .line 57
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 60
    .line 61
    .line 62
    move-result-object v14

    .line 63
    array-length v15, v14

    .line 64
    const/4 v7, 0x0

    .line 65
    move v12, v7

    .line 66
    :goto_0
    const/4 v11, 0x0

    .line 67
    if-ge v12, v15, :cond_5

    .line 68
    .line 69
    aget v9, v14, v12

    .line 70
    .line 71
    const-wide/16 v16, 0x0

    .line 72
    .line 73
    const/16 v18, 0x3e8

    .line 74
    .line 75
    move-object v7, v13

    .line 76
    move-object v8, v6

    .line 77
    move/from16 v19, v9

    .line 78
    .line 79
    move-wide/from16 v9, v16

    .line 80
    .line 81
    move/from16 v11, v18

    .line 82
    .line 83
    move/from16 v16, v12

    .line 84
    .line 85
    move/from16 v12, v19

    .line 86
    .line 87
    invoke-interface/range {v7 .. v12}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v7, Ljava/util/List;

    .line 94
    .line 95
    if-nez v7, :cond_2

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    check-cast v8, Landroid/content/pm/VersionedPackage;

    .line 113
    .line 114
    iget-object v9, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 115
    .line 116
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 117
    .line 118
    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v9, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    if-eqz v8, :cond_3

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    move/from16 v10, v19

    .line 133
    .line 134
    invoke-virtual {v8, v10}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    const/4 v12, 0x0

    .line 139
    invoke-virtual {v11, v9, v12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    move/from16 v10, v19

    .line 147
    .line 148
    const/4 v12, 0x0

    .line 149
    :goto_2
    move/from16 v19, v10

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    :goto_3
    add-int/lit8 v12, v16, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    move-object v12, v11

    .line 156
    iget-object v7, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 157
    .line 158
    invoke-virtual {v7, v1, v2, v12}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    iget-object v8, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 163
    .line 164
    invoke-virtual {v8, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 165
    .line 166
    .line 167
    iget-boolean v1, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 168
    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    instance-of v1, v7, Lcom/android/server/utils/Watchable;

    .line 172
    .line 173
    if-eqz v1, :cond_6

    .line 174
    .line 175
    iget-object v1, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 176
    .line 177
    invoke-virtual {v1, v7}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    const/4 v2, -0x1

    .line 182
    if-ne v1, v2, :cond_6

    .line 183
    .line 184
    check-cast v7, Lcom/android/server/utils/Watchable;

    .line 185
    .line 186
    iget-object v1, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    .line 187
    .line 188
    invoke-interface {v7, v1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    invoke-virtual {v5, v5}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-gtz v1, :cond_7

    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 203
    .line 204
    invoke-virtual {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    const/4 v2, 0x2

    .line 212
    if-ne v1, v2, :cond_7

    .line 213
    .line 214
    iget-object v0, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 215
    .line 216
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 229
    .line 230
    return-void

    .line 231
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 233
    .line 234
    throw v0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/SharedLibrariesImpl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateAllSharedLibrariesLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const/4 v8, 0x1

    .line 4
    const/4 v9, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p1 .. p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-object v10, v0

    .line 22
    move-object v0, v9

    .line 23
    move-object v1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v9

    .line 26
    move-object v1, v0

    .line 27
    move-object v10, v1

    .line 28
    :cond_1
    :goto_0
    if-nez v10, :cond_2

    .line 29
    .line 30
    move-object v2, v9

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/util/Pair;

    .line 38
    .line 39
    :goto_1
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 44
    .line 45
    move-object v11, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-object v11, v9

    .line 48
    :goto_2
    if-eqz v2, :cond_4

    .line 49
    .line 50
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 53
    .line 54
    move-object v12, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    move-object v12, v9

    .line 57
    :goto_3
    iget-object v13, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 58
    .line 59
    iget-object v2, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sub-int/2addr v2, v8

    .line 68
    move v14, v2

    .line 69
    :goto_4
    if-ltz v14, :cond_b

    .line 70
    .line 71
    iget-object v2, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v15, v2

    .line 80
    check-cast v15, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 81
    .line 82
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v3, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    if-eqz v11, :cond_5

    .line 93
    .line 94
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_5

    .line 107
    .line 108
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_5

    .line 121
    .line 122
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_5

    .line 135
    .line 136
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_5

    .line 149
    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :cond_5
    if-nez v0, :cond_6

    .line 153
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_6
    move-object v5, v0

    .line 160
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    if-eqz v11, :cond_8

    .line 164
    .line 165
    if-nez v1, :cond_7

    .line 166
    .line 167
    new-instance v1, Landroid/util/ArraySet;

    .line 168
    .line 169
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 170
    .line 171
    .line 172
    :cond_7
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_8

    .line 181
    .line 182
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    invoke-static {v15, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_8
    move-object/from16 v16, v1

    .line 197
    .line 198
    move-object/from16 v1, p0

    .line 199
    .line 200
    move-object v2, v15

    .line 201
    move-object v3, v6

    .line 202
    move-object v4, v11

    .line 203
    move-object/from16 v17, v5

    .line 204
    .line 205
    move-object v5, v12

    .line 206
    move-object/from16 p1, v6

    .line 207
    .line 208
    move-object/from16 v6, p3

    .line 209
    .line 210
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catch_0
    move-exception v0

    .line 215
    move-object v1, v0

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    move-object/from16 v2, p1

    .line 221
    .line 222
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 223
    .line 224
    if-eqz v0, :cond_9

    .line 225
    .line 226
    iget-boolean v0, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 227
    .line 228
    if-eqz v0, :cond_a

    .line 229
    .line 230
    :cond_9
    iget-boolean v0, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 231
    .line 232
    iget-object v2, v13, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 233
    .line 234
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 237
    .line 238
    .line 239
    :try_start_1
    iget-object v3, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 240
    .line 241
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v19

    .line 245
    iget-object v4, v13, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 246
    .line 247
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 248
    .line 249
    .line 250
    move-result-object v22

    .line 251
    new-instance v24, Lcom/android/server/pm/PackageRemovedInfo;

    .line 252
    .line 253
    invoke-direct/range {v24 .. v24}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 254
    .line 255
    .line 256
    const/16 v20, 0x0

    .line 257
    .line 258
    const/16 v21, 0x1

    .line 259
    .line 260
    const/16 v25, 0x1

    .line 261
    .line 262
    move-object/from16 v18, v3

    .line 263
    .line 264
    move/from16 v23, v0

    .line 265
    .line 266
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 270
    .line 271
    .line 272
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string/jumbo v2, "updateAllSharedLibrariesLPw failed: "

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string v1, "PackageManager"

    .line 292
    .line 293
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    :goto_5
    move-object/from16 v1, v16

    .line 297
    .line 298
    move-object/from16 v0, v17

    .line 299
    .line 300
    :goto_6
    add-int/lit8 v14, v14, -0x1

    .line 301
    .line 302
    goto/16 :goto_4

    .line 303
    .line 304
    :catchall_0
    move-exception v0

    .line 305
    move-object v1, v0

    .line 306
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :catchall_1
    move-exception v0

    .line 311
    move-object v2, v0

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    :goto_7
    throw v1

    .line 316
    :cond_b
    if-eqz v10, :cond_c

    .line 317
    .line 318
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-gtz v2, :cond_1

    .line 323
    .line 324
    :cond_c
    return-object v0
.end method

.method public final updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p5, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object v6

    .line 6
    iget-object p5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 11
    .line 12
    monitor-enter p5

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p4

    .line 26
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 27
    .line 28
    .line 29
    monitor-exit p5

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 34
    .line 35
    throw p0
.end method
