.class public final Lcom/android/server/knox/dar/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final isKnoxBuildEnabled:Z

.field public static mInstallLock:Ljava/lang/Object;

.field public static mPackageTasker:Lcom/android/server/pm/Installer;

.field public static sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

.field public final mSessionIdDstPath:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v2, "version"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 25
    const-string/jumbo v2, "v00"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_1
    sput-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    .line 39
    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 7
    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    .line 9
    iget-object p1, p1, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->mContext:Landroid/content/Context;

    .line 11
    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    .line 13
    sget-boolean p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    .line 15
    if-eqz p1, :cond_0

    .line 17
    new-instance p1, Ljava/util/Hashtable;

    .line 19
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 24
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 10
    new-instance v2, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    .line 12
    invoke-direct {v2, p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {v1, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;-><init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V

    .line 18
    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 7
    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 13
    :goto_0
    return-void
.end method

.method public static setTestInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 3
    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 5
    return-void
.end method


# virtual methods
.method public final checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    const-string v2, "EnterprisePartitionManager"

    .line 13
    invoke-static {v0, v1, p0, v2, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "Security Exception Occurred while pid["

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "] with uid["

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "] trying to access methodName ["

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, "] in [EnterprisePartitionManager] service"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0
.end method

.method public final copy(IIILjava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string/jumbo v0, "copy"

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 9
    if-nez v0, :cond_0

    .line 11
    const/16 p0, -0x13

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, -0x2

    .line 15
    if-eqz p4, :cond_6

    .line 17
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 23
    goto :goto_3

    .line 24
    :cond_1
    if-eqz p5, :cond_6

    .line 26
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 32
    goto :goto_3

    .line 33
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_6

    .line 39
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_3

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 48
    monitor-enter p0

    .line 49
    const/4 v0, -0x1

    .line 50
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 52
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 55
    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v3, 0x0

    .line 57
    if-nez v2, :cond_4

    .line 59
    move p1, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 63
    move-object v5, p4

    .line 64
    move v6, p1

    .line 65
    move-object v7, p5

    .line 66
    move v8, p2

    .line 67
    move v9, p3

    .line 68
    invoke-interface/range {v4 .. v9}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    .line 71
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_0
    if-eqz p1, :cond_5

    .line 74
    move v0, v3

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 80
    const/4 p1, 0x0

    .line 81
    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :catch_1
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit p0

    .line 85
    return v0

    .line 86
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    throw p1

    .line 88
    :cond_6
    :goto_3
    return v0
.end method

.method public final isUserUnlocked(I)Z
    .locals 7

    .line 1
    const-string v0, "EnterprisePartitionManager"

    .line 3
    const-string v1, "Failed to check user state... "

    .line 5
    const-string v2, "User "

    .line 7
    iget-object v3, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_0

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, " is not unlocked"

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    goto :goto_2

    .line 59
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    goto :goto_0

    .line 79
    :goto_2
    return v6

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0
.end method
