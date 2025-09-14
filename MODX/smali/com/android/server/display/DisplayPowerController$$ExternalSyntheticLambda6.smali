.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 5
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 1
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 5
    const-string v2, "Display Power Controller Thread State:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mPowerRequest="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mBrightnessReason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const-string v2, "  mAppliedDimming=false"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    const-string v2, "  mAppliedThrottling=false"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mDozing="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    const-string v2, "  mSkipRampState=RAMP_STATE_SKIP_NONE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mScreenOnBlockStartRealTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 13
    const-string v5, "  mScreenOffBlockStartRealTime="

    .line 14
    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 16
    const-string v5, "  mPendingScreenOnUnblocker="

    .line 17
    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mPendingScreenOffUnblocker="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mPendingScreenOff="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 21
    const-string v4, "  mReportedToPolicy="

    .line 22
    invoke-static {v2, v3, v0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_0

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 25
    :cond_0
    const-string v3, "REPORTED_TO_POLICY_SCREEN_ON"

    goto :goto_0

    .line 26
    :cond_1
    const-string v3, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    goto :goto_0

    .line 27
    :cond_2
    const-string v3, "REPORTED_TO_POLICY_SCREEN_OFF"

    .line 28
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v2, "  mIsRbcActive=false"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "    "

    invoke-direct {v2, v0, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 32
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v3, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->dump(Ljava/io/PrintWriter;)V

    .line 33
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v3, :cond_3

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 35
    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    :cond_3
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_4

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "  mColorFadeOnAnimator.isStarted()="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    :cond_4
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_5

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "  mColorFadeOffAnimator.isStarted()="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 43
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    :cond_5
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 47
    const-string v6, "Display Power State:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mStopped="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    .line 49
    const-string v8, "  mScreenState="

    .line 50
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 51
    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-static {v7}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mScreenBrightness="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 53
    const-string v8, "  mSdrScreenBrightness="

    .line 54
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 56
    const-string v8, "  mScreenReady="

    .line 57
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 58
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 59
    const-string v8, "  mScreenUpdatePending="

    .line 60
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 61
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 62
    const-string v8, "  mColorFadePrepared="

    .line 63
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 64
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 65
    const-string v8, "  mColorFadeLevel="

    .line 66
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 67
    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 68
    const-string v8, "  mColorFadeReady="

    .line 69
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 70
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 71
    const-string v8, "  mColorFadeDrawPending="

    .line 72
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 74
    invoke-static {v6, v7, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 75
    iget-object v6, v3, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 76
    const-string v7, "  mBacklightChangeInProgress="

    const-string v8, "  mStateChangeInProgress="

    const-string v9, "  mActualSdrBacklight="

    const-string v10, "  mActualBacklight="

    const-string v11, "  mActualState="

    const-string v12, "  mPendingSdrBacklight="

    const-string v13, "  mPendingBacklight="

    const-string v14, "  mPendingState="

    .line 77
    iget-object v15, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 78
    monitor-enter v15

    .line 79
    :try_start_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 80
    const-string v5, "Photonic Modulator State:"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v14}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v11}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v3, v3, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v3, :cond_6

    .line 91
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 92
    const-string v5, "Color Fade State:"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mPrepared="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v3, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 94
    const-string v7, "  mMode="

    .line 95
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 96
    iget v6, v3, Lcom/android/server/display/ColorFade;->mMode:I

    .line 97
    const-string v7, "  mDisplayLayerStack="

    .line 98
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    iget v6, v3, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 100
    const-string v7, "  mDisplayWidth="

    .line 101
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 102
    iget v6, v3, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 103
    const-string v7, "  mDisplayHeight="

    .line 104
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 105
    iget v6, v3, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 106
    const-string v7, "  mSurfaceVisible="

    .line 107
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    iget-boolean v6, v3, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 109
    const-string v7, "  mSurfaceAlpha="

    .line 110
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    iget v3, v3, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 112
    invoke-static {v5, v3, v0}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 113
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 114
    :cond_6
    :goto_1
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x0

    if-eqz v3, :cond_f

    .line 115
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 116
    const-string v6, "Automatic Brightness Controller Configuration:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v7

    const-string v8, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    invoke-static {v7}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v9

    const-string v10, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "  mState="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    if-eq v11, v4, :cond_9

    const/4 v12, 0x2

    if-eq v11, v12, :cond_8

    const/4 v12, 0x3

    if-eq v11, v12, :cond_7

    .line 120
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 121
    :cond_7
    const-string v11, "AUTO_BRIGHTNESS_OFF_DUE_TO_DISPLAY_STATE"

    goto :goto_2

    .line 122
    :cond_8
    const-string v11, "AUTO_BRIGHTNESS_DISABLED"

    goto :goto_2

    .line 123
    :cond_9
    const-string v11, "AUTO_BRIGHTNESS_ENABLED"

    .line 124
    :goto_2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mDozeScaleFactor="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 128
    const-string v8, "  mInitialLightSensorRate="

    .line 129
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 131
    const-string v8, "  mNormalLightSensorRate="

    .line 132
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 133
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 134
    const-string v8, "  mLightSensorWarmUpTimeConfig="

    .line 135
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 136
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 137
    const-string v8, "  mBrighteningLightDebounceConfig="

    .line 138
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 140
    const-string v9, "  mDarkeningLightDebounceConfig="

    .line 141
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 142
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 143
    const-string v9, "  mBrighteningLightDebounceConfigIdle="

    .line 144
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 145
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfigIdle:J

    .line 146
    const-string v9, "  mDarkeningLightDebounceConfigIdle="

    .line 147
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 148
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfigIdle:J

    .line 149
    const-string v9, "  mResetAmbientLuxAfterWarmUpConfig="

    .line 150
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 151
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 152
    const-string v8, "  mAmbientLightHorizonLong="

    .line 153
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 154
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    .line 155
    const-string v8, "  mAmbientLightHorizonShort="

    .line 156
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    .line 158
    const-string v8, "  mWeightingIntercept="

    .line 159
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 160
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 161
    const-string v8, "  SEC_FEATURE_SUPPORT_HBM="

    .line 162
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 163
    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 164
    const-string v8, "  HBM_LUX="

    .line 165
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 166
    sget v7, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 168
    const-string v6, "Automatic Brightness Controller State:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mLightSensor="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mLightSensorCct="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mLightSensorEnabled="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 172
    const-string v8, "  mLightSensorEnableTime="

    .line 173
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mCurrentLightSensorRate="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 176
    const-string v8, "  mAmbientLux="

    .line 177
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 178
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 179
    const-string v8, "  mAmbientLuxValid="

    .line 180
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 181
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 182
    const-string v8, "  mInjectedLuxEvent="

    .line 183
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 184
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mPreThesholdLux="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    .line 186
    const-string v8, "  mPreThesholdBrightness="

    .line 187
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 188
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    .line 189
    const-string v8, "  mAmbientBrighteningThreshold="

    .line 190
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 191
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 192
    const-string v8, "  mAmbientDarkeningThreshold="

    .line 193
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 194
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string v6, "  mScreenBrighteningThreshold=0.0"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    const-string v6, "  mScreenDarkeningThreshold=0.0"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mLastObservedLux="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 198
    const-string v8, "  mLastObservedLuxTime="

    .line 199
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 200
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mRecentLightSamples="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 202
    const-string v8, "  mAmbientLightRingBuffer="

    .line 203
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 204
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mScreenAutoBrightness="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 206
    const-string v8, "  mDisplayPolicy="

    .line 207
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 208
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    invoke-static {v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    const-string v6, "  mShortTermModel="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    iget-object v6, v3, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 212
    const-string v6, "  mPausedShortTermModel="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v6, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mBrightnessAdjustmentSamplePending="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 217
    const-string v8, "  mBrightnessAdjustmentSampleOldLux="

    .line 218
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 219
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 220
    const-string v8, "  mBrightnessAdjustmentSampleOldBrightness="

    .line 221
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    .line 223
    const-string v8, "  mForegroundAppPackageName="

    .line 224
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 225
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 226
    const-string v8, "  mPendingForegroundAppPackageName="

    .line 227
    invoke-static {v0, v7, v8, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 228
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 229
    const-string v8, "  mForegroundAppCategory="

    .line 230
    invoke-static {v0, v7, v8, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 231
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 232
    const-string v8, "  mPendingForegroundAppCategory="

    .line 233
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 234
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 235
    const-string v8, "  Current mode="

    .line 236
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 238
    invoke-virtual {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mUseLightSensorBlockingPrevention="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 241
    const-string v8, "  mProximity="

    .line 242
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 243
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 244
    invoke-static {v6, v7, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 245
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v6, :cond_a

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mIsRearLightSensor="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 247
    const-string v8, "  mLastAmbientLuxOfFrontLightSensor="

    .line 248
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    .line 250
    invoke-static {v6, v7, v0}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    :cond_a
    move v6, v5

    .line 251
    :goto_3
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 252
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  Mapper for mode "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 254
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 257
    iget-object v8, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v8, v8, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 258
    invoke-virtual {v8}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 259
    iget-object v8, v8, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v8, v8, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 260
    :cond_b
    invoke-virtual {v7, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 261
    :cond_c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mAmbientBrightnessThresholds="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  mAmbientBrightnessThresholdsIdle="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsIdle:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v6, :cond_d

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mAmbientBrightnessThresholdsTouchHigh:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mAmbientBrightnessThresholdsTouchLow:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    :cond_d
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v3

    if-ge v3, v4, :cond_e

    .line 268
    const-string v3, "No Automatic Brightness Adjustments"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 269
    :cond_e
    const-string v6, "Automatic Brightness Adjustments Last "

    const-string v7, " Events: "

    .line 270
    invoke-static {v3, v0, v6, v7}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/display/brightness/BrightnessEvent;

    move v6, v5

    .line 272
    :goto_4
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v3, v6

    .line 274
    invoke-virtual {v8, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 276
    :cond_f
    :goto_5
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v3

    if-ge v3, v4, :cond_10

    .line 277
    const-string v3, "No Reduce Bright Colors Adjustments"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 278
    :cond_10
    const-string v6, "Reduce Bright Colors Adjustments Last "

    const-string v7, " Events: "

    .line 279
    invoke-static {v3, v0, v6, v7}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/display/brightness/BrightnessEvent;

    move v6, v5

    .line 281
    :goto_6
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 283
    :cond_11
    :goto_7
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v3, :cond_12

    .line 284
    invoke-virtual {v3, v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 285
    :cond_12
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    const-wide/16 v6, 0x3e8

    if-eqz v3, :cond_15

    .line 286
    const-string v8, "BrightnessRangeController:"

    .line 287
    const-string v9, "  mUseNormalBrightnessController="

    .line 288
    invoke-static {v0, v8, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 289
    iget-boolean v9, v3, Lcom/android/server/display/BrightnessRangeController;->mUseNbmController:Z

    .line 290
    const-string v10, "  mUseHdrClamper="

    .line 291
    invoke-static {v8, v9, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 292
    iget-boolean v9, v3, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    .line 293
    invoke-static {v8, v9, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 294
    iget-object v8, v3, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    new-instance v9, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v0, v10}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Object;I)V

    iget-object v8, v8, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 296
    iget-object v8, v3, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    const-string v9, "NormalBrightnessModeController:"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  mAutoBrightnessEnabled="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v8, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 299
    const-string v12, "  mAmbientLux="

    .line 300
    invoke-static {v9, v11, v0, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 301
    iget v11, v8, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    .line 302
    const-string v13, "  mMaxBrightness="

    .line 303
    invoke-static {v9, v11, v0, v13}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 304
    iget v11, v8, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    .line 305
    const-string v14, "  mMaxBrightnessLimits="

    .line 306
    invoke-static {v9, v11, v0, v14}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 307
    iget-object v8, v8, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    iget-object v3, v3, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    const-string v8, "HdrClamper:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 311
    const-string v11, "  mDesiredMaxBrightness="

    .line 312
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 313
    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 314
    const-string v11, "  mTransitionRate="

    .line 315
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 316
    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 317
    const-string v11, "  mDesiredTransitionRate="

    .line 318
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 319
    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 320
    const-string v11, "  mHdrVisible="

    .line 321
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 322
    iget-boolean v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 323
    const-string v11, "  mHdrListener.mHdrMinPixels="

    .line 324
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 325
    iget-object v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    iget v9, v9, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    .line 326
    const-string v11, "  mHdrBrightnessData="

    .line 327
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 328
    iget-object v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-nez v9, :cond_13

    const-string/jumbo v9, "null"

    goto :goto_8

    .line 329
    :cond_13
    invoke-virtual {v9}, Lcom/android/server/display/config/HdrBrightnessData;->toString()Ljava/lang/String;

    move-result-object v9

    .line 330
    :goto_8
    const-string v11, "  mHdrListener registered="

    .line 331
    invoke-static {v0, v9, v11, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    iget-object v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v9, :cond_14

    goto :goto_9

    :cond_14
    move v4, v5

    .line 333
    :goto_9
    invoke-static {v8, v4, v0, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    iget v5, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 335
    invoke-static {v4, v5, v0, v10}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    iget-boolean v3, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 337
    invoke-static {v4, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 338
    :cond_15
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    if-eqz v3, :cond_16

    .line 339
    new-instance v4, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v0}, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 340
    :cond_16
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 341
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 342
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    if-eqz v3, :cond_17

    .line 343
    const-string v4, "WakelockController State:"

    .line 344
    const-string v5, "  mDisplayId="

    .line 345
    invoke-static {v0, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 346
    iget v5, v3, Lcom/android/server/display/WakelockController;->mDisplayId:I

    .line 347
    const-string v6, "  mUnfinishedBusiness="

    .line 348
    invoke-static {v4, v5, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->hasUnfinishedBusiness()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  mOnStateChangePending="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isOnStateChangedPending()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  mOnProximityPositiveMessages="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isProximityPositiveAcquired()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  mOnProximityNegativeMessages="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isProximityNegativeAcquired()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  mIsRefreshRateRequested="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isRefreshRateRequested()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  mIsEarlyWakeUpRequested="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isEarlyWakeupRequested()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    :cond_17
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 356
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    if-eqz v3, :cond_19

    .line 357
    const-string v4, "  Last selected DisplayBrightnessStrategy= "

    const-string v5, "  mLastUserSetScreenBrightness="

    const-string v6, "  mCurrentScreenBrightness="

    const-string v7, "  mPendingScreenBrightness="

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 358
    const-string v8, "DisplayBrightnessController:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  mDisplayId=: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    .line 360
    const-string v10, "  mScreenBrightnessDefault="

    .line 361
    invoke-static {v8, v9, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 362
    iget v9, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 363
    const-string v10, "  mPersistBrightnessNitsForDefaultDisplay="

    .line 364
    invoke-static {v8, v9, v0, v10}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 365
    iget-boolean v9, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    .line 366
    invoke-static {v8, v9, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 367
    iget-object v8, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 368
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    iget-object v5, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    if-eqz v5, :cond_18

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 373
    invoke-interface {v4}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_b

    .line 375
    :cond_18
    :goto_a
    new-instance v4, Landroid/util/IndentingPrintWriter;

    const-string v5, " "

    invoke-direct {v4, v0, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 376
    iget-object v3, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {v3, v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->dump(Ljava/io/PrintWriter;)V

    .line 377
    monitor-exit v8

    goto :goto_c

    :goto_b
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 378
    :cond_19
    :goto_c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 379
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    if-eqz v3, :cond_20

    .line 380
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 382
    const-string v4, "DisplayStateController:"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  mPerformScreenOffTransition:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 384
    const-string v6, "  mDozeStateOverride="

    .line 385
    invoke-static {v4, v5, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 386
    iget v5, v3, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v4, Landroid/util/IndentingPrintWriter;

    const-string v5, " "

    invoke-direct {v4, v0, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 388
    iget-object v3, v3, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    if-eqz v3, :cond_20

    .line 389
    const-string v5, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 390
    const-string v6, "DisplayPowerProximityStateController:"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    iget-object v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 392
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mDisplayId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mWaitingForNegativeProximity="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mIgnoreProximityUntilChanged="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mProximitySensor="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mProximitySensorEnabled="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mProximityThreshold="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mProximity="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1c

    if-eqz v6, :cond_1b

    if-eq v6, v7, :cond_1a

    .line 401
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 402
    :cond_1a
    const-string v6, "Positive"

    goto :goto_d

    .line 403
    :cond_1b
    const-string v6, "Negative"

    goto :goto_d

    .line 404
    :cond_1c
    const-string v6, "Unknown"

    .line 405
    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mPendingProximity="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    if-eq v6, v8, :cond_1f

    if-eqz v6, :cond_1e

    if-eq v6, v7, :cond_1d

    .line 407
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    .line 408
    :cond_1d
    const-string v6, "Positive"

    goto :goto_e

    .line 409
    :cond_1e
    const-string v6, "Negative"

    goto :goto_e

    .line 410
    :cond_1f
    const-string v6, "Unknown"

    .line 411
    :goto_e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mPendingProximityDebounceTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 413
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mScreenOffBecauseOfProximity="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mSkipRampBecauseOfProximityChangeToNegative="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :catchall_2
    move-exception v0

    .line 417
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 418
    :cond_20
    :goto_f
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v3, :cond_21

    .line 419
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v3, :cond_21

    .line 420
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 421
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v3, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->dump(Ljava/io/PrintWriter;)V

    .line 422
    :cond_21
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v3, :cond_22

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mDualScreenPolicy="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 424
    invoke-static {v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 425
    :cond_22
    const-string v3, "  SEC_FEATURE_EARLY_WAKEUP=true"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    if-eqz v3, :cond_23

    .line 427
    const-string v4, "    mEarlyDisplayReadyLocked="

    const-string v5, "    mEarlyLightSensorReadyLocked="

    const-string v6, "  mHoldingSuspendBlocker="

    const-string v7, "  now="

    const-string v8, "  mLastEnableRequestedTime="

    const-string v9, "  mEarlyDisplayEnabled="

    const-string v10, "  mEarlyLightSensorEnabled="

    const-string v11, "  mAppliedLocked="

    iget-object v12, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    monitor-enter v12

    .line 428
    :try_start_5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 429
    const-string v13, "[ew] EarlyWakeUpManager:"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v3, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v3, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v3, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    monitor-exit v12

    goto :goto_10

    :catchall_3
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 439
    :cond_23
    :goto_10
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 440
    const-string v3, "  USE_LONG_RAMP_RATE_FOR_NON_HBM=true"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 442
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    if-eqz v1, :cond_24

    .line 443
    const-string v3, "BrightnessClamperController:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mBrightnessCap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mBrightnessCap:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mClamperType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mClamperApplied: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperApplied:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mLightSensor="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mRegisteredLightSensor="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v3, Landroid/util/IndentingPrintWriter;

    const-string v4, "    "

    invoke-direct {v3, v2, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 450
    iget-object v2, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 451
    iget-object v1, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 452
    :cond_24
    const-string v1, "  SEC_FEATURE_BRIGHTNESS_CONTROL_BY_EXTRA_DIM=false"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
