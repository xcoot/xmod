.class public final synthetic Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 2
    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string p0, "WearableSensingSecureChannel"

    .line 23
    .line 24
    const-string p1, "mAssociationId is null when transport changed"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v0, 0x1

    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    const-string p1, "WearableSensingSecureChannel"

    .line 58
    .line 59
    const-string v0, "Transport available"

    .line 60
    .line 61
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 65
    .line 66
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-string v0, "WearableSensingManagerPerUserService"

    .line 82
    .line 83
    const-string v1, "calling over to remote service."

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 89
    .line 90
    iget-object v2, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v2

    .line 93
    :try_start_1
    iget-object v0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 101
    .line 102
    iget-object v1, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    .line 105
    .line 106
    check-cast v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    .line 107
    .line 108
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;)V

    .line 109
    .line 110
    .line 111
    monitor-exit v2

    .line 112
    goto :goto_0

    .line 113
    :catchall_1
    move-exception p0

    .line 114
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    throw p0

    .line 116
    :cond_2
    if-nez p1, :cond_3

    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    .line 120
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    const-string p1, "WearableSensingSecureChannel"

    .line 127
    .line 128
    const-string v0, "CDM transport is detached. This is not recoverable."

    .line 129
    .line 130
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_0
    return-void

    .line 137
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    throw p0
.end method
