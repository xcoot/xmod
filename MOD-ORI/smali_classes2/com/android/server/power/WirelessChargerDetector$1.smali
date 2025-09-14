.class public final Lcom/android/server/power/WirelessChargerDetector$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    .line 7
    .line 8
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v1, p1, v1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aget v2, p1, v2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    aget p1, p1, v3

    .line 18
    .line 19
    invoke-static {p0, v1, v2, p1}, Lcom/android/server/power/WirelessChargerDetector;->-$$Nest$mprocessSampleLocked(Lcom/android/server/power/WirelessChargerDetector;FFF)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
