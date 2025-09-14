.class public final synthetic Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/WakelockController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WakelockController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/WakelockController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/WakelockController;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 15
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 17
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityPositive()V

    .line 20
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 22
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 24
    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 30
    if-eqz v0, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 35
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 37
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityNegative()V

    .line 40
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 42
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 44
    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 50
    if-eqz v0, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 55
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 57
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onStateChanged()V

    .line 60
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 62
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 64
    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 67
    :cond_2
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
