.class public final Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mInitializedUsers:Landroid/util/ArraySet;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 25
    .line 26
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string p0, "Android package for \'"

    const-string p1, "\' could not be found; continuing as if package was never added"

    .line 3
    invoke-static {p0, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string p2, "OverlayManager"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/pkg/PackageState;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0
.end method

.method public final addPackageUser(Lcom/android/server/pm/pkg/PackageState;I)Lcom/android/server/pm/pkg/PackageState;
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    invoke-direct {v1, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;-><init>(Lcom/android/server/pm/pkg/PackageState;)V

    .line 14
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_0
    iput-object p1, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    .line 16
    :goto_0
    iget-object p0, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p0, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    monitor-exit v0

    return-object p0

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final doesTargetDefineOverlayable(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    move-object p0, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    if-eqz p0, :cond_2

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 26
    .line 27
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p2, 0x20

    .line 32
    .line 33
    invoke-static {p0, p2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :catchall_0
    return p0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .line 50
    .line 51
    :catchall_2
    :cond_1
    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 53
    .line 54
    const-string p1, "Unable to get target package"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 6

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "AndroidPackage cache"

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p2, Lcom/android/server/om/DumpState;->mVerbose:Z

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " package(s)"

    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_1

    .line 52
    .line 53
    const-string p0, "    <empty>"

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    if-ge v0, p2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v5, "    "

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, ": "

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v2, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    .line 104
    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, " users="

    .line 109
    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v2, ", "

    .line 121
    .line 122
    iget-object v3, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    .line 123
    .line 124
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    monitor-exit v1

    .line 135
    return-void

    .line 136
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw p0
.end method

.method public final getOverlayableForTarget(ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/OverlayableInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    move-object p0, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    if-eqz p0, :cond_2

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 26
    .line 27
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p2, 0x20

    .line 32
    .line 33
    invoke-static {p0, p2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p3}, Landroid/content/res/ApkAssets;->getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :catchall_0
    return-object p0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .line 50
    .line 51
    :catchall_2
    :cond_1
    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 53
    .line 54
    const-string p1, "Unable to get target package"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .locals 5

    .line 1
    const-string v0, "Failed to check availability of package \'"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v3, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object p0, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    .line 31
    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 38
    .line 39
    invoke-interface {v3, p2, p1}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 40
    .line 41
    .line 42
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    :try_start_2
    monitor-exit v1

    .line 46
    return-object v2

    .line 47
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    monitor-exit v1

    .line 52
    return-object p0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string v3, "OverlayManager"

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "\' for user "

    .line 65
    .line 66
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    monitor-exit v1

    .line 80
    return-object v2

    .line 81
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p0
.end method

.method public final removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast v1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    .line 16
    .line 17
    check-cast p2, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method
