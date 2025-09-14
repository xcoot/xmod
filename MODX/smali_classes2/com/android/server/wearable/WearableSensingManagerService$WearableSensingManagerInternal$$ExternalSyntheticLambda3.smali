.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;->f$0:Landroid/content/ComponentName;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;->f$1:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;->f$0:Landroid/content/ComponentName;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;->f$1:Landroid/os/RemoteCallback;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x3

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p1, "WearableSensingManagerPerUserService"

    .line 18
    .line 19
    const-string v0, "Detection service is not available at this moment."

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {v3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 42
    .line 43
    iput-object v2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 44
    .line 45
    :cond_1
    iget-object v2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 53
    .line 54
    new-instance v3, Landroid/os/RemoteCallback;

    .line 55
    .line 56
    new-instance v4, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct {v4, p1, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance p1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    invoke-direct {p1, v3, p0}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda3;-><init>(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 73
    .line 74
    .line 75
    monitor-exit v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string p1, "WearableSensingManagerPerUserService"

    .line 78
    .line 79
    const-string v0, "Voice interaction manager is not available at this moment."

    .line 80
    .line 81
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-static {v3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 85
    .line 86
    .line 87
    monitor-exit v1

    .line 88
    :goto_0
    return-void

    .line 89
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method
