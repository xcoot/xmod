.class public final Lcom/android/server/appop/AppOpsService$StartedCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mWatchingUid:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 8
    iput p3, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 10
    iput p4, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingUid:I

    .line 12
    iput p5, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingPid:I

    .line 14
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/appop/AppOpsService;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V

    .line 8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 3
    const-string v1, "StartedCallback{"

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, " watchinguid="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 27
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 30
    const-string v1, " from uid="

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingUid:I

    .line 37
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 40
    const-string v1, " pid="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget p0, p0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingPid:I

    .line 47
    const/16 v1, 0x7d

    .line 49
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
