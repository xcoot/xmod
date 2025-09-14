.class public final Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string p3, "RotationResolverManagerService"

    .line 6
    .line 7
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 22
    .line 23
    .line 24
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.MANAGE_ROTATION_RESOLVER"

    .line 6
    .line 7
    const-string v3, "RotationResolverManagerService"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 15
    .line 16
    invoke-direct {v0, v2}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    .line 17
    .line 18
    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move-object v4, p3

    .line 23
    move-object v5, p4

    .line 24
    move-object v6, p5

    .line 25
    move-object v7, p6

    .line 26
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method
