.class public final synthetic Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/notification/SmartAlertController$1;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    .line 13
    .line 14
    const-string v1, "SmartAlertController"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string p0, "SmartAlert - inCall, vibration will be returned"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "SmartAlert - vibrate"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    .line 35
    .line 36
    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    .line 41
    .line 42
    invoke-direct {p0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    const/16 v1, 0x31

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v1}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v4, "SmartAlertController"

    .line 61
    .line 62
    const/16 v1, 0x3e8

    .line 63
    .line 64
    const-string v2, "android"

    .line 65
    .line 66
    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void

    .line 70
    :pswitch_0
    check-cast p0, Lcom/android/server/notification/SmartAlertController;

    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    .line 87
    .line 88
    const-string p0, "SmartAlertController"

    .line 89
    .line 90
    const-string v0, "SmartAlert - unregisterListener"

    .line 91
    .line 92
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
