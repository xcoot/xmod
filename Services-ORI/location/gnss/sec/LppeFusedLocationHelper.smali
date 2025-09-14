.class public final Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;


# instance fields
.field public mCivicAddressTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mFlpTimeout:Ljava/lang/Runnable;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCivicAddressRequested:Z

.field public mIsFlpRequested:Z

.field public mIsRetryWifiScan:Z

.field public mIsUbpRequested:Z

.field public mIsWifiScanRequested:Z

.field public final mLocationListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public mPressureSensor:Landroid/hardware/Sensor;

.field public mSensorEventListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mUbpTimeout:Ljava/lang/Runnable;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiScanner:Landroid/net/wifi/WifiScanner;

.field public mWlanTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Ljava/lang/Runnable;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Ljava/lang/Runnable;

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsCivicAddressRequested:Z

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mCivicAddressTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

    .line 32
    .line 33
    const-string v0, "LppeFusedLocationHelper"

    .line 34
    .line 35
    const-string v1, "Constructor"

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 43
    .line 44
    new-instance v1, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 56
    .line 57
    const-string/jumbo p3, "initializeLppeLocationHelper"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const-string/jumbo p3, "wifi"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroid/net/wifi/WifiManager;

    .line 71
    .line 72
    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    .line 74
    const-string/jumbo p3, "sensor"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Landroid/hardware/SensorManager;

    .line 82
    .line 83
    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 84
    .line 85
    const-string/jumbo p3, "location"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Landroid/location/LocationManager;

    .line 93
    .line 94
    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 95
    .line 96
    const-string/jumbo p3, "connectivity"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    check-cast p3, Landroid/net/ConnectivityManager;

    .line 104
    .line 105
    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 106
    .line 107
    const-string/jumbo p3, "wifiscanner"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/net/wifi/WifiScanner;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 117
    .line 118
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setLppeHelperCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static convertStringToHexLong(Ljava/lang/String;)J
    .locals 2

    .line 1
    :try_start_0
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string p0, "LocationX"

    .line 17
    .line 18
    const-string/jumbo v0, "convertStringToHexLong : NumberFormatException"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    :goto_0
    return-wide v0
.end method

.method public static getResponseTime(II)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    if-ge p0, p1, :cond_0

    .line 4
    .line 5
    int-to-long p0, p0

    .line 6
    :goto_0
    mul-long/2addr p0, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    int-to-long p0, p1

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    return-wide p0
.end method


# virtual methods
.method public final handleUpdateWlanError()V
    .locals 2

    .line 1
    const-string/jumbo v0, "handleUpdateWLANError :  3"

    .line 2
    .line 3
    .line 4
    const-string v1, "LocationX"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->injectWlanError(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
