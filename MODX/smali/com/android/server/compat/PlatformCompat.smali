.class public final Lcom/android/server/compat/PlatformCompat;
.super Lcom/android/internal/compat/IPlatformCompat$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public final mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field public final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 4
    new-instance v0, Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-direct {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 5
    new-instance v1, Lcom/android/server/compat/CompatConfig;

    invoke-direct {v1, v0, p1}, Lcom/android/server/compat/CompatConfig;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V

    .line 6
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "etc"

    const-string/jumbo v2, "compatconfig"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {p1, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 8
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p1

    const-string/jumbo v3, "system_ext"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {p1, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 10
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 12
    iget-object v3, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/misc/appcompat"

    const-string/jumbo v2, "compat_framework_overrides.xml"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "/product/etc/appcompat"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/server/compat/CompatConfig;->initOverrides(Ljava/io/File;Ljava/io/File;)V

    .line 14
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 15
    iput-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/compat/CompatConfig;Lcom/android/internal/compat/AndroidBuildClassifier;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 19
    iput-object p2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 20
    iput-object p3, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 7

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 10
    const-wide/16 v4, 0x0

    .line 12
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 15
    move-result v2

    .line 16
    move v3, p1

    .line 17
    move-object v6, p0

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static killPackage(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 18
    move-result v0

    .line 19
    const-string v1, "Compatibility"

    .line 21
    if-gez v0, :cond_0

    .line 23
    const-string v0, "Didn\'t find package "

    .line 25
    const-string v2, " on device."

    .line 27
    invoke-static {v0, p0, v2, v1}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 31
    :cond_0
    const-string v2, "Killing package "

    .line 33
    const-string v3, " (UID "

    .line 35
    const-string v4, ")."

    .line 37
    invoke-static {v0, v2, p0, v3, v4}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 47
    move-result p0

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v0

    .line 52
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_1

    .line 58
    const-string v3, "PlatformCompat overrides"

    .line 60
    const/4 v4, -0x1

    .line 61
    invoke-interface {v2, p0, v4, v3}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    throw p0

    .line 75
    :goto_2
    return-void
.end method


# virtual methods
.method public final checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Long;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 20
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 22
    iget-object v1, v1, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 32
    iget-object v1, v1, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 40
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 51
    const-string p1, "Only change ids marked as Overridable can be overridden."

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0

    .line 57
    :cond_2
    return-void
.end method

.method public final clearOverride(JLjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/server/compat/CompatChange;

    .line 23
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 36
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    monitor-exit p0

    .line 43
    invoke-static {p3}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 46
    return p1

    .line 47
    :goto_2
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final clearOverrideForTest(JLjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/server/compat/CompatChange;

    .line 23
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 36
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    monitor-exit p0

    .line 43
    return p1

    .line 44
    :goto_2
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public final clearOverrides(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public final clearOverridesForTest(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public final containsOverride(JLjava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 7
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    if-eqz p1, :cond_1

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_0
    return v0
.end method

.method public final disableTargetSdkChanges(Ljava/lang/String;I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(ILjava/lang/String;)[J

    .line 9
    move-result-object p2

    .line 10
    array-length v0, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    aget-wide v4, p2, v2

    .line 18
    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    .line 20
    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 23
    invoke-virtual {v6, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v6}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {p0, v4, v5, p1, v6}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    .line 34
    move-result v4

    .line 35
    or-int/2addr v3, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 44
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 47
    :cond_1
    array-length p0, p2

    .line 48
    invoke-static {p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 51
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo p3, "platform_compat"

    .line 6
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 15
    const-string p3, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    .line 17
    const-string v0, "Cannot read compat change"

    .line 19
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 24
    const-string p3, "android.permission.LOG_COMPAT_CHANGE"

    .line 26
    const-string v0, "Cannot read log compat change usage"

    .line 28
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 33
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 41
    const-string p0, "No compat overrides."

    .line 43
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 57
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/android/server/compat/CompatChange;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 72
    move-result-wide v0

    .line 73
    const-wide/32 v2, 0x14ce0124

    .line 76
    cmp-long p3, v0, v2

    .line 78
    if-nez p3, :cond_2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_1
    return-void
.end method

.method public final enableTargetSdkChanges(Ljava/lang/String;I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(ILjava/lang/String;)[J

    .line 9
    move-result-object p2

    .line 10
    array-length v0, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    aget-wide v3, p2, v1

    .line 17
    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    .line 19
    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 22
    const/4 v6, 0x1

    .line 23
    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {p0, v3, v4, p1, v5}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    .line 34
    move-result v3

    .line 35
    or-int/2addr v2, v3

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 44
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 47
    :cond_1
    array-length p0, p2

    .line 48
    invoke-static {p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 51
    return p0
.end method

.method public final getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    new-instance v1, Ljava/util/HashSet;

    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 19
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 41
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 43
    invoke-virtual {v3, p1, v4}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 52
    move-result-wide v3

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 64
    move-result-wide v3

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance p0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 75
    new-instance p1, Landroid/compat/Compatibility$ChangeConfig;

    .line 77
    invoke-direct {p1, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 83
    return-object p0
.end method

.method public final getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 3
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 5
    return-object p0
.end method

.method public final isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled_enforcePermission()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName_enforcePermission()V

    .line 4
    invoke-static {p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 7
    move-result-object p4

    .line 8
    if-nez p4, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final isChangeEnabledByUid(JI)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 17
    array-length v2, v0

    .line 18
    if-nez v2, :cond_0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p3

    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_3

    .line 29
    aget-object v4, v0, v3

    .line 31
    invoke-static {v4, p3}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    .line 38
    move-result v4

    .line 39
    and-int/2addr v1, v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 45
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 57
    if-nez p0, :cond_2

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 63
    move-result p0

    .line 64
    xor-int/2addr v1, p0

    .line 65
    :cond_3
    :goto_2
    return v1
.end method

.method public final isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 3
    iget-object v0, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 15
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_0

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, v1, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 27
    invoke-virtual {v0, p3, v1}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    .line 30
    move-result v1

    .line 31
    :goto_0
    if-eqz v1, :cond_1

    .line 33
    move v8, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v3, 0x2

    .line 36
    move v8, v3

    .line 37
    :goto_1
    if-eqz p3, :cond_6

    .line 39
    iget-object v3, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 41
    iget v4, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    const/4 v3, -0x1

    .line 47
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 52
    move-result v5

    .line 53
    if-eq v5, v3, :cond_2

    .line 55
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 58
    move-result v0

    .line 59
    add-int/lit8 v3, v0, -0x1

    .line 61
    :cond_2
    add-int/2addr v3, v2

    .line 62
    const/4 v0, 0x0

    .line 63
    if-gtz v3, :cond_3

    .line 65
    move v9, v0

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v5, 0x2710

    .line 69
    if-eq v3, v5, :cond_5

    .line 71
    if-ne v3, v4, :cond_4

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v2, v0

    .line 75
    :cond_5
    :goto_2
    move v9, v2

    .line 76
    :goto_3
    iget-object v4, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 78
    iget v5, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 80
    move-wide v6, p1

    .line 81
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZ)V

    .line 84
    :cond_6
    return v1
.end method

.method public final isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 3
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/server/compat/CompatChange;

    .line 15
    if-nez p1, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 21
    invoke-virtual {p1, p3, p0}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    .line 24
    move-result p0

    .line 25
    :goto_0
    return p0
.end method

.method public final listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 6
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 11
    move-result v0

    .line 12
    new-array v0, v0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 14
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 37
    add-int/lit8 v3, v1, 0x1

    .line 39
    new-instance v4, Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 41
    invoke-direct {v4, v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V

    .line 44
    aput-object v4, v0, v1

    .line 46
    move v1, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method

.method public final listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 29
    return-object p0
.end method

.method public final putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds_enforcePermission()V

    .line 4
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 26
    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    .line 28
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v0

    .line 49
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 61
    iget-object v2, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 63
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 79
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_2
    monitor-exit p0

    .line 85
    throw p1
.end method

.method public final putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds_enforcePermission()V

    .line 4
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 13
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 19
    return-void
.end method

.method public final registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;

    .line 20
    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 29
    const-string p1, "Listener for change "

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 34
    if-nez p2, :cond_0

    .line 36
    iput-object p3, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, " already registered."

    .line 61
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_0
    monitor-exit p0

    .line 73
    throw p1
.end method

.method public final registerPackageReceiver(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/compat/PlatformCompat$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/compat/PlatformCompat$1;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 6
    new-instance p0, Landroid/content/IntentFilter;

    .line 8
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 13
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 23
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "package"

    .line 29
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, p0, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public final removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds_enforcePermission()V

    .line 4
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 26
    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 58
    iget-object v3, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 60
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 66
    invoke-virtual {p0, v3, v2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    .line 69
    move-result v2

    .line 70
    or-int/2addr v1, v2

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 79
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_2
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_2
    monitor-exit p0

    .line 85
    throw p1
.end method

.method public final removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds_enforcePermission()V

    .line 4
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 9
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 21
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final reportChange(JLandroid/content/pm/ApplicationInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange_enforcePermission()V

    .line 4
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v4, 0x3

    .line 10
    move-wide v2, p1

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZ)V

    .line 14
    return-void
.end method

.method public final reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName_enforcePermission()V

    .line 4
    invoke-static {p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 7
    move-result-object p3

    .line 8
    if-eqz p3, :cond_0

    .line 10
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 12
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v4, 0x3

    .line 16
    move-wide v2, p1

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZ)V

    .line 20
    :cond_0
    return-void
.end method

.method public final reportChangeByUid(JI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v4, 0x3

    .line 8
    move v1, p3

    .line 9
    move-wide v2, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZ)V

    .line 13
    return-void
.end method

.method public final setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides_enforcePermission()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    .line 34
    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 58
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz v1, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Long;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    .line 76
    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 79
    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 93
    new-instance p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 95
    invoke-direct {p1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 98
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 101
    invoke-static {p2}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest_enforcePermission()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 32
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    .line 34
    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 58
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz v1, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Long;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 74
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    .line 76
    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 79
    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 93
    new-instance p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 95
    invoke-direct {p1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 98
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 101
    return-void
.end method
