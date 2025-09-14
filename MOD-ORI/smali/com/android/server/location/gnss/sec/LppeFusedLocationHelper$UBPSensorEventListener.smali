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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget p1, p1, v0

    .line 12
    .line 13
    const/high16 v1, 0x42c80000    # 100.0f

    .line 14
    .line 15
    mul-float/2addr p1, v1

    .line 16
    float-to-int p1, p1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "UBPSensorEventListener : UBP Pressure = "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "LocationX"

    .line 32
    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v1, "UBPSensorEventListener : onSensorChanged() "

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v4, "handleUpdateUBPInfo = sensorMeasurement : "

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, " (Valid range  30000 ~ 115000)"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/16 v3, 0x7530

    .line 70
    .line 71
    iget-object v4, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 72
    .line 73
    if-lt p1, v3, :cond_1

    .line 74
    .line 75
    const v3, 0x1c138

    .line 76
    .line 77
    .line 78
    if-gt p1, v3, :cond_1

    .line 79
    .line 80
    const-string/jumbo v3, "handleUpdateUBPInfo = bitMask : 8"

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    invoke-virtual {v4, v2, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpInfo(II)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 p1, 0x4

    .line 93
    invoke-virtual {v4, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpError(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iput-boolean v0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 97
    .line 98
    iget-object p1, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 99
    .line 100
    iget-object v0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 106
    .line 107
    iget-object v0, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    .line 120
    .line 121
    :cond_2
    return-void
.end method
