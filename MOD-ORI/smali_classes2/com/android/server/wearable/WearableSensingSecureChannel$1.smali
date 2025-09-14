.class public final Lcom/android/server/wearable/WearableSensingSecureChannel$1;
.super Landroid/companion/CompanionDeviceManager$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "WearableSensingSecureChannel"

    .line 11
    .line 12
    const-string v1, "CDM association created."

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const v4, 0x43708287

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v4, v3}, Landroid/companion/CompanionDeviceManager;->addOnMessageReceivedListener(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/companion/CompanionDeviceManager;->addOnTransportsChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 56
    .line 57
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    .line 67
    .line 68
    invoke-direct {v3, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1, v2, v3}, Landroid/companion/CompanionDeviceManager;->attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v0

    .line 75
    :goto_0
    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final onFailure(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Failed to create CompanionDeviceManager association: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "WearableSensingSecureChannel"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
