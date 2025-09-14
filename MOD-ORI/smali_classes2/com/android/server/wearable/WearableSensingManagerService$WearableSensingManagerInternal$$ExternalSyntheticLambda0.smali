.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 10
    .line 11
    iget-object v3, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    const-string p1, "WearableSensingManagerPerUserService"

    .line 21
    .line 22
    const-string v0, "Detection service is not available at this moment."

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v3

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v4, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;

    .line 44
    .line 45
    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;-><init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 49
    .line 50
    .line 51
    monitor-exit v3

    .line 52
    :goto_0
    return-void

    .line 53
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method
