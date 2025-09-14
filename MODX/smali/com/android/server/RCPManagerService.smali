.class public final Lcom/android/server/RCPManagerService;
.super Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sContext:Landroid/content/Context;


# instance fields
.field public final KNOX_DEBUG:Z

.field public knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

.field public mBridgeHandler:Landroid/os/Handler;

.field public final mBridgeProxyAliveList:Ljava/util/HashMap;

.field public final mBridgeRunnable:Lcom/android/server/RCPManagerService$2;

.field public final mContainerstateReceiver:Lcom/android/server/RCPManagerService$1;

.field public final mContext:Landroid/content/Context;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsInitialized:Z

.field public mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mRCPInterfaceMap:Ljava/util/HashMap;

.field public mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    .line 18
    const-string/jumbo v0, "ro.build.type"

    .line 21
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v1, "eng"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    .line 37
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 39
    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 42
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 44
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/server/RCPManagerService$1;

    .line 48
    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$1;-><init>(Lcom/android/server/RCPManagerService;)V

    .line 51
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mContainerstateReceiver:Lcom/android/server/RCPManagerService$1;

    .line 53
    new-instance v0, Lcom/android/server/RCPManagerService$2;

    .line 55
    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$2;-><init>(Lcom/android/server/RCPManagerService;)V

    .line 58
    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeRunnable:Lcom/android/server/RCPManagerService$2;

    .line 60
    const-string v0, "RCPManagerService"

    .line 62
    const-string/jumbo v1, "start "

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez p1, :cond_0

    .line 70
    const-string p0, "Context is null(). Failed to start service"

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 78
    sput-object p1, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 83
    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v2

    .line 11
    const-string v3, "RCPManagerService"

    .line 13
    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "Security Exception Occurred while pid["

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "] with uid["

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "] trying to access methodName ["

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p0, "] in [RCPManagerService] service"

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 71
    throw v0
.end method

