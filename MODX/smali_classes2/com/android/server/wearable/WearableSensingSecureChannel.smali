.class public final Lcom/android/server/wearable/WearableSensingSecureChannel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAssociationId:Ljava/lang/Integer;

.field public mClosed:Z

.field public final mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

.field public final mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mLocalIn:Ljava/io/InputStream;

.field public final mLocalOut:Ljava/io/OutputStream;

.field public final mLock:Ljava/lang/Object;

.field public final mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

.field public final mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

.field public final mRemoteFd:Landroid/os/ParcelFileDescriptor;

.field public final mSecureTransportListener:Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

.field public final mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 23
    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 34
    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 43
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 72
    .line 73
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    .line 74
    .line 75
    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    .line 76
    .line 77
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 80
    .line 81
    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    .line 85
    .line 86
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 87
    .line 88
    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    .line 92
    .line 93
    return-void
.end method

.method public static create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;)Lcom/android/server/wearable/WearableSensingSecureChannel;
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v7, Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget-object v5, v0, v1

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    aget-object v6, v0, v8

    .line 18
    .line 19
    move-object v1, v7

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingSecureChannel;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    :try_start_0
    const-string p2, "WearableSensingSecureChannel"

    .line 31
    .line 32
    const-string v0, "Requesting CDM association."

    .line 33
    .line 34
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p2, v7, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 38
    .line 39
    new-instance v0, Landroid/companion/AssociationRequest$Builder;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/companion/AssociationRequest$Builder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "PlaceholderDisplayNameFromWSM"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/companion/AssociationRequest$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationRequest$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v8}, Landroid/companion/AssociationRequest$Builder;->setSelfManaged(Z)Landroid/companion/AssociationRequest$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/companion/AssociationRequest$Builder;->build()Landroid/companion/AssociationRequest;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, v7, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 59
    .line 60
    new-instance v2, Lcom/android/server/wearable/WearableSensingSecureChannel$1;

    .line 61
    .line 62
    invoke-direct {v2, v7}, Lcom/android/server/wearable/WearableSensingSecureChannel$1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0, v1, v2}, Landroid/companion/CompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-object v7

    .line 72
    :catchall_0
    move-exception p2

    .line 73
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p2
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const-string v1, "WearableSensingSecureChannel"

    .line 13
    .line 14
    const-string v2, "Closing WearableSensingSecureChannel."

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->removeOnTransportsChangedListener(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    const v5, 0x43708287

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5, v4}, Landroid/companion/CompanionDeviceManager;->removeOnMessageReceivedListener(ILjava/util/function/BiConsumer;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->disassociate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .line 68
    .line 69
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    :try_start_4
    const-string v2, "WearableSensingSecureChannel"

    .line 86
    .line 87
    const-string v3, "Encountered IOException when closing local input stream."

    .line 88
    .line 89
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    .line 91
    .line 92
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_1
    move-exception v1

    .line 99
    :try_start_6
    const-string v2, "WearableSensingSecureChannel"

    .line 100
    .line 101
    const-string v3, "Encountered IOException when closing local output stream."

    .line 102
    .line 103
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :goto_2
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 123
    .line 124
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 125
    .line 126
    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 129
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    throw p0
.end method

.method public final onError()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableRestartWssProcess()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v3, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-direct {v3, v4}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    iput-object v3, v2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    monitor-exit v1

    .line 68
    goto :goto_2

    .line 69
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableProvideWearableConnectionApi()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    invoke-static {v1, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p0
.end method
