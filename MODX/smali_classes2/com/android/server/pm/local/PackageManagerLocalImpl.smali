.class public final Lcom/android/server/pm/local/PackageManagerLocalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal;


# instance fields
.field public final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 12
    .line 13
    const-string p1, "This test API is only available on debuggable builds"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final clearOverrideSigningDetails()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/util/apk/ApkSignatureVerifier;->clearOverrideSigningDetails()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 12
    .line 13
    const-string v0, "This test API is only available on debuggable builds"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/android/server/pm/Installer;->$r8$clinit:I

    .line 7
    .line 8
    new-instance v0, Landroid/os/ReconcileSdkDataArgs;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/ReconcileSdkDataArgs;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/ReconcileSdkDataArgs;->uuid:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, v0, Landroid/os/ReconcileSdkDataArgs;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, v0, Landroid/os/ReconcileSdkDataArgs;->subDirNames:Ljava/util/List;

    .line 18
    .line 19
    iput p4, v0, Landroid/os/ReconcileSdkDataArgs;->userId:I

    .line 20
    .line 21
    iput p5, v0, Landroid/os/ReconcileSdkDataArgs;->appId:I

    .line 22
    .line 23
    iput-object p7, v0, Landroid/os/ReconcileSdkDataArgs;->seInfo:Ljava/lang/String;

    .line 24
    .line 25
    iput p8, v0, Landroid/os/ReconcileSdkDataArgs;->flags:I

    .line 26
    .line 27
    iput p6, v0, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    .line 28
    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 30
    .line 31
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 39
    .line 40
    .line 41
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 46
    .line 47
    invoke-interface {p0, v0}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-exception p0

    .line 57
    :try_start_4
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    throw p0
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 72
    :goto_2
    new-instance p1, Ljava/io/IOException;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public final removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroid/util/apk/ApkSignatureVerifier;->removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 12
    .line 13
    const-string p1, "This test API is only available on debuggable builds"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;)V

    return-object v2
.end method

.method public final withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 2

    .line 4
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;)V

    return-object v0
.end method

.method public final withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
