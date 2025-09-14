.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/RemoteCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/app/PendingIntent;

.field public final synthetic f$4:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$1:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$3:Landroid/app/PendingIntent;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$4:Landroid/os/RemoteCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$0:I

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$1:Landroid/os/RemoteCallback;

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$2:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$3:Landroid/app/PendingIntent;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;->f$4:Landroid/os/RemoteCallback;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object p0, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p1, "WearableSensingManagerPerUserService"

    .line 27
    .line 28
    const-string v0, "Detection service is not available at this moment."

    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    invoke-static {p1, v5}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v6, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    move-object v0, v6

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;-><init>(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v6}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    :goto_0
    return-void

    .line 60
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method
