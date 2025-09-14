.class public final Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 10
    const/4 v0, 0x0

    .line 11
    aget p1, p1, v0

    .line 13
    const/high16 v1, 0x42c80000    # 100.0f

    .line 15
    mul-float/2addr p1, v1

    .line 16
    float-to-int p1, p1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "UBPSensorEventListener : UBP Pressure = "

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "LocationX"

    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v1, "UBPSensorEventListener : onSensorChanged() "

    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v4, "handleUpdateUBPInfo = sensorMeasurement : "

    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v4, " (Valid range  30000 ~ 115000)"

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/16 v3, 0x7530

    .line 71
    iget-object v4, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 73
    if-lt p1, v3, :cond_1

    .line 75
    const v3, 0x1c138

    .line 78
    if-gt p1, v3, :cond_1

    .line 80
    const-string/jumbo v3, "handleUpdateUBPInfo = bitMask : 8"

    .line 83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/16 v2, 0x8

    .line 88
    invoke-virtual {v4, v2, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpInfo(II)V

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 p1, 0x4

    .line 93
    invoke-virtual {v4, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpError(I)V

    .line 96
    :goto_0
    iput-boolean v0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 98
    iget-object p1, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 100
    iget-object v0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

    .line 102
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 105
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 107
    iget-object v0, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    .line 109
    if-eqz v0, :cond_2

    .line 111
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 118
    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    .line 121
    :cond_2
    return-void
.end method
