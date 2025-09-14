.class public final Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 20
    .line 21
    iget-boolean p2, p1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 34
    .line 35
    iget p1, p1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 46
    .line 47
    const-string p2, "Restore low battery force dim (manual brightness)"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    sput-wide p1, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 69
    .line 70
    iget p2, p1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 79
    .line 80
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mClampedMaxBrightness:F

    .line 81
    .line 82
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 87
    .line 88
    invoke-virtual {p1, p2, p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-void
.end method
