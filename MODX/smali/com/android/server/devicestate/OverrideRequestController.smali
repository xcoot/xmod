.class public final Lcom/android/server/devicestate/OverrideRequestController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public final mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

.field public mRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public mStickyRequest:Z

.field public mStickyRequestsAllowed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 6
    return-void
.end method


# virtual methods
.method public final cancelCurrentBaseStateRequestLocked(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p0, "OverrideRequestController"

    .line 7
    const-string p1, "Attempted to cancel a null OverrideRequest"

    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 19
    return-void
.end method

.method public final cancelCurrentRequestLocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p0, "OverrideRequestController"

    .line 7
    const-string p1, "Attempted to cancel a null OverrideRequest"

    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 22
    return-void
.end method

.method public final cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 3
    iget p1, p1, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(ILandroid/os/IBinder;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 16
    return-void
.end method

.method public final cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    .line 7
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 9
    if-eqz p0, :cond_1

    .line 11
    iget-object p0, p1, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 13
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 16
    move-result p0

    .line 17
    const/4 p2, 0x4

    .line 18
    if-eq p0, p2, :cond_0

    .line 20
    iget-object p0, p1, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 22
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 25
    move-result p0

    .line 26
    const/4 p2, 0x5

    .line 27
    if-ne p0, p2, :cond_1

    .line 29
    :cond_0
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 31
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 37
    iget p1, p1, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 39
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->setForceListenProcess(I)V

    .line 42
    :cond_1
    return-void
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "Override Request active: "

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "Request: mPid="

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget v1, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", mRequestedState="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 49
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", mFlags="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string p0, ", mStatus="

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p0, "ACTIVE"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method

.method public final hasRequest(ILandroid/os/IBinder;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 11
    if-ne p2, p0, :cond_0

    .line 13
    move v0, v1

    .line 14
    :cond_0
    return v0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 17
    if-eqz p0, :cond_2

    .line 19
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 21
    if-ne p2, p0, :cond_2

    .line 23
    move v0, v1

    .line 24
    :cond_2
    return v0
.end method
