.class public final Lcom/android/server/wm/DisplayRotation$FoldController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/DisplayRotation$FoldController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController$2;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$2;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget p1, p1, v0

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mMaxHingeAngle:I

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    cmpg-float p1, p1, v0

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    .line 37
    .line 38
    int-to-long v1, p0

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
