.class public final Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static grantVisibilityToCaller(ILjava/lang/String;)V
    .locals 11

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    move-object v4, v0

    .line 28
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v10, 0x0

    .line 33
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, "Permission Denial: changeProviderAndSetting() from pid="

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, ", uid="

    .line 44
    .line 45
    const-string v0, " requires android.permission.WRITE_SECURE_SETTINGS"

    .line 46
    .line 47
    const-string v1, "WebViewUpdateService"

    .line 48
    .line 49
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance p1, Ljava/lang/SecurityException;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "WebViewUpdateService"

    .line 8
    .line 9
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 19
    .line 20
    invoke-interface {p0, p2}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->dumpState(Ljava/io/PrintWriter;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final enableMultiProcess(Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 28
    .line 29
    invoke-interface {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->enableMultiProcess(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, "Permission Denial: enableMultiProcess() from pid="

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, ", uid="

    .line 49
    .line 50
    const-string v0, " requires android.permission.WRITE_SECURE_SETTINGS"

    .line 51
    .line 52
    const-string v1, "WebViewUpdateService"

    .line 53
    .line 54
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Ljava/lang/SecurityException;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p1, "enableMultiProcess shouldn\'t be called if update_service_v2 flag is set."

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1, v0}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->grantVisibilityToCaller(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    return-object p0
.end method

.method public final getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final isMultiProcessEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->isMultiProcessEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "isMultiProcessEnabled shouldn\'t be called if update_service_v2 flag is set."

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final notifyRelroCreationCompleted()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x40d

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x3e8

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->notifyRelroCreationCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    .line 10
    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move-object v7, p6

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    .line 26
    .line 27
    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-object v3, p2

    .line 31
    move-object v4, p3

    .line 32
    move-object v5, p4

    .line 33
    move-object v6, p5

    .line 34
    move-object v7, p6

    .line 35
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sget-object v4, Lcom/android/server/webkit/WebViewUpdateService;->sAppWaitingForRelroCompletionDelay:Lcom/android/modules/expresslog/Histogram;

    .line 28
    .line 29
    sub-long/2addr v2, v0

    .line 30
    long-to-float v0, v2

    .line 31
    invoke-virtual {v4, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1, v0}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->grantVisibilityToCaller(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-object p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "Cannot create a WebView from the SystemServer"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
