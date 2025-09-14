.class public final Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;
.super Landroid/security/rkp/IRemoteProvisioning$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/security/rkp/IRemoteProvisioning$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "RemoteProvisionSysSvc"

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
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :try_start_0
    new-instance p3, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {p3, p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V
    .locals 9

    .line 1
    const-string v0, "getRegistration("

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v7

    .line 11
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    :try_start_0
    const-string v1, "RemoteProvisionSysSvc"

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ")"

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v4, Lcom/android/server/security/rkp/RemoteProvisioningService;->CREATE_REGISTRATION_TIMEOUT:Ljava/time/Duration;

    .line 50
    .line 51
    new-instance v6, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;

    .line 52
    .line 53
    invoke-direct {v6, v5, p2}, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;-><init>(Ljava/util/concurrent/Executor;Landroid/security/rkp/IGetRegistrationCallback;)V

    .line 54
    .line 55
    .line 56
    move-object v3, p1

    .line 57
    invoke-static/range {v1 .. v6}, Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    new-instance v3, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, v4, v0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    move-object v4, p0

    .line 33
    move-object v8, p4

    .line 34
    invoke-virtual/range {v3 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method