.method public static isPackageDataRelatedPath(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "/data/data"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    const-string v2, "RCPManagerService"

    .line 13
    if-nez v1, :cond_2

    .line 15
    const-string v1, "/data/user"

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 23
    const-string v1, "/data/user_de"

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo v1, "not a package path: "

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0

    .line 43
    :cond_2
    :goto_0
    const-string/jumbo v0, "package path detected: "

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 p0, 0x1

    .line 54
    return p0
.end method

.method public static processImeRequest(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "keyEvent"

    .line 4
    const-string/jumbo v1, "commitText"

    .line 7
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    const-string v3, "InputMethodManagerService"

    .line 13
    const/16 v4, 0x270f

    .line 15
    if-eqz v2, :cond_1

    .line 17
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    if-nez v2, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_2
    new-instance v5, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 28
    invoke-direct {v5, v4}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    .line 31
    const/4 v6, 0x1

    .line 32
    invoke-interface {v2, v5, v1, v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    :try_start_3
    const-string/jumbo v2, "commitText failed due to remote exception"

    .line 40
    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Landroid/view/KeyEvent;

    .line 58
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 60
    if-nez v0, :cond_2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :try_start_4
    new-instance v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 65
    invoke-direct {v1, v4}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    .line 68
    invoke-interface {v0, v1, p0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 71
    goto :goto_2

    .line 72
    :catch_2
    move-exception p0

    .line 73
    :try_start_5
    const-string/jumbo v0, "sendKeyEvent failed due to remote exception"

    .line 76
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 79
    goto :goto_2

    .line 80
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final cancelCopyChunks(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "RCPManagerService"

    .line 9
    const-string/jumbo p1, "failed to cancelCopyChunks"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 16
    :cond_0
    const-string/jumbo v0, "cancelCopyChunks"

    .line 19
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 22
    const-string v0, "RCPManagerService"

    .line 24
    const-string v1, "P_OS_RCP cancelCopyChunks"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v0, "RCPManagerService"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v2, "cancelCopyChunks() sessionId="

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 54
    move-result-object p0

    .line 55
    const-string/jumbo v0, "cancelCopyChunks"

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 75
    if-eqz v1, :cond_4

    .line 77
    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 85
    goto :goto_3

    .line 86
    :cond_1
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 88
    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 91
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 94
    move-result v3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-nez v3, :cond_2

    .line 97
    const/4 v0, 0x0

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    :try_start_1
    iget-object v2, v2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 101
    invoke-interface {v2, v0, p1, p2}, Landroid/os/IInstalld;->copyKnoxCancel(Ljava/lang/String;J)Z

    .line 104
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    if-eqz v0, :cond_3

    .line 107
    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 109
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception p0

    .line 120
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 123
    const/4 p0, 0x0

    .line 124
    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :catch_1
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v1

    .line 126
    goto :goto_3

    .line 127
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_4
    :goto_3
    return-void
.end method

.method public final copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    move/from16 v5, p3

    .line 7
    move-object/from16 v2, p4

    .line 9
    move/from16 v3, p7

    .line 11
    move/from16 v4, p10

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 16
    move-result v6

    .line 17
    const/4 v13, -0x1

    .line 18
    if-nez v6, :cond_0

    .line 20
    const-string v0, "RCPManagerService"

    .line 22
    const-string/jumbo v1, "failed to copyChunks"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return v13

    .line 29
    :cond_0
    const-string/jumbo v6, "copyChunks"

    .line 32
    invoke-static {v6}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 35
    const-string v6, "RCPManagerService"

    .line 37
    const-string v7, "P_OS_RCP copyChunks"

    .line 39
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v6, "RCPManagerService"

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v8, "copyChunks() srcContainerId="

    .line 49
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v8, "; srcFilePath="

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v8, "; destContainerId="

    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v8, "; destFilePath="

    .line 73
    const-string v9, "; offset="

    .line 75
    invoke-static {v7, v8, v2, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-wide/from16 v8, p5

    .line 80
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    const-string v10, "; length="

    .line 85
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v10, "; sessionId="

    .line 93
    const-string v11, "; deleteSrc="

    .line 95
    move-wide/from16 v14, p8

    .line 97
    invoke-static {v7, v10, v14, v15, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 100
    invoke-static {v6, v7, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 103
    move-object/from16 v6, p0

    .line 105
    iget-object v6, v6, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {v6}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 110
    move-result-object v11

    .line 111
    const-string/jumbo v6, "copyChunks"

    .line 114
    invoke-virtual {v11, v6}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 117
    sget-object v6, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 119
    if-nez v6, :cond_1

    .line 121
    const/16 v0, -0x13

    .line 123
    goto/16 :goto_8

    .line 125
    :cond_1
    const/4 v6, -0x2

    .line 126
    if-eqz v1, :cond_c

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_2

    .line 134
    goto/16 :goto_7

    .line 136
    :cond_2
    if-eqz v2, :cond_c

    .line 138
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_3

    .line 144
    goto/16 :goto_7

    .line 146
    :cond_3
    invoke-virtual {v11, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_c

    .line 152
    invoke-virtual {v11, v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_4

    .line 158
    goto/16 :goto_7

    .line 160
    :cond_4
    if-eqz v0, :cond_5

    .line 162
    const-string v6, "/storage/emulated"

    .line 164
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 167
    move-result v6

    .line 168
    if-eqz v6, :cond_5

    .line 170
    const-string v6, "/storage"

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    .line 174
    const-string v10, "/mnt/user/"

    .line 176
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    const-string v6, "EnterprisePartitionManager"

    .line 192
    const-string/jumbo v7, "srcRealPath : "

    .line 195
    invoke-static {v7, v1, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_5
    move-object v6, v1

    .line 199
    if-eqz v5, :cond_6

    .line 201
    const-string v1, "/storage/emulated"

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_6

    .line 209
    const-string v1, "/storage"

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    .line 213
    const-string v10, "/mnt/user/"

    .line 215
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object v1

    .line 229
    const-string v2, "EnterprisePartitionManager"

    .line 231
    const-string/jumbo v7, "dstRealPath : "

    .line 234
    invoke-static {v7, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object v7, v1

    .line 238
    goto :goto_0

    .line 239
    :cond_6
    move-object v7, v2

    .line 240
    :goto_0
    iget-object v1, v11, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 242
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_7

    .line 252
    iget-object v1, v11, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 254
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_7
    if-eqz v4, :cond_8

    .line 263
    const/16 v1, 0x24

    .line 265
    :goto_1
    move v10, v1

    .line 266
    goto :goto_2

    .line 267
    :cond_8
    const/16 v1, 0x20

    .line 269
    goto :goto_1

    .line 270
    :goto_2
    sget-object v16, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 272
    monitor-enter v16

    .line 273
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 275
    int-to-long v3, v3

    .line 276
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 279
    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-nez v2, :cond_9

    .line 282
    move-object v0, v11

    .line 283
    move v1, v13

    .line 284
    goto :goto_3

    .line 285
    :cond_9
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 287
    move-object v2, v6

    .line 288
    move-wide/from16 v17, v3

    .line 290
    move/from16 v3, p1

    .line 292
    move-object v4, v7

    .line 293
    move/from16 v5, p3

    .line 295
    move v6, v10

    .line 296
    move-wide/from16 v7, p5

    .line 298
    move-wide/from16 v9, v17

    .line 300
    move-object v0, v11

    .line 301
    move-wide/from16 v11, p8

    .line 303
    invoke-interface/range {v1 .. v12}, Landroid/os/IInstalld;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    .line 306
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :goto_3
    const/16 v2, 0xc9

    .line 309
    const/4 v3, 0x0

    .line 310
    if-ne v1, v2, :cond_a

    .line 312
    :goto_4
    move v13, v3

    .line 313
    goto :goto_5

    .line 314
    :cond_a
    const/16 v2, 0xc8

    .line 316
    if-ne v1, v2, :cond_b

    .line 318
    :try_start_2
    iget-object v0, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 320
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    goto :goto_4

    .line 328
    :catchall_0
    move-exception v0

    .line 329
    goto :goto_6

    .line 330
    :cond_b
    move v13, v1

    .line 331
    goto :goto_5

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 336
    const/4 v0, 0x0

    .line 337
    throw v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    :catch_1
    :goto_5
    :try_start_3
    monitor-exit v16

    .line 339
    move v0, v13

    .line 340
    goto :goto_8

    .line 341
    :goto_6
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    throw v0

    .line 343
    :cond_c
    :goto_7
    move v0, v6

    .line 344
    :goto_8
    return v0
.end method

.method public final copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const-string v2, "RCPManagerService"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string/jumbo p0, "failed to copyFile"

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v1

    .line 17
    :cond_0
    const-string/jumbo v0, "copyFile"

    .line 20
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 29
    const-string/jumbo v0, "copyFile  getRCPInterface not NULL "

    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    const-string/jumbo p0, "copyFile  getRCPInterface NULL "

    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v1
.end method

.method public final copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const-string v2, "RCPManagerService"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string/jumbo p0, "failed to copyFileInternal"

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v1

    .line 17
    :cond_0
    const-string/jumbo v0, "copyFile"

    .line 20
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v3, "copyFile() srcContainerId="

    .line 28
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v3, "; srcFilePath="

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "; destContainerId="

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "; destFilePath="

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 68
    move-result v0

    .line 69
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 71
    const-string v4, "activity"

    .line 73
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroid/app/ActivityManager;

    .line 79
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_2

    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_2

    .line 91
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v3

    .line 95
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_2

    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 107
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 109
    if-ne v5, v0, :cond_1

    .line 111
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const-string v0, ""

    .line 116
    :goto_0
    const-string/jumbo v3, "com.samsung.android.bbc.bbcagent"

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v0

    .line 123
    const-string/jumbo v3, "copyPackageData"

    .line 126
    const-string/jumbo v4, "failed to copyPackageData"

    .line 129
    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_3

    .line 137
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 149
    move-result-object v0

    .line 150
    const/4 v3, 0x3

    .line 151
    move v1, p1

    .line 152
    move v2, p3

    .line 153
    move-object v4, p2

    .line 154
    move-object v5, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(IIILjava/lang/String;Ljava/lang/String;)I

    .line 158
    move-result v1

    .line 159
    :goto_1
    return v1

    .line 160
    :cond_4
    invoke-static {p2}, Lcom/android/server/RCPManagerService;->isPackageDataRelatedPath(Ljava/lang/String;)Z

    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 166
    invoke-static {p4}, Lcom/android/server/RCPManagerService;->isPackageDataRelatedPath(Ljava/lang/String;)Z

    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_5

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 178
    move-result-object v0

    .line 179
    const-string/jumbo p0, "copy"

    .line 182
    invoke-virtual {v0, p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 185
    const/4 v3, 0x1

    .line 186
    move v1, p1

    .line 187
    move v2, p3

    .line 188
    move-object v4, p2

    .line 189
    move-object v5, p4

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(IIILjava/lang/String;Ljava/lang/String;)I

    .line 193
    move-result p0

    .line 194
    return p0

    .line 195
    :cond_6
    :goto_2
    const-string v0, "TAG"

    .line 197
    const-string v5, "Package data related copy; calling proper delegation method"

    .line 199
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_7

    .line 208
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    goto :goto_3

    .line 212
    :cond_7
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 217
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 220
    move-result-object v0

    .line 221
    const/4 v3, 0x3

    .line 222
    move v1, p1

    .line 223
    move v2, p3

    .line 224
    move-object v4, p2

    .line 225
    move-object v5, p4

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(IIILjava/lang/String;Ljava/lang/String;)I

    .line 229
    move-result v1

    .line 230
    :goto_3
    return v1
.end method

.method public final deleteAllPersonaData(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "----- unregisterBridgeProxy : for user - "

    .line 7
    const-string v1, " -----"

    .line 9
    const-string v2, "RCPManagerService"

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/bridge/BridgeProxy;

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string v0, "BridgeProxy"

    .line 30
    const-string v1, "----- stop called -----"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public final deleteFile(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, "RCPManagerService"

    .line 10
    const-string/jumbo p1, "failed to deleteFile"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v1

    .line 17
    :cond_0
    const-string/jumbo v0, "deleteFile"

    .line 20
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 23
    const-string v0, "RCPManagerService"

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v3, "deleteFile() containerId="

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string p2, "; path="

    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 56
    move-result-object p0

    .line 57
    const-string/jumbo p2, "deleteFile"

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 63
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 65
    if-eqz p0, :cond_3

    .line 67
    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 81
    invoke-virtual {p2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 84
    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-nez v0, :cond_2

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    :try_start_1
    iget-object p2, p2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 90
    invoke-interface {p2, p1}, Landroid/os/IInstalld;->deleteKnoxFile(Ljava/lang/String;)Z

    .line 93
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 99
    const/4 p1, 0x0

    .line 100
    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    :goto_0
    :try_start_3
    monitor-exit p0

    .line 104
    goto :goto_2

    .line 105
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    throw p1

    .line 107
    :cond_3
    :goto_2
    return v1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string p1, "No of Personas : "

    .line 3
    const-string p3, "RCPManagerService"

    .line 5
    const-string v0, "RCP DumpState Started"

    .line 7
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 12
    const-string v0, "android.permission.DUMP"

    .line 14
    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_0

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string p1, "Permission Denial: can\'t dump RCPManagerService from from pid="

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, ", uid="

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string p1, " without permission android.permission.DUMP"

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    return-void

    .line 59
    :cond_0
    iget-object p3, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p3, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 65
    move-result-object p3

    .line 66
    if-eqz p3, :cond_6

    .line 68
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_6

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    move-result-wide v0

    .line 78
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 86
    move-result p1

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 99
    sget-object v2, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    .line 101
    if-nez v2, :cond_1

    .line 103
    new-instance v2, Lcom/android/server/bridge/operations/RCPDumpState;

    .line 105
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, v2, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    sput-object v2, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    .line 115
    :cond_1
    sget-object p1, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    .line 117
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object p3

    .line 121
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_5

    .line 127
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 133
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 135
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 138
    move-result v3

    .line 139
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    .line 141
    new-instance v5, Landroid/os/UserHandle;

    .line 143
    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 146
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    .line 149
    move-result v4

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const-string v6, "PersonaId : "

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v6, " , isKnoxId : "

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    const-string v6, " , isUserRunning : "

    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_3

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    if-eqz v2, :cond_4

    .line 195
    if-eqz v3, :cond_2

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    const-string v4, "++++++++++++++++FileOpsTable of "

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string v4, "++++++++++++++++"

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1, v2, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateFileOpsTable(ILjava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 228
    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    goto :goto_1

    .line 236
    :cond_6
    const-string p0, "No of Personas : Zero"

    .line 238
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    :goto_1
    return-void
.end method

.method public final declared-synchronized exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    const-string/jumbo v0, "exchangeData() return false for input param is not valid"

    .line 4
    const-string v1, "ERROR | exchange Data | from "

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 14
    const-string p1, "RCPManagerService"

    .line 16
    const-string/jumbo p2, "failed to exchangeData"

    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object v3

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_3

    .line 27
    :cond_0
    :try_start_1
    const-string/jumbo v2, "exchangeData"

    .line 30
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 33
    if-eqz p1, :cond_a

    .line 35
    if-gez p2, :cond_1

    .line 37
    goto/16 :goto_2

    .line 39
    :cond_1
    if-eqz p3, :cond_9

    .line 41
    const-string v0, "action"

    .line 43
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_9

    .line 49
    const-string v0, "action"

    .line 51
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 58
    move-result v2

    .line 59
    const/16 v4, 0x3e8

    .line 61
    if-ne v2, v4, :cond_9

    .line 63
    const-string v2, "ImeReq"

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 71
    invoke-static {p3}, Lcom/android/server/RCPManagerService;->processImeRequest(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    .line 75
    return-object v3

    .line 76
    :cond_2
    :try_start_2
    const-string/jumbo v2, "updateKnoxCaptureFilter"

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    const/4 v4, 0x0

    .line 84
    if-eqz v2, :cond_4

    .line 86
    const-string/jumbo p1, "input"

    .line 89
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/android/server/input/InputManagerService;

    .line 95
    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 97
    const-string p1, "add"

    .line 99
    invoke-virtual {p3, p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 107
    iget-object p2, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    .line 109
    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 115
    invoke-virtual {p1, v3}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    .line 119
    return-object v3

    .line 120
    :cond_4
    :try_start_3
    const-string/jumbo v2, "updateInputDeviceId"

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_9

    .line 129
    const-string p1, "add"

    .line 131
    invoke-virtual {p3, p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_6

    .line 137
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    .line 139
    const-string/jumbo p2, "deviceId"

    .line 142
    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 145
    move-result p2

    .line 146
    sget-boolean p3, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 148
    if-eqz p3, :cond_5

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    const-string/jumbo p3, "markInputDeviceAsScanner, inputDevice: "

    .line 156
    const-string v0, "KnoxCaptureInputFilter"

    .line 158
    invoke-static {p2, p3, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_5
    iget-object p3, p1, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object v0

    .line 167
    check-cast p3, Ljava/util/HashSet;

    .line 169
    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 172
    move-result p3

    .line 173
    if-nez p3, :cond_8

    .line 175
    iget-object p1, p1, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    .line 177
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    move-result-object p2

    .line 181
    check-cast p1, Ljava/util/HashSet;

    .line 183
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    goto :goto_1

    .line 187
    :cond_6
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    .line 189
    const-string/jumbo p2, "deviceId"

    .line 192
    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 195
    move-result p2

    .line 196
    sget-boolean p3, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 198
    if-eqz p3, :cond_7

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    new-instance p3, Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v0, "unmarkInputDeviceAsScanner, inputDevice: "

    .line 208
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object p3

    .line 218
    const-string v0, "KnoxCaptureInputFilter"

    .line 220
    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_7
    iget-object p1, p1, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    .line 225
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object p2

    .line 229
    check-cast p1, Ljava/util/HashSet;

    .line 231
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    :cond_8
    :goto_1
    monitor-exit p0

    .line 235
    return-object v3

    .line 236
    :cond_9
    :try_start_4
    const-string p3, "RCPManagerService"

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string p1, ", to user id : "

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object p1

    .line 258
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    monitor-exit p0

    .line 262
    return-object v3

    .line 263
    :cond_a
    :goto_2
    :try_start_5
    const-string p1, "RCPManagerService"

    .line 265
    new-instance p3, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object p2

    .line 277
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    monitor-exit p0

    .line 281
    return-object v3

    .line 282
    :goto_3
    monitor-exit p0

    .line 283
    throw p1
.end method

.method public final getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_0

    .line 9
    const-string p0, "RCPManagerService"

    .line 11
    const-string/jumbo p1, "failed to getFileInfo"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance p0, Landroid/os/Bundle;

    .line 19
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string/jumbo v2, "getFileInfo"

    .line 26
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 29
    const-string v2, "RCPManagerService"

    .line 31
    const-string v3, "P_OS_RCP getFileInfo"

    .line 33
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v2, "RCPManagerService"

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v4, "getFileInfo() containerId="

    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v4, "; path="

    .line 51
    invoke-static {v3, v4, p1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 59
    move-result-object p0

    .line 60
    const-string/jumbo v2, "getFileInfo"

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 66
    new-instance p0, Landroid/os/Bundle;

    .line 68
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 71
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 73
    if-eqz v2, :cond_6

    .line 75
    if-eqz p1, :cond_6

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 83
    goto/16 :goto_5

    .line 85
    :cond_1
    if-eqz p2, :cond_2

    .line 87
    const-string v2, "/storage/emulated"

    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 95
    const-string v2, "/storage"

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    const-string v4, "/mnt/user/"

    .line 101
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    const-string p2, "EnterprisePartitionManager"

    .line 117
    const-string/jumbo v2, "getFileInfo - realath : "

    .line 120
    invoke-static {v2, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 125
    monitor-enter p2

    .line 126
    const/4 v2, 0x0

    .line 127
    :try_start_0
    sget-object v3, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 129
    invoke-virtual {v3}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_3

    .line 135
    new-array p1, v0, [J

    .line 137
    const-wide/16 v3, -0x1

    .line 139
    aput-wide v3, p1, v1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    move-object v2, p1

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    :try_start_1
    iget-object v3, v3, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 145
    invoke-interface {v3, p1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    .line 148
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    goto :goto_0

    .line 150
    :goto_1
    :try_start_2
    aget-wide v3, v2, v1

    .line 152
    long-to-int p1, v3

    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto :goto_4

    .line 156
    :catch_0
    move-exception p1

    .line 157
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 160
    throw v2
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :catch_1
    const/4 p1, -0x1

    .line 162
    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    if-eqz v2, :cond_5

    .line 165
    if-nez p1, :cond_5

    .line 167
    aget-wide v3, v2, v0

    .line 169
    const-wide/16 v5, 0x3e8

    .line 171
    mul-long/2addr v3, v5

    .line 172
    const/4 p2, 0x2

    .line 173
    aget-wide v5, v2, p2

    .line 175
    const/4 p2, 0x3

    .line 176
    aget-wide v7, v2, p2

    .line 178
    const-wide/16 v9, 0x1

    .line 180
    cmp-long p2, v7, v9

    .line 182
    if-nez p2, :cond_4

    .line 184
    goto :goto_3

    .line 185
    :cond_4
    move v0, v1

    .line 186
    goto :goto_3

    .line 187
    :cond_5
    const-wide/16 v3, 0x0

    .line 189
    move v0, v1

    .line 190
    move-wide v5, v3

    .line 191
    :goto_3
    const-string/jumbo p2, "result"

    .line 194
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string/jumbo p1, "last_modified_date"

    .line 200
    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    const-string/jumbo p1, "file_size"

    .line 206
    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    const-string/jumbo p1, "is_dir"

    .line 212
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    goto :goto_6

    .line 216
    :goto_4
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    throw p0

    .line 218
    :cond_6
    :goto_5
    const/4 p1, -0x2

    .line 219
    const-string/jumbo p2, "result"

    .line 222
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    :goto_6
    return-object p0
.end method

.method public final getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "RCPManagerService"

    .line 9
    const-string/jumbo p1, "failed to getFiles"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance p0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string/jumbo v0, "getFiles"

    .line 24
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 27
    const-string v0, "RCPManagerService"

    .line 29
    const-string v1, "P_OS_RCP getFiles"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "RCPManagerService"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v2, "getFiles() containerId="

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string p2, "; path="

    .line 49
    invoke-static {v1, p2, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 57
    move-result-object p0

    .line 58
    const-string/jumbo p2, "getFiles"

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 64
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 66
    const/4 p2, 0x0

    .line 67
    if-eqz p0, :cond_3

    .line 69
    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 80
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    move-result-wide v0

    .line 87
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 89
    monitor-enter v2

    .line 90
    const/4 v3, 0x0

    .line 91
    :try_start_0
    sget-object v4, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 93
    invoke-virtual {v4}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 96
    move-result v5
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-nez v5, :cond_2

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    :try_start_1
    iget-object v4, v4, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 102
    invoke-interface {v4, p1, v0, v1, p0}, Landroid/os/IInstalld;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    .line 105
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 111
    throw p2
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_1

    .line 114
    :catch_1
    :goto_0
    :try_start_3
    monitor-exit v2

    .line 115
    if-eqz v3, :cond_3

    .line 117
    move-object p2, p0

    .line 118
    goto :goto_2

    .line 119
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    throw p0

    .line 121
    :cond_3
    :goto_2
    return-object p2
.end method

.method public final getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .line 1
    const-string/jumbo v0, "getRCPInterface"

    .line 4
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "getRCPInterface My Context is "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "RCPManagerService"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v4, "getRCPInterface getting User Id : "

    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 59
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 67
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroid/content/IRCPInterface;

    .line 73
    return-object p0

    .line 74
    :cond_0
    const-string/jumbo v3, "getRCPInterfaceMap.get(userId) is null. Calling scanAndStartBridgeProxy"

    .line 77
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/RCPManagerService;->scanAndStartBridgeProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_0
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 90
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Landroid/content/IRCPInterface;

    .line 96
    return-object p0
.end method

.method public final initService()Z
    .locals 12

    .line 1
    const-string/jumbo v0, "ms elapsed"

    .line 4
    const-string/jumbo v1, "initService End, "

    .line 7
    const-string v2, "RCPManagerService"

    .line 9
    const-string/jumbo v3, "initService Start"

    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v3

    .line 19
    iget-boolean v5, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 21
    const/4 v6, 0x1

    .line 22
    if-eqz v5, :cond_0

    .line 24
    const-string/jumbo p0, "initService is already done"

    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    const-string/jumbo v5, "initService is doing ... "

    .line 35
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v5, 0x0

    .line 39
    :try_start_0
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 41
    if-nez v7, :cond_1

    .line 43
    const-string/jumbo v7, "initService, failed to getContext"

    .line 46
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    move-result-wide v6

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    :goto_0
    sub-long/2addr v6, v3

    .line 61
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v5

    .line 75
    :catchall_0
    move-exception v5

    .line 76
    move v7, v6

    .line 77
    goto/16 :goto_3

    .line 79
    :catch_0
    move-exception v7

    .line 80
    goto/16 :goto_1

    .line 82
    :cond_1
    :try_start_1
    const-string/jumbo v8, "user"

    .line 85
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Landroid/os/UserManager;

    .line 91
    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    .line 93
    if-nez v7, :cond_2

    .line 95
    const-string/jumbo v7, "initService, failed to get USER_SERVICE"

    .line 98
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    move-result-wide v6

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 115
    const-string/jumbo v8, "persona"

    .line 118
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    .line 124
    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 126
    if-nez v7, :cond_3

    .line 128
    const-string/jumbo v7, "initService, failed to get SEM_PERSONA_SERVICE"

    .line 131
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    move-result-wide v6

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    .line 148
    if-nez v7, :cond_4

    .line 150
    new-instance v7, Landroid/os/Handler;

    .line 152
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 155
    move-result-object v8

    .line 156
    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    .line 161
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mBridgeRunnable:Lcom/android/server/RCPManagerService$2;

    .line 163
    const-wide/16 v9, 0x2710

    .line 165
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_4
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 170
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContainerstateReceiver:Lcom/android/server/RCPManagerService$1;

    .line 172
    invoke-static {v7, v8}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 175
    new-instance v7, Lcom/android/server/KnoxCaptureInputFilter;

    .line 177
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 179
    invoke-direct {v7, v8}, Lcom/android/server/KnoxCaptureInputFilter;-><init>(Landroid/content/Context;)V

    .line 182
    iput-object v7, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    move-result-wide v7

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    sub-long/2addr v7, v3

    .line 196
    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object p0

    .line 206
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    goto :goto_2

    .line 210
    :goto_1
    :try_start_4
    const-string/jumbo v8, "initService is not completed due to... "

    .line 213
    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 222
    move-result-wide v6

    .line 223
    new-instance p0, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    sub-long/2addr v6, v3

    .line 229
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p0

    .line 239
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move v6, v5

    .line 243
    :goto_2
    return v6

    .line 244
    :catchall_1
    move-exception v7

    .line 245
    move-object v11, v7

    .line 246
    move v7, v5

    .line 247
    move-object v5, v11

    .line 248
    :goto_3
    if-eqz v7, :cond_5

    .line 250
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 252
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 255
    move-result-wide v6

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    sub-long/2addr v6, v3

    .line 262
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object p0

    .line 272
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    throw v5
.end method

.method public final isFileExist(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string p0, "RCPManagerService"

    .line 11
    const-string/jumbo p1, "failed to isFileExist"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return v2

    .line 18
    :cond_0
    const-string/jumbo v1, "isFileExist"

    .line 21
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 24
    const-string v1, "RCPManagerService"

    .line 26
    const-string v3, "P_OS_RCP isFileExist"

    .line 28
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v1, "RCPManagerService"

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v4, "isFileExist() containerId="

    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v4, "; path="

    .line 46
    invoke-static {v3, v4, p1, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 54
    move-result-object p0

    .line 55
    const-string/jumbo v1, "isFileExist"

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 61
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 63
    if-eqz p0, :cond_5

    .line 65
    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_1

    .line 73
    goto :goto_4

    .line 74
    :cond_1
    if-eqz p2, :cond_2

    .line 76
    const-string p0, "/storage/emulated"

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_2

    .line 84
    const-string p0, "/storage"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    const-string v3, "/mnt/user/"

    .line 90
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    const-string p0, "EnterprisePartitionManager"

    .line 106
    const-string/jumbo p2, "getFileInfo - realath : "

    .line 109
    invoke-static {p2, p1, p0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 117
    invoke-virtual {p2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_3

    .line 123
    new-array p1, v0, [J

    .line 125
    const-wide/16 v3, -0x1

    .line 127
    aput-wide v3, p1, v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    :try_start_1
    iget-object p2, p2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 132
    invoke-interface {p2, p1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    .line 135
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    :try_start_2
    aget-wide p1, p1, v2

    .line 138
    const-wide/16 v3, 0x0

    .line 140
    cmp-long p1, p1, v3

    .line 142
    if-nez p1, :cond_4

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    move v0, v2

    .line 146
    :goto_1
    move v2, v0

    .line 147
    goto :goto_2

    .line 148
    :catchall_0
    move-exception p1

    .line 149
    goto :goto_3

    .line 150
    :catch_0
    move-exception p1

    .line 151
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 154
    const/4 p1, 0x0

    .line 155
    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :catch_1
    :goto_2
    :try_start_3
    monitor-exit p0

    .line 157
    goto :goto_4

    .line 158
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    throw p1

    .line 160
    :cond_5
    :goto_4
    return v2
.end method

.method public final moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, "RCPManagerService"

    .line 10
    const-string/jumbo p1, "failed to moveFile"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v1

    .line 17
    :cond_0
    const-string/jumbo v0, "moveFile"

    .line 20
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 23
    const-string v0, "RCPManagerService"

    .line 25
    const-string v2, "P_OS_RCP moveFile"

    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v0, "RCPManagerService"

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v3, "moveFile() srcContainerId="

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "; srcFilePath="

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, "; destContainerId="

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "; destFilePath="

    .line 61
    invoke-static {v2, v3, p4, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 69
    move-result-object p0

    .line 70
    const-string/jumbo v0, "move"

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "move"

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 84
    if-nez v0, :cond_1

    .line 86
    const/16 p0, -0x13

    .line 88
    goto :goto_4

    .line 89
    :cond_1
    const/4 v0, -0x2

    .line 90
    if-eqz p2, :cond_7

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_2

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    if-eqz p4, :cond_7

    .line 101
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_7

    .line 114
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_4

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 126
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 129
    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v3, 0x0

    .line 131
    if-nez v2, :cond_5

    .line 133
    move p1, v3

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    :try_start_1
    iget-object v4, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 137
    const/16 v9, 0x24

    .line 139
    move-object v5, p2

    .line 140
    move v6, p1

    .line 141
    move-object v7, p4

    .line 142
    move v8, p3

    .line 143
    invoke-interface/range {v4 .. v9}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    .line 146
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :goto_0
    if-eqz p1, :cond_6

    .line 149
    move v1, v3

    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception p1

    .line 152
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 155
    const/4 p1, 0x0

    .line 156
    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    goto :goto_2

    .line 159
    :catch_1
    :cond_6
    :goto_1
    :try_start_3
    monitor-exit p0

    .line 160
    move p0, v1

    .line 161
    goto :goto_4

    .line 162
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    throw p1

    .line 164
    :cond_7
    :goto_3
    move p0, v0

    .line 165
    :goto_4
    return p0
.end method

.method public final moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, -0x1

    .line 7
    const-string v3, "RCPManagerService"

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string/jumbo p0, "failed to moveFilesForAppEx"

    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-wide v1

    .line 18
    :cond_0
    const-string/jumbo v0, "moveFilesForApp"

    .line 21
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 30
    const-string/jumbo v0, "moveFilesForAppEx  getRCPInterface not NULL "

    .line 33
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    .line 39
    move-result-wide p0

    .line 40
    return-wide p0

    .line 41
    :cond_1
    const-string/jumbo p0, "moveFilesForAppEx  getRCPInterface NULL "

    .line 44
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-wide v1
.end method

.method public final moveUnlimitedFiles(ILandroid/net/Uri;II)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, -0x1

    .line 7
    const-string v3, "RCPManagerService"

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string/jumbo p0, "failed to moveUnlimitedFiles"

    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-wide v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 24
    const-string/jumbo v0, "moveFilesForAppEx moveFiles(>500) getRCPInterface not NULL "

    .line 27
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J

    .line 33
    move-result-wide p0

    .line 34
    return-wide p0

    .line 35
    :cond_1
    const-string/jumbo p0, "moveFiles(>500) getRCPInterface NULL "

    .line 38
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-wide v1
.end method

.method public final registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "RCPManagerService"

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string/jumbo p0, "failed to registerRCPInterface"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 16
    :cond_0
    const-string/jumbo v0, "registerRCPInterface"

    .line 19
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v2, "registerRCPInterface My Context is "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v2, "registerRCPInterface  User calling is "

    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final scanAndStartBridgeProxy(I)V
    .locals 5

    .line 1
    const-string v0, "bindToBridgeProxy : started BridgeProxy for user - "

    .line 3
    const-string v1, " Returning...BridgeProxy already active for user - "

    .line 5
    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 7
    if-eqz v2, :cond_0

    .line 9
    const-string v2, "RCPManagerService"

    .line 11
    const-string v3, " scanAndStartBridgeProxy called for "

    .line 13
    invoke-static {p1, v3, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 18
    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 26
    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 28
    if-eqz v2, :cond_4

    .line 30
    const-string v2, "RCPManagerService"

    .line 32
    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    .line 35
    invoke-static {p1, v3, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    .line 41
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 47
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 49
    if-eq v2, p1, :cond_2

    .line 51
    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 53
    if-eqz v2, :cond_4

    .line 55
    const-string v2, "RCPManagerService"

    .line 57
    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    .line 60
    invoke-static {p1, v3, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_8

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_3

    .line 79
    goto/16 :goto_4

    .line 81
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 83
    if-eqz v2, :cond_4

    .line 85
    const-string v2, "RCPManagerService"

    .line 87
    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for owner - "

    .line 90
    invoke-static {p1, v3, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_4
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    .line 95
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_6

    .line 108
    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 110
    if-eqz p0, :cond_5

    .line 112
    const-string p0, "RCPManagerService"

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    :goto_1
    monitor-exit v2

    .line 133
    return-void

    .line 134
    :cond_6
    new-instance v1, Lcom/android/server/bridge/BridgeProxy;

    .line 136
    invoke-direct {v1, p1}, Lcom/android/server/bridge/BridgeProxy;-><init>(I)V

    .line 139
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v1, v3}, Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V

    .line 144
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 155
    if-eqz p0, :cond_7

    .line 157
    const-string p0, "RCPManagerService"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_7
    monitor-exit v2

    .line 175
    goto :goto_3

    .line 176
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    :catch_0
    move-exception p0

    .line 179
    const-string v0, "RCPManagerService"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    const-string v2, "No need to start BridgeProxy for user "

    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_3
    return-void

    .line 202
    :cond_8
    :goto_4
    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    .line 204
    if-eqz p0, :cond_9

    .line 206
    const-string p0, "RCPManagerService"

    .line 208
    const-string/jumbo v0, "scanAndStartBridgeProxy: NOT starting Bridge Proxy for user = "

    .line 211
    const-string v1, "; because it doesn\'t have personas or it is a guest!"

    .line 213
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_9
    return-void
.end method
