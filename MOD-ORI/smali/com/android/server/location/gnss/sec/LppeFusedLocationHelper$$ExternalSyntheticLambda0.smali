.class public final synthetic Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "FLP measurement is timeout"

    .line 13
    .line 14
    const-string v1, "LocationX"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "handleUpdateFLPError :  2"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectFlpError(I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v0, "LocationX"

    .line 40
    .line 41
    const-string v1, "UBP measurement is timeout"

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "handleUpdateUBPError :  4"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpError(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const-string v0, "LocationX"

    .line 74
    .line 75
    const-string/jumbo v1, "wlan measurement is timeout"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWlanError()V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
