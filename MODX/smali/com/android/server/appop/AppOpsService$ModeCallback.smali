.class public final Lcom/android/server/appop/AppOpsService$ModeCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mFlags:I

.field public final mWatchedOpCode:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    iput p3, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    .line 8
    iput p4, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    .line 10
    iput p5, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingUid:I

    .line 12
    iput p6, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingPid:I

    .line 14
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 16
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/appop/AppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    .line 8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x80

    .line 3
    const-string v1, "ModeCallback{"

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
    const/4 v1, -0x1

    .line 26
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 29
    const-string v2, " flags=0x"

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v2, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v2, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    .line 45
    const/4 v3, -0x2

    .line 46
    if-eq v2, v3, :cond_0

    .line 48
    if-eq v2, v1, :cond_1

    .line 50
    const-string v1, " op="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    .line 57
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string v1, " op=(all)"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    :goto_0
    const-string v1, " from uid="

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingUid:I

    .line 77
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 80
    const-string v1, " pid="

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget p0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingPid:I

    .line 87
    const/16 v1, 0x7d

    .line 89
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method
