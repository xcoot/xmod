.class final Lcom/android/server/wearable/RemoteWearableSensingService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

.field private final mSecureConnectionLock:Ljava/lang/Object;

.field private mSecureConnectionProvided:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.service.wearable.WearableSensingService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v7, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const v5, 0x4001000

    .line 18
    .line 19
    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move v6, p3

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mSecureConnection:Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    .line 16
    .line 17
    check-cast v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    .line 18
    .line 19
    const-string v4, "RemoteWearableSensingService"

    .line 20
    .line 21
    const-string v5, "Providing secure wearable connection."

    .line 22
    .line 23
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance v4, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-direct {v4, v2, v3, v1, v5}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    .line 43
    .line 44
    const-string p0, "RemoteWearableSensingService"

    .line 45
    .line 46
    const-string v1, "Binder died but there is no secure wearable connection to provide."

    .line 47
    .line 48
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public final provideSecureConnection(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableRestartWssProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "RemoteWearableSensingService"

    .line 8
    .line 9
    const-string v1, "FLAG_ENABLE_RESTART_WSS_PROCESS is disabled. Do not attempt to restart the WearableSensingService process"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v0, "RemoteWearableSensingService"

    .line 15
    .line 16
    const-string v1, "Providing secure wearable connection."

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v1, "RemoteWearableSensingService"

    .line 39
    .line 40
    const-string v2, "A new wearable connection is provided before the process restart triggered by the previous connection is complete. Discarding the previous connection."

    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableProvideWearableConnectionApi()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    .line 54
    .line 55
    const/4 v2, 0x7

    .line 56
    invoke-static {v2, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 63
    .line 64
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    const-string v1, "RemoteWearableSensingService"

    .line 76
    .line 77
    const-string v2, "Providing secure wearable connection."

    .line 78
    .line 79
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    .line 93
    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :cond_3
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 97
    .line 98
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 102
    .line 103
    new-instance p1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;

    .line 104
    .line 105
    const/4 p2, 0x0

    .line 106
    invoke-direct {p1, p2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 110
    .line 111
    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 114
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0
.end method
