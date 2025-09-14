.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDetected()V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerPerUserService"

    .line 2
    .line 3
    const-string v1, "hotwordDetectionCallback onDetected."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "WearableSensingManagerPerUserService"

    .line 20
    .line 21
    const-string v1, "Wearable sensing service is not available at this moment."

    .line 22
    .line 23
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    :goto_0
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "hotwordDetectionCallback onError. ErrorMessage: "

    .line 2
    .line 3
    const-string v1, "WearableSensingManagerPerUserService"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onRejected()V
    .locals 2

    .line 1
    const-string v0, "WearableSensingManagerPerUserService"

    .line 2
    .line 3
    const-string v1, "hotwordDetectionCallback onRejected."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
