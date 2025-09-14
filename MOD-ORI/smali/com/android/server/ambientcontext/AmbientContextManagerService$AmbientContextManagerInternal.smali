.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;
.super Landroid/app/ambientcontext/IAmbientContextManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const-string v3, "AmbientContextManagerService"

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 19
    .line 20
    const-string p0, "Service not enabled."

    .line 21
    .line 22
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 35
    .line 36
    iget-boolean p1, p1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsWearableServiceEnabled:Z

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 41
    .line 42
    const-string p0, "Wearable Service not available."

    .line 43
    .line 44
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 49
    .line 50
    invoke-static {p0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mcontainsMixedEvents(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    const-string p0, "AmbientContextEventRequest contains mixed events, this is not supported."

    .line 57
    .line 58
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :cond_2
    const/4 p0, 0x1

    .line 64
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    sget-object p3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 6
    .line 7
    const-string p3, "AmbientContextManagerService"

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
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 24
    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "queryServiceStatus unavailable user_id: "

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 18
    .line 19
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 20
    .line 21
    const-string v3, "AmbientContextManagerService"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->intArrayToIntegerSet([I)Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    const-string p0, "AmbientContextManagerService"

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    const/4 v0, 0x1

    .line 87
    if-ne p0, v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p0, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    monitor-exit v1

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;

    .line 25
    .line 26
    invoke-direct {v1, v0, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 3
    .line 4
    const-string v1, "AmbientContextManagerService"

    .line 5
    .line 6
    const-string v2, "AmbientContextManagerService registerObserverWithCallback."

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v3, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 25
    .line 26
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v3, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo p1, "onRegisterObserver unavailable user_id: "

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    new-array v3, v3, [I

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v4, 0x0

    .line 88
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_1

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/lang/Integer;

    .line 99
    .line 100
    add-int/lit8 v6, v4, 0x1

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    aput v5, v3, v4

    .line 107
    .line 108
    move v4, v6

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-ne p0, v0, :cond_2

    .line 115
    .line 116
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-static {p3, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void
.end method

.method public final startConsentActivity([ILjava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 17
    .line 18
    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 19
    .line 20
    const-string v2, "AmbientContextManagerService"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mcontainsMixedEvents(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string p0, "AmbientContextEventRequest contains mixed events, this is not supported."

    .line 34
    .line 35
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->intArrayToIntegerSet([I)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, v1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_8

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "Opening consent activity of "

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, " for "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "AmbientContextManagerPerUserService"

    .line 87
    .line 88
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 92
    .line 93
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/4 v3, 0x1

    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-interface {v2, v3, v4, v0}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 100
    .line 101
    .line 102
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 126
    .line 127
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 128
    .line 129
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_2

    .line 136
    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string p1, "Recent task package name: "

    .line 140
    .line 141
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 145
    .line 146
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, " doesn\'t match with client package name: "

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto/16 :goto_6

    .line 167
    .line 168
    :cond_2
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getConsentComponentConfig()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_3

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    goto :goto_0

    .line 194
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v5, "Consent component name: "

    .line 197
    .line 198
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_0
    if-nez v3, :cond_4

    .line 216
    .line 217
    const-string p0, "Consent component not found!"

    .line 218
    .line 219
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_4
    const-string v4, "Starting consent activity for "

    .line 225
    .line 226
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    new-instance v4, Landroid/content/Intent;

    .line 234
    .line 235
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 239
    .line 240
    .line 241
    move-result-wide v5

    .line 242
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getAmbientContextPackageNameExtraKeyConfig()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getAmbientContextEventArrayExtraKeyConfig()I

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    invoke-virtual {v8, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    if-eqz v7, :cond_5

    .line 274
    .line 275
    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :catchall_0
    move-exception p0

    .line 280
    goto :goto_4

    .line 281
    :cond_5
    const-string p2, "Missing packageNameExtraKey for consent activity"

    .line 282
    .line 283
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    :goto_1
    if-eqz p0, :cond_6

    .line 287
    .line 288
    invoke-virtual {v4, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_6
    const-string p0, "Missing eventArrayExtraKey for consent activity"

    .line 293
    .line 294
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    :goto_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    iget p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {v2, v4, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .line 316
    .line 317
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :catch_0
    :try_start_2
    const-string/jumbo p0, "unable to start consent activity"

    .line 322
    .line 323
    .line 324
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    .line 330
    .line 331
    throw p0

    .line 332
    :cond_7
    :goto_5
    const-string p0, "Recent task list is empty!"

    .line 333
    .line 334
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catch_1
    const-string p0, "Failed to query recent tasks!"

    .line 339
    .line 340
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string/jumbo p1, "startConsentActivity unavailable user_id: "

    .line 347
    .line 348
    .line 349
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    :goto_6
    return-void
.end method

.method public final unregisterObserver(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->unregisterObserver_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v2, v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v3, v4, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object v3, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 65
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 69
    .line 70
    check-cast v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 71
    .line 72
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v5, "AmbientContextManagerService"

    .line 78
    .line 79
    const-string v6, "Remove client: "

    .line 80
    .line 81
    invoke-static {v6, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v5, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 85
    .line 86
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    iget-object v6, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 88
    .line 89
    invoke-virtual {v4, v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->findExistingRequests(ILjava/lang/String;)Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v6, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    :try_start_5
    throw p0

    .line 104
    :goto_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    :try_start_6
    throw p0

    .line 106
    :cond_1
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 107
    .line 108
    const-string v2, "AmbientContextManagerService"

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v4, "onUnregisterObserver unavailable user_id: "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catchall_2
    move-exception p0

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 141
    throw p0
.end method
