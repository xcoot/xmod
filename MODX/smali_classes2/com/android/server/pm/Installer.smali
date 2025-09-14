.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public volatile mDeferSetFirstBoot:Z

.field public volatile mInstalld:Landroid/os/IInstalld;

.field public volatile mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mIsolated:Z

.field public volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 2
    .line 3
    .line 4
    const-string v1, "0x4f4c"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 4
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    return-void
.end method

.method public static buildCreateAppDataArgs(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/CreateAppDataArgs;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/CreateAppDataArgs;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/CreateAppDataArgs;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p4, v0, Landroid/os/CreateAppDataArgs;->uuid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, v0, Landroid/os/CreateAppDataArgs;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    iput p0, v0, Landroid/os/CreateAppDataArgs;->userId:I

    .line 11
    .line 12
    iput p1, v0, Landroid/os/CreateAppDataArgs;->flags:I

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    or-int/lit8 p0, p1, 0x8

    .line 17
    .line 18
    iput p0, v0, Landroid/os/CreateAppDataArgs;->flags:I

    .line 19
    .line 20
    :cond_0
    iput p3, v0, Landroid/os/CreateAppDataArgs;->appId:I

    .line 21
    .line 22
    iput-object p6, v0, Landroid/os/CreateAppDataArgs;->seInfo:Ljava/lang/String;

    .line 23
    .line 24
    iput p7, v0, Landroid/os/CreateAppDataArgs;->targetSdkVersion:I

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public final checkBeforeRemote()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "Installer"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Calling thread "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " is holding 0x"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Ljava/lang/Throwable;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const-string p0, "Ignoring request because this installer is isolated"

    .line 68
    .line 69
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 75
    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    .line 78
    const-wide/16 v1, 0x2710

    .line 79
    .line 80
    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    .line 88
    .line 89
    const-string/jumbo v0, "time out waiting for the installer to be ready"

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    :goto_0
    const/4 p0, 0x1

    .line 97
    return p0
.end method

.method public final clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    move-wide v6, p5

    .line 15
    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    filled-new-array {p1, p3, p2, p4}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const p2, 0x9858

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    :goto_0
    array-length p2, p0

    .line 58
    if-ge p1, p2, :cond_1

    .line 59
    .line 60
    aget-object p2, p0, p1

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    aget-object p3, p0, p1

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    aget-object p4, p0, p1

    .line 73
    .line 74
    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    aget-object p5, p0, p1

    .line 79
    .line 80
    invoke-virtual {p5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p5

    .line 88
    filled-new-array {p3, p2, p4, p5}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const p3, 0x9859

    .line 93
    .line 94
    .line 95
    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    add-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    return-void

    .line 104
    :goto_1
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    const/4 p0, 0x0

    .line 108
    throw p0
.end method

.method public final connect()V
    .locals 4

    .line 1
    const-string v0, "installd"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v2, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Installer;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-object v0, v1

    .line 21
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 42
    .line 43
    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    .line 45
    .line 46
    :goto_1
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->setFirstBoot()V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_1
    move-exception p0

    .line 55
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    throw v1
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    :cond_2
    const-string v0, "Installer"

    .line 60
    .line 61
    const-string v1, "installd not found; trying again"

    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Installer;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v2, 0x3e8

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    :catch_2
    :cond_3
    :goto_2
    return-void
.end method

.method public final destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    move-wide v6, p5

    .line 15
    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final freeCache(Ljava/lang/String;JI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 9
    .line 10
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public final getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p7

    .line 4
    .line 5
    move-object/from16 v10, p8

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v11, 0x0

    .line 15
    if-eqz v9, :cond_1

    .line 16
    .line 17
    array-length v1, v9

    .line 18
    move v2, v11

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    aget-object v3, v9, v2

    .line 22
    .line 23
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v12, 0x0

    .line 34
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 35
    .line 36
    move-object/from16 v2, p1

    .line 37
    .line 38
    move-object/from16 v3, p2

    .line 39
    .line 40
    move/from16 v4, p3

    .line 41
    .line 42
    move/from16 v5, p4

    .line 43
    .line 44
    move/from16 v6, p5

    .line 45
    .line 46
    move-object/from16 v7, p6

    .line 47
    .line 48
    move-object/from16 v8, p7

    .line 49
    .line 50
    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 55
    .line 56
    aget-wide v4, v1, v11

    .line 57
    .line 58
    add-long/2addr v2, v4

    .line 59
    iput-wide v2, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 60
    .line 61
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 62
    .line 63
    const/4 v8, 0x1

    .line 64
    aget-wide v4, v1, v8

    .line 65
    .line 66
    add-long/2addr v2, v4

    .line 67
    iput-wide v2, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 68
    .line 69
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 70
    .line 71
    const/4 v13, 0x2

    .line 72
    aget-wide v4, v1, v13

    .line 73
    .line 74
    add-long/2addr v2, v4

    .line 75
    iput-wide v2, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 76
    .line 77
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 78
    .line 79
    const/4 v14, 0x3

    .line 80
    aget-wide v4, v1, v14

    .line 81
    .line 82
    add-long/2addr v2, v4

    .line 83
    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 84
    .line 85
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 86
    .line 87
    const/4 v15, 0x4

    .line 88
    aget-wide v4, v1, v15

    .line 89
    .line 90
    add-long/2addr v2, v4

    .line 91
    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 92
    .line 93
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 94
    .line 95
    const/16 v16, 0x5

    .line 96
    .line 97
    aget-wide v4, v1, v16

    .line 98
    .line 99
    add-long/2addr v2, v4

    .line 100
    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 101
    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-class v2, Landroid/os/storage/StorageManager;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    if-eqz v3, :cond_2

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_2

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_2

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    move-object/from16 v2, p2

    .line 165
    .line 166
    move/from16 v3, p3

    .line 167
    .line 168
    move/from16 v4, p4

    .line 169
    .line 170
    move/from16 v5, p5

    .line 171
    .line 172
    move-object/from16 v6, p6

    .line 173
    .line 174
    move-object/from16 v7, p7

    .line 175
    .line 176
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    move-object v0, v12

    .line 184
    :goto_1
    if-eqz v0, :cond_4

    .line 185
    .line 186
    iget-wide v1, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 187
    .line 188
    aget-wide v3, v0, v11

    .line 189
    .line 190
    add-long/2addr v1, v3

    .line 191
    iput-wide v1, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 192
    .line 193
    iget-wide v1, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 194
    .line 195
    aget-wide v3, v0, v8

    .line 196
    .line 197
    add-long/2addr v1, v3

    .line 198
    iput-wide v1, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 199
    .line 200
    iget-wide v1, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 201
    .line 202
    aget-wide v3, v0, v13

    .line 203
    .line 204
    add-long/2addr v1, v3

    .line 205
    iput-wide v1, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 206
    .line 207
    iget-wide v1, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 208
    .line 209
    aget-wide v3, v0, v14

    .line 210
    .line 211
    add-long/2addr v1, v3

    .line 212
    iput-wide v1, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 213
    .line 214
    iget-wide v1, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 215
    .line 216
    aget-wide v3, v0, v15

    .line 217
    .line 218
    add-long/2addr v1, v3

    .line 219
    iput-wide v1, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 220
    .line 221
    iget-wide v1, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 222
    .line 223
    aget-wide v3, v0, v16

    .line 224
    .line 225
    add-long/2addr v1, v3

    .line 226
    iput-wide v1, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    :cond_4
    return-void

    .line 229
    :goto_2
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 230
    .line 231
    .line 232
    throw v12
.end method

.method public final getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 9
    .line 10
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    aget-wide p3, p0, p3

    .line 18
    .line 19
    add-long/2addr p1, p3

    .line 20
    iput-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 21
    .line 22
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    aget-wide p3, p0, p3

    .line 26
    .line 27
    add-long/2addr p1, p3

    .line 28
    iput-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 29
    .line 30
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 31
    .line 32
    const/4 p3, 0x2

    .line 33
    aget-wide p3, p0, p3

    .line 34
    .line 35
    add-long/2addr p1, p3

    .line 36
    iput-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 37
    .line 38
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 39
    .line 40
    const/4 p3, 0x3

    .line 41
    aget-wide p3, p0, p3

    .line 42
    .line 43
    add-long/2addr p1, p3

    .line 44
    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 45
    .line 46
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 47
    .line 48
    const/4 p3, 0x4

    .line 49
    aget-wide p3, p0, p3

    .line 50
    .line 51
    add-long/2addr p1, p3

    .line 52
    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 53
    .line 54
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 55
    .line 56
    const/4 p3, 0x5

    .line 57
    aget-wide p3, p0, p3

    .line 58
    .line 59
    add-long/2addr p1, p3

    .line 60
    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    throw p0
.end method

.method public final linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 23
    .line 24
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method

.method public final onStart()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 16
    .line 17
    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public final setFirstBoot()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/os/IInstalld;->setFirstBoot()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :goto_1
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public final setWarnIfHeld(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
