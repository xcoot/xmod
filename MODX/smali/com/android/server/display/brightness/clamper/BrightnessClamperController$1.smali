.class public final Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

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
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 7
    iget-object v2, v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 13
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    move-result-wide v3

    .line 17
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 19
    const/4 v5, 0x0

    .line 20
    aget p1, p1, v5

    .line 22
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->addValue(JF)V

    .line 25
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 27
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->getEstimate(J)F

    .line 32
    move-result p1

    .line 33
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 35
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;-><init>(F)V

    .line 42
    check-cast p0, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    return-void
.end method
