.class public final Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;
.super Landroid/app/wearable/IWearableSensingManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/wearable/WearableSensingShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingShellCommand;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

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

.method public final provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerInternal provideConnection."

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 24
    .line 25
    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "Service not available."

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerInternal provideData."

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 24
    .line 25
    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "Service not available."

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerInternal provideDataStream."

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 24
    .line 25
    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "Service not available."

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 11

    .line 1
    const-string v0, "WearableSensingManagerService"

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerInternal registerDataRequestObserver."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    .line 16
    .line 17
    const-string v2, "WearableSensingManagerService"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string p0, "WearableSensingManagerService"

    .line 29
    .line 30
    const-string p1, "Service not available."

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x3

    .line 36
    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 45
    .line 46
    iget-object v6, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 47
    .line 48
    monitor-enter v6

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 50
    .line 51
    invoke-static {v0, p1, v2, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const-string v1, "WearableSensingManagerService"

    .line 58
    .line 59
    const-string v2, "Received duplicate data request observer."

    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    .line 65
    .line 66
    iget v0, v0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    .line 67
    .line 68
    move v3, v0

    .line 69
    move-object v2, v1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v7, Landroid/os/RemoteCallback;

    .line 79
    .line 80
    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    invoke-direct {v1, v0, v2, p2}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v7, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 97
    .line 98
    iget-object v9, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 99
    .line 100
    new-instance v10, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    .line 101
    .line 102
    move-object v0, v10

    .line 103
    move v1, p1

    .line 104
    move v3, v8

    .line 105
    move-object v4, p2

    .line 106
    move-object v5, v7

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;-><init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 108
    .line 109
    .line 110
    check-cast v9, Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-object v2, v7

    .line 116
    move v3, v8

    .line 117
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 119
    .line 120
    new-instance v6, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;

    .line 121
    .line 122
    move-object v0, v6

    .line 123
    move v1, p1

    .line 124
    move-object v4, p2

    .line 125
    move-object v5, p3

    .line 126
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;-><init>(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p0, v6, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw p0
.end method

.method public final startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerInternal startHotwordRecognition."

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p0, "Service not available."

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    invoke-static {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    invoke-direct {v0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerInternal stopHotwordRecognition."

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p0, "Service not available."

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    invoke-static {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerService"

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerInternal unregisterDataRequestObserver."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    .line 19
    .line 20
    const-string v2, "WearableSensingManagerService"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 26
    .line 27
    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string p0, "WearableSensingManagerService"

    .line 32
    .line 33
    const-string p1, "Service not available."

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x3

    .line 39
    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 53
    .line 54
    invoke-static {v2, p1, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    const-string p0, "WearableSensingManagerService"

    .line 61
    .line 62
    const-string p1, "Previous observer not found, cannot unregister."

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 74
    .line 75
    check-cast v0, Ljava/util/HashSet;

    .line 76
    .line 77
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget v0, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    .line 81
    .line 82
    iget-object p2, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 90
    .line 91
    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0
.end method
