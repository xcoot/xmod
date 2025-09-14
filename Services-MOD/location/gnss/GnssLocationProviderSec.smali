.class public final Lcom/android/server/location/gnss/GnssLocationProviderSec;
.super Lcom/android/server/location/gnss/GnssLocationProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GNSS_DEVICE_ID:J

.field public static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field public static isWlanApConnected:Z


# instance fields
.field public isIssueTrackerIntentReceived:Z

.field public isSehRefLocation:Z

.field public ktPositionMode:I

.field public final mBroadcastReceiverSec:Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

.field public mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public final mCellInfoCb:Lcom/android/server/location/gnss/GnssLocationProviderSec$2;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mConstellationString:[Ljava/lang/String;

.field public mEquipmentTestModeEnabled:Z

.field public mFocusToneGenerator:Landroid/media/ToneGenerator;

.field public mIsKtGps:Z

.field public mIsSKApplicationFramework:Z

.field public mKTSuplServerHost:Ljava/lang/String;

.field public mKTSuplServerPort:I

.field public mLidState:I

.field public final mPropertiesNsFlp:Ljava/util/Properties;

.field public final mPropertiesSecgps:Ljava/util/Properties;

.field public final mServerTypeI:I

.field public final mSimInformationHashMap:Ljava/util/HashMap;

.field public final mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public prevCpAgpsMask:I

.field public prevLocationElapsedRealtimeNs:J

.field public prevLppMask:I

.field public prevNrLppMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    .line 13
    const-wide v0, 0x300000000000L

    .line 18
    sput-wide v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->GNSS_DEVICE_ID:J

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    const/4 p3, 0x1

    .line 4
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    .line 6
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevCpAgpsMask:I

    .line 7
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 8
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    .line 9
    const-string v5, "QZSS"

    const-string v6, "BEIDOU"

    const-string v1, "Unknown"

    const-string v2, "GPS"

    const-string v3, "SBAS"

    const-string v4, "GLONASS"

    const-string v7, "GALILEO"

    const-string v8, "NAVIC"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConstellationString:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 11
    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isSehRefLocation:Z

    .line 12
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    const-wide/16 p2, 0x0

    .line 13
    iput-wide p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLocationElapsedRealtimeNs:J

    .line 14
    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    .line 15
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 16
    const-string/jumbo p2, "connectivity"

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    const-string/jumbo p2, "phone"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 9

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 22
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    const/4 p4, 0x1

    .line 23
    iput p4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    .line 25
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevCpAgpsMask:I

    .line 26
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 27
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    .line 28
    const-string v5, "QZSS"

    const-string v6, "BEIDOU"

    const-string v1, "Unknown"

    const-string v2, "GPS"

    const-string v3, "SBAS"

    const-string v4, "GLONASS"

    const-string v7, "GALILEO"

    const-string v8, "NAVIC"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConstellationString:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 30
    iput-boolean p4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isSehRefLocation:Z

    .line 31
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLocationElapsedRealtimeNs:J

    .line 33
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 35
    const-string v2, "GnssLocationProvider_ex"

    const-string v3, "Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v3, "init_GnssLocationProviderSec()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 38
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    .line 39
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 41
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 42
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v4

    const-string v5, ""

    const-string v6, "CarrierFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v4, v3, v6, v5, p2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 45
    :cond_0
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    :cond_1
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 47
    iput-object v3, v4, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 48
    invoke-virtual {v4}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v3

    iput-object v3, v4, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 49
    const-string/jumbo v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 51
    iput-object v3, v4, Lcom/android/server/location/gnss/sec/CarrierConfig;->mDeviceMode:Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_2

    .line 53
    new-instance v3, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 54
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Landroid/os/Looper;)V

    .line 55
    :cond_2
    const-string v3, "/data/system/gps/secgps.conf"

    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/util/Properties;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 57
    :cond_3
    const-string v5, "SERVER_TYPE"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 58
    const-string v5, "No params for SERVER_TYPE in AngryGPS."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Auto Config in AngryGPS : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    .line 61
    invoke-static {v5, v6, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 62
    :goto_0
    const-string v5, "EquipmentTestMode"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 63
    const-string v3, "EquipmentTestMode is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "EquipmentTestMode is set to "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    .line 66
    invoke-static {v2, v3, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 67
    :goto_1
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 68
    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;

    new-instance p4, Ljava/io/File;

    const-string v3, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {p4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p0, p4}, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/File;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    .line 70
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class p4, Landroid/hardware/input/InputManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManager;

    if-eqz p2, :cond_8

    .line 71
    invoke-virtual {p2}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p4

    iput p4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    if-le p4, v0, :cond_8

    .line 72
    const-string p4, "Foldable phone"

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p4, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;

    invoke-direct {p4, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    .line 74
    invoke-virtual {p2, p4, v4}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    goto :goto_2

    .line 75
    :cond_6
    const-string/jumbo v3, "checkFoldablePhone()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/input/InputManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    if-eqz v3, :cond_8

    .line 77
    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v3

    iput v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    if-le v3, v0, :cond_7

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "This is foldable device. mLidstate:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    .line 79
    invoke-static {p2, v0, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 80
    iput-boolean p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isFoldablePhone:Z

    goto :goto_2

    .line 81
    :cond_7
    const-string p4, "This is Not foldable device"

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isFoldablePhone:Z

    .line 83
    :cond_8
    :goto_2
    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCellInfoCb:Lcom/android/server/location/gnss/GnssLocationProviderSec$2;

    .line 84
    new-instance p2, Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/server/location/gnss/sec/SuplInitHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssLocationProviderSec;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 85
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    const-string p2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string/jumbo p2, "sms"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 88
    const-string/jumbo p2, "localhost"

    const-string p3, "7275"

    invoke-virtual {p1, p2, p3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    const-string p2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    :try_start_0
    const-string p2, "application/vnd.omaloc-supl-init"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 93
    :catch_0
    const-string p2, "Malformed SUPL init mime type"

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_3
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string/jumbo p2, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo p2, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const/16 p2, 0x3e8

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 103
    const-string/jumbo p3, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-virtual {p3, p4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 107
    const-string/jumbo p2, "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static createDirectories()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/system/gps"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string v0, "Directory /data/system/gps creation failed."

    .line 22
    const-string v1, "GnssLocationProvider_ex"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 15
    move-result v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, " file doesn\'t exist. create result = "

    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    const-string v1, "GnssLocationProvider_ex"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-object v0
.end method

.method public static getConfigValuesFromLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "?"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "\n"

    .line 9
    const-string v2, ""

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v3, p1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "?_"

    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-object v0, v2

    .line 63
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string p1, "_"

    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    :cond_1
    return-object v0
.end method

.method public static getIntCarrierFeature(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static getLppCapabilityString(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 4
    const-string p0, "[]"

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    and-int/lit8 v1, p0, 0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 17
    const-string v1, "AGNSS"

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    and-int/lit8 v1, p0, 0x2

    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v1, v2, :cond_2

    .line 27
    const-string v1, "OTDOA"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_2
    and-int/lit8 v1, p0, 0x4

    .line 34
    const/4 v2, 0x4

    .line 35
    if-ne v1, v2, :cond_3

    .line 37
    const-string v1, "ECID"

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_3
    and-int/lit8 v1, p0, 0x8

    .line 44
    const/16 v2, 0x8

    .line 46
    if-ne v1, v2, :cond_4

    .line 48
    const-string v1, "CONVENTIONAL_GPS"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_4
    and-int/lit8 v1, p0, 0x10

    .line 55
    const/16 v2, 0x10

    .line 57
    if-ne v1, v2, :cond_5

    .line 59
    const-string v1, "LPP_EXTENSION_CP"

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_5
    and-int/lit8 v1, p0, 0x20

    .line 66
    const/16 v2, 0x20

    .line 68
    if-ne v1, v2, :cond_6

    .line 70
    const-string v1, "INTER_FREQ_OTDOA"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_6
    const/16 v1, 0x40

    .line 77
    and-int/2addr p0, v1

    .line 78
    if-ne p0, v1, :cond_7

    .line 80
    const-string p0, "LPP_EXTENSION_UP"

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_8

    .line 91
    const-string p0, "NONE"

    .line 93
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method public static getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4

    .line 1
    const-string v0, "GnssLocationProvider_ex"

    .line 3
    new-instance v1, Ljava/util/Properties;

    .line 5
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 8
    new-instance v2, Ljava/io/File;

    .line 10
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 15
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v2

    .line 28
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception v3

    .line 33
    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 37
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    const-string v3, "Could not load configuration file "

    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo p0, "due to IllegalArgumentException"

    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    goto :goto_2

    .line 65
    :catch_2
    const-string v2, "Could not access configuration file "

    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_2

    .line 75
    :catch_3
    const-string v2, "Could not open configuration file "

    .line 77
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_2
    return-object v1
.end method

.method public static storeFile(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 1
    const-string v0, "Saved: "

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {p1, v1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 11
    const-string p1, "GnssLocationProvider_ex"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_2
    return-void
.end method

.method public static storePropertiesToFile(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->createDirectories()V

    .line 4
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 13
    move-result v3

    .line 14
    const-string v4, "GnssLocationProvider_ex"

    .line 16
    if-nez v3, :cond_0

    .line 18
    const-string/jumbo v3, "file.setReadable() failed."

    .line 21
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 30
    const-string/jumbo v1, "file.setWritable() failed."

    .line 33
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->storeFile(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_0
    return-void
.end method


# virtual methods
.method public final changeNlpAccuracyInForce(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 29
    move-result p0

    .line 30
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 32
    cmpg-float p0, p0, v0

    .line 34
    if-gez p0, :cond_0

    .line 36
    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 39
    :cond_0
    const-string p0, "GnssLocationProvider_ex"

    .line 41
    const-string/jumbo p1, "changeNlpAccuracyInForce."

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    return-void
.end method

.method public final dumpSec(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "============ GPS Carrier Feature State ============"

    .line 15
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    const-string/jumbo v1, "ro.multisim.simslotcount"

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    move v3, v2

    .line 38
    :goto_0
    const-string v4, "\n"

    .line 40
    if-ge v3, v1, :cond_1

    .line 42
    const-string v5, "\n Sim slot ID  :  "

    .line 44
    const-string v6, "\n AGPS Setting  :  "

    .line 46
    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v5

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 53
    move-result-object v6

    .line 54
    const-string v7, "CarrierFeature_GPS_ConfigAgpsSetting"

    .line 56
    const-string v8, ""

    .line 58
    invoke-virtual {v6, v3, v7, v8, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, "\n SUPL Address  :  "

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 73
    move-result-object v6

    .line 74
    const-string v7, "CarrierFeature_GPS_ConfigSuplHost"

    .line 76
    invoke-virtual {v6, v3, v7, v8, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v6, "\n SUPL version  :  "

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v6, "CarrierFeature_GPS_ConfigSuplVersion"

    .line 90
    invoke-static {v3, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 93
    move-result v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v6, "\n AGPS Mode  :  "

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v6, "CarrierFeature_GPS_ConfigAgpsMode"

    .line 104
    invoke-static {v3, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 107
    move-result v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v6, "\n AGNSS Protocol  :  "

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v6, "CarrierFeature_GPS_ConfigAgnssProtocol"

    .line 118
    invoke-static {v3, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 121
    move-result v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v6, "\n LPPeCP  :  "

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v6, "CarrierFeature_GPS_ConfigLppeCp"

    .line 132
    invoke-static {v3, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 135
    move-result v6

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string v6, "\n LPPeUP  :  "

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, "CarrierFeature_GPS_ConfigLppeUp"

    .line 146
    invoke-static {v3, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 149
    move-result v6

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v6, "\n ES Extension Sec  :  "

    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v6, "CarrierFeature_GPS_ConfigEsExtensionSec"

    .line 160
    invoke-static {v3, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 163
    move-result v6

    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v6, "\n Exception mask for Agnss  :  "

    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v6, "CarrierFeature_GPS_ConfigExceptionMaskForAGNSS"

    .line 174
    invoke-static {v3, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 177
    move-result v6

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v3, v3, 0x1

    .line 193
    goto/16 :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance p0, Ljava/io/File;

    .line 210
    const-string v0, "/data/system/gps/secgps.conf"

    .line 212
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "============ GPS SECGPS CONFIGURATION State ============"

    .line 217
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_2

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;

    .line 234
    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    const-string v2, "\n Time out  :  "

    .line 239
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v2, "TIMEOUT"

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v2, "\n AGPS Mode :  "

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v2, "AGPS_MODE"

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v2, "\n LPPe CP  :  "

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v2, "LPPE_CP_TECHNOLOGY"

    .line 272
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v2, "\n LPPe UP  :  "

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v2, "LPPE_UP_TECHNOLOGY"

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v2, "\n XTRA Enable  :  "

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v2, "ENABLE_XTRA"

    .line 300
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v2, "\n SSL Enable :  "

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, "SSL"

    .line 314
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v2, "\n Opeartion Mode  :  "

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, "OPERATION_MODE"

    .line 328
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v2, "\n Start Mode :  "

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, "START_MODE"

    .line 342
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, "\n Agnss Protocol  :  "

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v2, "AGNSS_PROTOCOL"

    .line 356
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v2, "\n SUPL Port :  "

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v2, "SUPL_PORT"

    .line 370
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v2, "\n SUPL Host  :  "

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v2, "SUPL_HOST"

    .line 384
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v2, "\n SUPL Version   :  "

    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v2, "SUPL_VERSION"

    .line 398
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v2, "\n LPP Profile :  "

    .line 407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v2, "LPP_PROFILE"

    .line 412
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, "\n Enable L5  :  "

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v2, "ENABLE_L5"

    .line 426
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v2, "\n Enable L5 TIS  :  "

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v2, "ENABLE_L5_TIS"

    .line 440
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v2, "\n Spirent  :  "

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v2, "SPIRENT"

    .line 454
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v2, "\n Week Number  :  "

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v2, "WEEK_NUMBER"

    .line 468
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object p0

    .line 492
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    goto :goto_1

    .line 496
    :cond_2
    const-string p0, " There is no secgps.conf file !!!!!"

    .line 498
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public final getPositionModeSec(I)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 9
    const-string v3, "GnssLocationProvider_ex"

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    const-string v1, "HIDL service may have been died. reset it."

    .line 21
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    .line 35
    move-result v1

    .line 36
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 48
    move/from16 v1, p1

    .line 50
    if-ne v1, v5, :cond_1

    .line 52
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    .line 54
    if-nez v0, :cond_1

    .line 56
    const-string v0, "Data status WIFI disconneted"

    .line 58
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move v1, v6

    .line 62
    :cond_1
    return v1

    .line 63
    :cond_2
    move/from16 v1, p1

    .line 65
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 67
    invoke-virtual {v7}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    .line 70
    move-result v7

    .line 71
    const/16 v8, 0xd

    .line 73
    if-eqz v7, :cond_f

    .line 75
    const-string/jumbo v1, "extChnSelectPositionMode() start"

    .line 78
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 83
    if-nez v1, :cond_3

    .line 85
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 88
    move-result-object v1

    .line 89
    iput-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 91
    :cond_3
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 93
    iget-object v1, v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 95
    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 97
    if-ne v1, v7, :cond_b

    .line 99
    if-ne v1, v7, :cond_5

    .line 101
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    move-result-object v1

    .line 107
    const-string v7, "agps_function_switch"

    .line 109
    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 112
    move-result v1

    .line 113
    const-string/jumbo v7, "getCmccPsdsEnabled, isAgpsSwitchMode : "

    .line 116
    invoke-static {v1, v7, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eq v1, v5, :cond_6

    .line 121
    const/4 v7, 0x2

    .line 122
    if-eq v1, v7, :cond_4

    .line 124
    const-string/jumbo v1, "getCmccPsdsEnabled, AGPS setting : AGPS OFF"

    .line 127
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    move v1, v5

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    const-string/jumbo v1, "getCmccPsdsEnabled, AGPS setting : All Network"

    .line 135
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    :goto_1
    move v1, v6

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 142
    if-eqz v1, :cond_8

    .line 144
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_7

    .line 150
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_7

    .line 156
    const-string/jumbo v1, "getCmccPsdsEnabled : AGPS setting : Home network, info.isRoaming() == true"

    .line 159
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto :goto_0

    .line 163
    :cond_7
    const-string/jumbo v1, "getCmccPsdsEnabled : AGPS setting : Home network, info.isRoaming() == false"

    .line 166
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    goto :goto_1

    .line 170
    :cond_8
    const-string/jumbo v1, "getCmccPsdsEnabled : AGPS setting : Home network, PS error"

    .line 173
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    goto :goto_0

    .line 177
    :goto_2
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 179
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 182
    move-result v7

    .line 183
    if-eq v7, v8, :cond_a

    .line 185
    if-eqz v1, :cond_9

    .line 187
    goto :goto_3

    .line 188
    :cond_9
    const-string/jumbo v1, "extChnSelectPositionMode() postionMode == MS_BASED"

    .line 191
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0, v5}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updatePsdsEnabled(I)V

    .line 197
    move v1, v5

    .line 198
    goto :goto_6

    .line 199
    :cond_a
    :goto_3
    const-string/jumbo v1, "extChnSelectPositionMode() postionMode == STANDALONE"

    .line 202
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updatePsdsEnabled(I)V

    .line 208
    goto :goto_5

    .line 209
    :cond_b
    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 211
    if-ne v1, v7, :cond_c

    .line 213
    goto :goto_4

    .line 214
    :cond_c
    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 216
    if-ne v1, v7, :cond_d

    .line 218
    goto :goto_4

    .line 219
    :cond_d
    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 221
    if-ne v1, v7, :cond_e

    .line 223
    :goto_4
    const-string/jumbo v1, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    .line 226
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_e
    :goto_5
    move v1, v6

    .line 230
    :goto_6
    const-string v7, "CHN startNavigating mPositionMode: "

    .line 232
    invoke-static {v1, v7, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_f
    sget-boolean v7, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    .line 237
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 239
    sget-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 241
    sget-object v11, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 243
    sget-object v12, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 245
    sget-object v13, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 247
    if-eqz v7, :cond_13

    .line 249
    const-string v7, "Data status WIFI connected"

    .line 251
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 256
    iget-object v7, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 258
    if-ne v7, v13, :cond_10

    .line 260
    goto :goto_7

    .line 261
    :cond_10
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    .line 264
    move-result v7

    .line 265
    if-eqz v7, :cond_12

    .line 267
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 269
    iget-object v7, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 271
    if-eq v7, v12, :cond_12

    .line 273
    if-eq v7, v11, :cond_12

    .line 275
    if-eq v7, v10, :cond_12

    .line 277
    if-ne v7, v9, :cond_11

    .line 279
    goto :goto_8

    .line 280
    :cond_11
    :goto_7
    const-string v7, "The vendor Not set to Standalone"

    .line 282
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    goto :goto_9

    .line 286
    :cond_12
    :goto_8
    move v0, v6

    .line 287
    goto/16 :goto_1a

    .line 289
    :cond_13
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 291
    invoke-virtual {v7}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    .line 294
    move-result v14

    .line 295
    if-eqz v14, :cond_12

    .line 297
    new-instance v14, Ljava/lang/StringBuilder;

    .line 299
    const-string v15, "Data network status "

    .line 301
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v7}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    .line 307
    move-result v7

    .line 308
    invoke-static {v3, v14, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 311
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 313
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 316
    move-result-object v7

    .line 317
    if-eqz v7, :cond_14

    .line 319
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 322
    move-result v14

    .line 323
    if-eqz v14, :cond_14

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    const-string v1, "Roaming status "

    .line 329
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 335
    move-result v1

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    goto :goto_8

    .line 347
    :cond_14
    :goto_9
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 349
    iget-object v14, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 351
    const-string v15, "VZW"

    .line 353
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    move-result v14

    .line 357
    if-nez v14, :cond_16

    .line 359
    const-string v14, "SPR"

    .line 361
    iget-object v15, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 363
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    move-result v14

    .line 367
    if-nez v14, :cond_16

    .line 369
    const-string v14, "USC"

    .line 371
    iget-object v15, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 373
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    move-result v14

    .line 377
    if-nez v14, :cond_16

    .line 379
    const-string v14, "BST"

    .line 381
    iget-object v15, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 383
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    move-result v14

    .line 387
    if-nez v14, :cond_16

    .line 389
    const-string v14, "VMU"

    .line 391
    iget-object v15, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 393
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    move-result v14

    .line 397
    if-nez v14, :cond_16

    .line 399
    const-string v14, "XAS"

    .line 401
    iget-object v15, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 403
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    move-result v14

    .line 407
    if-nez v14, :cond_16

    .line 409
    const-string v14, "LRA"

    .line 411
    iget-object v15, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 413
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    move-result v14

    .line 417
    if-nez v14, :cond_16

    .line 419
    const-string v14, "TFNVZW"

    .line 421
    iget-object v15, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 423
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result v14

    .line 427
    if-nez v14, :cond_16

    .line 429
    const-string v14, "ACG"

    .line 431
    iget-object v7, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 433
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    move-result v7

    .line 437
    if-eqz v7, :cond_15

    .line 439
    goto :goto_a

    .line 440
    :cond_15
    move v7, v6

    .line 441
    goto :goto_b

    .line 442
    :cond_16
    :goto_a
    move v7, v5

    .line 443
    :goto_b
    const-string/jumbo v14, "isUsaCdmaMarket : "

    .line 446
    const-string v15, "CarrierConfigForGnss"

    .line 448
    invoke-static {v14, v15, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 451
    if-eqz v7, :cond_18

    .line 453
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 455
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 458
    move-result v1

    .line 459
    if-ne v1, v8, :cond_17

    .line 461
    const-string v1, "LTE. mPositionMode is set to MSBASED"

    .line 463
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move v1, v5

    .line 467
    goto :goto_c

    .line 468
    :cond_17
    const-string/jumbo v1, "not LTE. mPositionMode is changed to STANDALONE"

    .line 471
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move v1, v6

    .line 475
    :cond_18
    :goto_c
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    .line 478
    move-result v4

    .line 479
    if-eqz v4, :cond_19

    .line 481
    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    .line 484
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move v1, v6

    .line 488
    :cond_19
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 490
    iget-object v4, v4, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 492
    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 494
    if-ne v4, v7, :cond_25

    .line 496
    const-string/jumbo v1, "extCTCSelectPositionMode()"

    .line 499
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 504
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 507
    move-result-object v1

    .line 508
    const-string/jumbo v4, "location_mode"

    .line 511
    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 514
    move-result v1

    .line 515
    const-string/jumbo v4, "locationModeState :"

    .line 518
    invoke-static {v1, v4, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 523
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 526
    move-result-object v1

    .line 527
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 529
    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 532
    move-result-object v4

    .line 533
    const-string/jumbo v7, "gsm.network.type"

    .line 536
    const-string v8, ""

    .line 538
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 541
    move-result-object v7

    .line 542
    const-string v14, ":"

    .line 544
    invoke-virtual {v7, v14, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 547
    move-result-object v7

    .line 548
    new-instance v14, Ljava/lang/StringBuilder;

    .line 550
    const-string v15, "Network Type : "

    .line 552
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    aget-object v15, v7, v6

    .line 557
    invoke-static {v14, v15, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v14, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 562
    const-string v15, "[getCurrentApn] get apn = "

    .line 564
    const-string/jumbo v6, "getGpsCurrentApn"

    .line 567
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 573
    move-result-object v6

    .line 574
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 577
    move-result v6

    .line 578
    if-le v6, v5, :cond_1b

    .line 580
    const-string v6, "This model uses multisim."

    .line 582
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string/jumbo v6, "gsm.sim.state"

    .line 588
    const-string v5, "0,0"

    .line 590
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    move-result-object v5

    .line 594
    const-string v6, ","

    .line 596
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 599
    move-result-object v5

    .line 600
    const/4 v6, 0x0

    .line 601
    aget-object v5, v5, v6

    .line 603
    new-instance v6, Ljava/lang/StringBuilder;

    .line 605
    move-object/from16 p1, v8

    .line 607
    const-string v8, "Slot1 Card Status : "

    .line 609
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    move-result-object v6

    .line 619
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v6, "ABSENT"

    .line 624
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result v5

    .line 628
    if-eqz v5, :cond_1c

    .line 630
    const-string v5, "Slot1 is empty. No need to check apn. return APN null."

    .line 632
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1a
    move-object/from16 v8, p1

    .line 637
    goto/16 :goto_10

    .line 639
    :cond_1b
    move-object/from16 p1, v8

    .line 641
    :cond_1c
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 644
    move-result-object v16

    .line 645
    const/4 v5, 0x0

    .line 646
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 649
    move-result-object v6

    .line 650
    if-eqz v6, :cond_1d

    .line 652
    array-length v8, v6

    .line 653
    if-lez v8, :cond_1d

    .line 655
    aget v6, v6, v5

    .line 657
    goto :goto_d

    .line 658
    :cond_1d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 661
    move-result v6

    .line 662
    const-string/jumbo v5, "subID is null or 0 length, so get DefaultSubId!!"

    .line 665
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 670
    const-string/jumbo v8, "getSubId from simSlot1, SubId = "

    .line 673
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    move-result-object v5

    .line 683
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v5, Ljava/lang/StringBuilder;

    .line 688
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    sget-object v8, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 693
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 696
    move-result-object v8

    .line 697
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    move-result-object v5

    .line 707
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 710
    move-result-object v17

    .line 711
    const-string v5, "apn"

    .line 713
    filled-new-array {v5}, [Ljava/lang/String;

    .line 716
    move-result-object v18

    .line 717
    const/16 v20, 0x0

    .line 719
    const/16 v21, 0x0

    .line 721
    const/16 v19, 0x0

    .line 723
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 726
    move-result-object v5

    .line 727
    if-eqz v5, :cond_1a

    .line 729
    new-instance v6, Ljava/lang/StringBuilder;

    .line 731
    const-string v8, "[getCurrentApn] cursor.count() = "

    .line 733
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 739
    move-result v8

    .line 740
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    move-result-object v6

    .line 747
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 753
    move-result v6

    .line 754
    if-eqz v6, :cond_1e

    .line 756
    const/4 v6, 0x0

    .line 757
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 760
    move-result-object v8

    .line 761
    if-eqz v8, :cond_1e

    .line 763
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 766
    move-result-object v8

    .line 767
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 770
    move-result-object v8

    .line 771
    goto :goto_e

    .line 772
    :catchall_0
    move-exception v0

    .line 773
    goto :goto_f

    .line 774
    :cond_1e
    move-object/from16 v8, p1

    .line 776
    :goto_e
    new-instance v6, Ljava/lang/StringBuilder;

    .line 778
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    move-result-object v6

    .line 788
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 794
    goto :goto_10

    .line 795
    :goto_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 798
    throw v0

    .line 799
    :goto_10
    const-string v5, "LTE"

    .line 801
    const/4 v6, 0x0

    .line 802
    aget-object v7, v7, v6

    .line 804
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    move-result v5

    .line 808
    if-nez v5, :cond_20

    .line 810
    const-string v5, "CTWAP"

    .line 812
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    move-result v5

    .line 816
    if-nez v5, :cond_20

    .line 818
    const-string v5, "CTLTE"

    .line 820
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    move-result v5

    .line 824
    if-nez v5, :cond_20

    .line 826
    const-string v5, "CTNET"

    .line 828
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 831
    move-result v5

    .line 832
    if-eqz v5, :cond_1f

    .line 834
    goto :goto_11

    .line 835
    :cond_1f
    const/4 v5, 0x0

    .line 836
    goto :goto_12

    .line 837
    :cond_20
    :goto_11
    const/4 v5, 0x1

    .line 838
    :goto_12
    if-eqz v1, :cond_21

    .line 840
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 843
    move-result v1

    .line 844
    if-eqz v1, :cond_21

    .line 846
    const-string v1, "Roaming, Start Standalone GPS"

    .line 848
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :goto_13
    const/4 v1, 0x0

    .line 852
    goto :goto_14

    .line 853
    :cond_21
    if-eqz v4, :cond_22

    .line 855
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    .line 858
    move-result v1

    .line 859
    const/4 v6, 0x1

    .line 860
    if-ne v1, v6, :cond_22

    .line 862
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 865
    move-result v1

    .line 866
    if-eqz v1, :cond_22

    .line 868
    const-string v1, "This is WIFI, Start Standalone GPS"

    .line 870
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    goto :goto_13

    .line 874
    :cond_22
    if-eqz v5, :cond_24

    .line 876
    iget-object v1, v2, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 878
    invoke-virtual {v1}, Landroid/location/GnssCapabilities;->hasMsb()Z

    .line 881
    move-result v1

    .line 882
    if-eqz v1, :cond_23

    .line 884
    const-string v1, "Start Tracking Mode : MS-Based"

    .line 886
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v1, 0x1

    .line 890
    goto :goto_14

    .line 891
    :cond_23
    const-string v1, "No MS-A, Ms-B capabilities"

    .line 893
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    goto :goto_13

    .line 897
    :cond_24
    const-string v1, "It\'s not CTC AGPS APN : "

    .line 899
    invoke-static {v1, v8, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    goto :goto_13

    .line 903
    :goto_14
    const-string v2, "CHN_CTC startNavigating mPositionMode: "

    .line 905
    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_25
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 910
    iget-object v2, v2, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 912
    if-ne v2, v13, :cond_2a

    .line 914
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 916
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 919
    move-result-object v2

    .line 920
    const-string/jumbo v4, "gps_noti_sound_enabled"

    .line 923
    const/4 v5, -0x2

    .line 924
    const/4 v6, 0x0

    .line 925
    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 928
    move-result v2

    .line 929
    if-eqz v2, :cond_26

    .line 931
    const/4 v2, 0x1

    .line 932
    goto :goto_15

    .line 933
    :cond_26
    const/4 v2, 0x0

    .line 934
    :goto_15
    const-string v4, "GPS noti sound enabled : "

    .line 936
    invoke-static {v4, v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 939
    if-eqz v2, :cond_2a

    .line 941
    const-string/jumbo v2, "generateBeep Method call"

    .line 944
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 949
    const-string v4, "audio"

    .line 951
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 954
    move-result-object v2

    .line 955
    check-cast v2, Landroid/media/AudioManager;

    .line 957
    const/4 v4, 0x1

    .line 958
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 961
    move-result v2

    .line 962
    const-string/jumbo v4, "generateBeep: Volume Level:"

    .line 965
    invoke-static {v2, v4, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 968
    const/16 v4, 0x64

    .line 970
    if-ltz v2, :cond_28

    .line 972
    const/4 v5, 0x7

    .line 973
    if-gt v2, v5, :cond_28

    .line 975
    if-ne v2, v5, :cond_27

    .line 977
    goto :goto_16

    .line 978
    :cond_27
    mul-int/lit8 v4, v2, 0xe

    .line 980
    :goto_16
    const-string/jumbo v2, "generateBeep: valid Volume:"

    .line 983
    invoke-static {v4, v2, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 986
    goto :goto_17

    .line 987
    :cond_28
    const-string v2, "Error getting current volume: Setting volume as max volume"

    .line 989
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_17
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 994
    if-eqz v2, :cond_29

    .line 996
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 999
    const/4 v2, 0x0

    .line 1000
    iput-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1002
    :cond_29
    new-instance v2, Landroid/media/ToneGenerator;

    .line 1004
    const/4 v5, 0x1

    .line 1005
    invoke-direct {v2, v5, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1008
    iput-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1010
    const/16 v4, 0x1c

    .line 1012
    const/16 v5, 0x1f4

    .line 1014
    invoke-virtual {v2, v4, v5}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1017
    :cond_2a
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 1019
    const-string v4, "JCO"

    .line 1021
    iget-object v2, v2, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 1023
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    move-result v2

    .line 1027
    if-nez v2, :cond_2c

    .line 1029
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 1031
    const-string v4, "UQM"

    .line 1033
    iget-object v2, v2, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 1035
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1038
    move-result v2

    .line 1039
    if-eqz v2, :cond_2b

    .line 1041
    goto :goto_18

    .line 1042
    :cond_2b
    move v6, v1

    .line 1043
    goto :goto_19

    .line 1044
    :cond_2c
    :goto_18
    const-string v1, "KDDI MVNO JCOM/UQM setPositionmode on StartNavigating0"

    .line 1046
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v6, 0x0

    .line 1050
    :goto_19
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1052
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 1055
    move-result-object v1

    .line 1056
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1059
    move-result v1

    .line 1060
    if-nez v1, :cond_2e

    .line 1062
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    .line 1065
    move-result v1

    .line 1066
    if-eqz v1, :cond_2d

    .line 1068
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    .line 1071
    move-result v1

    .line 1072
    if-eqz v1, :cond_2e

    .line 1074
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 1076
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1078
    if-eq v0, v12, :cond_2d

    .line 1080
    if-eq v0, v11, :cond_2d

    .line 1082
    if-eq v0, v10, :cond_2d

    .line 1084
    if-ne v0, v9, :cond_2e

    .line 1086
    :cond_2d
    const-string v0, "SIM card absent. force set position_mode to standalone"

    .line 1088
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v6, 0x0

    .line 1092
    :cond_2e
    return v6

    .line 1093
    :goto_1a
    return v0
.end method

.method public final gnssConfigurationUpdateSec(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v1, "gnssConfigurationUpdateSec"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public final handleEnableSec()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    .line 4
    return-void
.end method

.method public final handleReportSvStatusSec(Landroid/location/GnssStatus;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 13
    move-result v5

    .line 14
    if-ge v2, v5, :cond_6

    .line 16
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    cmpg-float v5, v5, v6

    .line 23
    if-gtz v5, :cond_0

    .line 25
    goto/16 :goto_4

    .line 27
    :cond_0
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getConstellationType(I)I

    .line 30
    move-result v5

    .line 31
    const-string v6, "("

    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getSvid(I)I

    .line 39
    move-result v6

    .line 40
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v6, ", "

    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConstellationString:[Ljava/lang/String;

    .line 50
    array-length v8, v7

    .line 51
    if-ge v5, v8, :cond_2

    .line 53
    if-gez v5, :cond_1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    aget-object v5, v7, v5

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_1
    aget-object v5, v7, v1

    .line 61
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    .line 70
    move-result v5

    .line 71
    invoke-static {v5}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 77
    const-string v5, "L5"

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    const-string v5, "L1"

    .line 82
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 91
    move-result v5

    .line 92
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    move-result-object v5

    .line 96
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 99
    move-result-object v5

    .line 100
    const-string v7, "%.1f"

    .line 102
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 115
    move-result v5

    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v5, ") "

    .line 121
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    rem-int/lit8 v5, v4, 0x6

    .line 126
    const/4 v6, 0x5

    .line 127
    if-ne v5, v6, :cond_4

    .line 129
    const-string v5, "\n"

    .line 131
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 136
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_5

    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 144
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto/16 :goto_0

    .line 148
    :cond_6
    const-string p0, "SV Count : "

    .line 150
    const-string p1, " / "

    .line 152
    const-string v1, "      (PRN, Constellation, Type, SNR, Used)"

    .line 154
    invoke-static {v3, v4, p0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 158
    const-string p1, "GnssLocationProvider_ex"

    .line 160
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v4, :cond_7

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    return-void
.end method

.method public final isDeviceBasedHybridSupported()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 3
    const-string v1, "CarrierFeature_GPS_ConfigLppeCp"

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-lez v0, :cond_0

    .line 12
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 14
    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    and-int/2addr v0, v2

    .line 19
    if-lez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 24
    const-string v1, "CarrierFeature_GPS_ConfigLppeUp"

    .line 26
    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 32
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 34
    invoke-static {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 37
    move-result p0

    .line 38
    and-int/2addr p0, v2

    .line 39
    if-lez p0, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_0
    return v2
.end method

.method public final isEquipmentTestModeEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    .line 3
    return p0
.end method

.method public final isExtraCommandAllowed(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 3
    const-string v1, "ALLOW_EXTRA_COMMAND"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string v2, "1"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    return v1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 34
    return v0

    .line 35
    :cond_1
    array-length v2, p1

    .line 36
    move v3, v0

    .line 37
    :goto_0
    if-ge v3, v2, :cond_4

    .line 39
    aget-object v4, p1, v3

    .line 41
    sget-object v5, Lcom/android/server/location/gnss/sec/GnssConstants;->EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

    .line 43
    move v6, v0

    .line 44
    :goto_1
    const/16 v7, 0x12

    .line 46
    if-ge v6, v7, :cond_3

    .line 48
    aget-object v7, v5, v6

    .line 50
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_2

    .line 56
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 58
    return v1

    .line 59
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    return v0
.end method

.method public final isKOREmergency(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 16
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isDeviceBasedHybridSupported()Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public final onExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->onExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 4
    const-string/jumbo p1, "set_csc_parameters"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const-string p4, "0"

    .line 13
    const-string v0, "1"

    .line 15
    const-string v1, ""

    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "GnssLocationProvider_ex"

    .line 20
    if-eqz p1, :cond_4

    .line 22
    const-string p1, " isDeleted :"

    .line 24
    const-string/jumbo p2, "setCscParameters"

    .line 27
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-nez p3, :cond_0

    .line 32
    goto/16 :goto_a

    .line 34
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 36
    const-string v4, "/data/system/gps/cscgps.conf"

    .line 38
    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 55
    move-result p1

    .line 56
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    const-string p1, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    .line 69
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    :goto_0
    const-string/jumbo p1, "is_empty"

    .line 75
    const-string p2, "TRUE"

    .line 77
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 87
    const-string/jumbo p1, "extras data is empty. do not update SUPL config."

    .line 90
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto/16 :goto_1

    .line 95
    :cond_2
    new-instance p1, Ljava/util/Properties;

    .line 97
    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 100
    const-string/jumbo p2, "operation_mode"

    .line 103
    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    const-string v1, "MSBASED"

    .line 109
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_3

    .line 115
    const-string/jumbo p4, "hslp_addr"

    .line 118
    const-string/jumbo v1, "supl.google.com"

    .line 121
    invoke-virtual {p3, p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object p4

    .line 125
    const-string/jumbo v1, "hslp_port"

    .line 128
    const/16 v5, 0x1c6b

    .line 130
    invoke-virtual {p3, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 133
    move-result v1

    .line 134
    const-string/jumbo v5, "ssl"

    .line 137
    invoke-virtual {p3, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 140
    move-result v2

    .line 141
    const-string/jumbo v5, "ssl_cert"

    .line 144
    const/16 v6, 0xf

    .line 146
    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 149
    move-result v5

    .line 150
    const-string/jumbo v6, "supl_ver"

    .line 153
    const/4 v7, 0x2

    .line 154
    invoke-virtual {p3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 157
    move-result p3

    .line 158
    const-string v6, "[SUPL CSC] suplAddress "

    .line 160
    const-string v7, " suplVersion "

    .line 162
    const-string v8, " suplPort "

    .line 164
    invoke-static {p3, v6, p4, v7, v8}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v7, " suplSslMode "

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 183
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "CSC_SUPL_OPMODE"

    .line 188
    invoke-virtual {p1, v3, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string p2, "CSC_SUPL_HOST"

    .line 193
    invoke-virtual {p1, p2, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string p2, "CSC_SUPL_VER"

    .line 198
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 201
    move-result-object p3

    .line 202
    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    const-string p2, "CSC_SUPL_PORT"

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 210
    move-result-object p3

    .line 211
    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    const-string p2, "CSC_SUPL_SSL"

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 219
    move-result-object p3

    .line 220
    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    const-string p2, "CSC_SUPL_CERT"

    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 228
    move-result-object p3

    .line 229
    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    move-object p4, v0

    .line 233
    :cond_3
    const-string p2, "CSC_SUPL_SUPLSERVERFROMCSC"

    .line 235
    invoke-virtual {p1, p2, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    const-string p2, "Saved CSC GPS Information"

    .line 240
    invoke-static {v4, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->storePropertiesToFile(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V

    .line 243
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    .line 246
    goto/16 :goto_a

    .line 248
    :cond_4
    const-string/jumbo p1, "com.skt.intent.action.AGPS"

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    move-result p1

    .line 255
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 257
    const/4 v5, 0x0

    .line 258
    if-eqz p1, :cond_8

    .line 260
    const-string/jumbo p1, "opType"

    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    move-result-object p1

    .line 267
    const-string/jumbo p2, "cmdType"

    .line 270
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    move-result-object p2

    .line 274
    const-string/jumbo p3, "on"

    .line 277
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result p3

    .line 281
    if-eqz p3, :cond_6

    .line 283
    const-string/jumbo p2, "msAssisted"

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result p2

    .line 290
    if-nez p2, :cond_5

    .line 292
    const-string/jumbo p2, "msBased"

    .line 295
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_7

    .line 301
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSKApplicationFrameworkEnabled(Z)V

    .line 304
    goto :goto_2

    .line 305
    :cond_6
    const-string/jumbo p1, "off"

    .line 308
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_7

    .line 314
    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSKApplicationFrameworkEnabled(Z)V

    .line 317
    const-string/jumbo p1, "sys.sktgps"

    .line 320
    invoke-static {p1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_31

    .line 332
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    .line 335
    goto/16 :goto_a

    .line 337
    :cond_8
    const-string/jumbo p1, "setOllehServer"

    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_a

    .line 346
    const-string/jumbo p1, "host"

    .line 349
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    move-result-object p1

    .line 353
    const-string/jumbo p2, "port"

    .line 356
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 359
    move-result p2

    .line 360
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKTSuplServerEnabled(Z)V

    .line 363
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerHost:Ljava/lang/String;

    .line 365
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerPort:I

    .line 367
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 373
    move-result p1

    .line 374
    if-eqz p1, :cond_9

    .line 376
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    .line 379
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 381
    const-string/jumbo p2, "host :"

    .line 384
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerHost:Ljava/lang/String;

    .line 389
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string p2, " port ="

    .line 394
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerPort:I

    .line 399
    invoke-static {p1, p0, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 402
    goto/16 :goto_a

    .line 404
    :cond_a
    const-string/jumbo p1, "setNativeServer"

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    move-result v6

    .line 411
    if-eqz v6, :cond_b

    .line 413
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKTSuplServerEnabled(Z)V

    .line 419
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 425
    move-result p1

    .line 426
    if-eqz p1, :cond_31

    .line 428
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    .line 431
    goto/16 :goto_a

    .line 433
    :cond_b
    const-string p1, "activateGPS"

    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    move-result p1

    .line 439
    if-eqz p1, :cond_c

    .line 441
    const-string p0, "activateGPS is not supported"

    .line 443
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    goto/16 :goto_a

    .line 448
    :cond_c
    const-string/jumbo p1, "deactivateGPS"

    .line 451
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    move-result p1

    .line 455
    if-eqz p1, :cond_d

    .line 457
    const-string/jumbo p0, "deactivateGPS is not supported"

    .line 460
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    goto/16 :goto_a

    .line 465
    :cond_d
    const-string p1, "activateNLP"

    .line 467
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    move-result p1

    .line 471
    if-eqz p1, :cond_e

    .line 473
    const-string p0, "activateNLP is not supported"

    .line 475
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    goto/16 :goto_a

    .line 480
    :cond_e
    const-string/jumbo p1, "deactivateNLP"

    .line 483
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    move-result p1

    .line 487
    if-eqz p1, :cond_f

    .line 489
    const-string/jumbo p0, "deactivateNLP is not supported"

    .line 492
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    goto/16 :goto_a

    .line 497
    :cond_f
    const-string p1, "activateAGPS"

    .line 499
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    move-result v6

    .line 503
    const-string v7, "assisted_gps_enabled"

    .line 505
    if-eqz v6, :cond_10

    .line 507
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 515
    move-result-object p0

    .line 516
    invoke-static {p0, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    goto/16 :goto_a

    .line 521
    :cond_10
    const-string/jumbo p1, "deactivateAGPS"

    .line 524
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result v6

    .line 528
    if-eqz v6, :cond_11

    .line 530
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 538
    move-result-object p0

    .line 539
    invoke-static {p0, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    goto/16 :goto_a

    .line 544
    :cond_11
    const-string/jumbo p1, "setMode"

    .line 547
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    move-result p1

    .line 551
    const-string/jumbo v6, "mode"

    .line 554
    if-eqz p1, :cond_12

    .line 556
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 559
    move-result p1

    .line 560
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    .line 564
    const-string/jumbo p2, "setMode ktPositionMode :"

    .line 567
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    .line 572
    invoke-static {p1, p0, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 575
    goto/16 :goto_a

    .line 577
    :cond_12
    const-string/jumbo p1, "getMode"

    .line 580
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    move-result p1

    .line 584
    if-eqz p1, :cond_13

    .line 586
    new-instance p1, Ljava/lang/StringBuilder;

    .line 588
    const-string/jumbo p2, "getMode ktPositionMode :"

    .line 591
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    .line 596
    invoke-static {p1, p2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 599
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    .line 601
    invoke-virtual {p3, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    goto/16 :goto_a

    .line 606
    :cond_13
    const-string/jumbo p1, "set_use_udp"

    .line 609
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    move-result p1

    .line 613
    if-eqz p1, :cond_16

    .line 615
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 617
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo p2, "set_use_udp : "

    .line 625
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    const-string/jumbo p2, "use_udp"

    .line 631
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 634
    move-result p4

    .line 635
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    move-result-object p1

    .line 642
    const-string p4, "SuplInitHandler"

    .line 644
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 650
    move-result p1

    .line 651
    if-ne p1, v2, :cond_15

    .line 653
    iget-boolean p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 655
    if-nez p1, :cond_31

    .line 657
    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 659
    iget-boolean p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    .line 661
    if-nez p1, :cond_14

    .line 663
    const-string/jumbo p1, "start UDP socket"

    .line 666
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance p1, Ljava/lang/Thread;

    .line 671
    new-instance p2, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;

    .line 673
    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    .line 676
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 679
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 682
    goto/16 :goto_a

    .line 684
    :cond_14
    const-string p0, "UDP port is already opened."

    .line 686
    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    goto/16 :goto_a

    .line 691
    :cond_15
    iput-boolean v5, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 693
    goto/16 :goto_a

    .line 695
    :cond_16
    const-string/jumbo p1, "set_dcm_iot"

    .line 698
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    move-result p1

    .line 702
    if-eqz p1, :cond_18

    .line 704
    new-instance p1, Ljava/lang/StringBuilder;

    .line 706
    const-string/jumbo p2, "set_dcm_iot : "

    .line 709
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    const-string/jumbo p2, "dcm_iot"

    .line 715
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 718
    move-result p4

    .line 719
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    move-result-object p1

    .line 726
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 732
    move-result p1

    .line 733
    if-eqz p1, :cond_17

    .line 735
    const-string p1, "Docomo SUPL IOT test = true server = dcm-supl.com"

    .line 737
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v8, 0x1

    .line 741
    const/16 v9, 0xf

    .line 743
    const/16 v5, 0x9

    .line 745
    const-string/jumbo v10, "dcm-supl.com"

    .line 748
    const/16 v6, 0x1c6b

    .line 750
    const/4 v7, 0x1

    .line 751
    move-object v4, p0

    .line 752
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 755
    goto/16 :goto_a

    .line 757
    :cond_17
    const-string p0, "Docomo SUPL IOT test = false"

    .line 759
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    goto/16 :goto_a

    .line 764
    :cond_18
    const-string/jumbo p1, "set_lpp_support"

    .line 767
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    move-result p1

    .line 771
    if-eqz p1, :cond_19

    .line 773
    const-string/jumbo p1, "set_lpp"

    .line 776
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 779
    move-result p1

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppSupport(I)V

    .line 783
    goto/16 :goto_a

    .line 785
    :cond_19
    const-string/jumbo p1, "setSecGpsConf"

    .line 788
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    move-result v6

    .line 792
    const-string v7, "/data/system/gps/secgps.conf"

    .line 794
    const-string v8, "USE_SECGPS_CONF"

    .line 796
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 798
    if-eqz v6, :cond_1e

    .line 800
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-nez p3, :cond_1a

    .line 805
    goto/16 :goto_a

    .line 807
    :cond_1a
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 809
    invoke-virtual {p1, v8, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 812
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 815
    move-result-object p1

    .line 816
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 819
    move-result p2

    .line 820
    new-array p4, p2, [Ljava/lang/String;

    .line 822
    invoke-interface {p1, p4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 825
    :goto_3
    if-ge v5, p2, :cond_1c

    .line 827
    aget-object p1, p4, v5

    .line 829
    if-eqz p1, :cond_1b

    .line 831
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 833
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 836
    move-result-object v1

    .line 837
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 840
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    .line 842
    goto :goto_3

    .line 843
    :cond_1c
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 845
    const-string p2, "SECGPS Configuration"

    .line 847
    invoke-static {v7, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->storePropertiesToFile(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V

    .line 850
    new-instance p1, Ljava/io/StringWriter;

    .line 852
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 855
    :try_start_1
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 857
    invoke-virtual {p3, p1, p2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 860
    goto :goto_4

    .line 861
    :catch_1
    const-string/jumbo p2, "could not store to writer"

    .line 864
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 873
    move-result p2

    .line 874
    if-nez p2, :cond_1d

    .line 876
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 879
    move-result-object p0

    .line 880
    invoke-virtual {v9, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 883
    goto/16 :goto_a

    .line 885
    :cond_1d
    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;

    .line 887
    const/4 p3, 0x1

    .line 888
    invoke-direct {p2, p3, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 891
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 894
    goto/16 :goto_a

    .line 896
    :cond_1e
    const-string/jumbo p1, "deleteSecGpsConf"

    .line 899
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 902
    move-result v6

    .line 903
    if-eqz v6, :cond_21

    .line 905
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 910
    invoke-virtual {p1, v8, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 913
    new-instance p1, Ljava/io/File;

    .line 915
    invoke-direct {p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 918
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 921
    move-result p2

    .line 922
    if-eqz p2, :cond_1f

    .line 924
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 927
    move-result p1

    .line 928
    if-eqz p1, :cond_1f

    .line 930
    const-string/jumbo p1, "secgps.conf deleted."

    .line 933
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 936
    goto :goto_5

    .line 937
    :catch_2
    const-string p1, " could not access secgps.conf file : /data/system/gps/secgps.conf"

    .line 939
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_1f
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 948
    move-result p1

    .line 949
    if-nez p1, :cond_20

    .line 951
    const-string p0, "USE_SECGPS_CONF=0"

    .line 953
    invoke-virtual {v9, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 956
    goto/16 :goto_a

    .line 958
    :cond_20
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;

    .line 960
    const/4 p2, 0x1

    .line 961
    invoke-direct {p1, p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    .line 964
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 967
    goto/16 :goto_a

    .line 969
    :cond_21
    const-string/jumbo p1, "gnss_configuration"

    .line 972
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    move-result p1

    .line 976
    const-string/jumbo p4, "config_string"

    .line 979
    if-eqz p1, :cond_22

    .line 981
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 983
    invoke-virtual {p0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 986
    move-result-object p0

    .line 987
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 993
    move-result p1

    .line 994
    if-nez p1, :cond_31

    .line 996
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 999
    move-result p0

    .line 1000
    if-eqz p0, :cond_31

    .line 1002
    invoke-virtual {p3, p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    move-result-object p0

    .line 1006
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    move-result p1

    .line 1010
    if-nez p1, :cond_31

    .line 1012
    invoke-virtual {v9, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 1015
    goto/16 :goto_a

    .line 1017
    :cond_22
    const-string/jumbo p1, "update_last_location"

    .line 1020
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    move-result p1

    .line 1024
    if-eqz p1, :cond_24

    .line 1026
    const-string/jumbo p1, "last_location"

    .line 1029
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1032
    move-result-object p1

    .line 1033
    check-cast p1, Landroid/location/Location;

    .line 1035
    if-nez p1, :cond_23

    .line 1037
    const-string p0, "Invalid last location info"

    .line 1039
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-void

    .line 1043
    :cond_23
    const-string p2, "Update last location directly to LMS !!!!!!!!!!!!, "

    .line 1045
    invoke-static {v3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :try_start_3
    new-array p2, v2, [Landroid/location/Location;

    .line 1050
    aput-object p1, p2, v5

    .line 1052
    invoke-static {p2}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    .line 1055
    move-result-object p1

    .line 1056
    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    .line 1059
    move-result-object p1

    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_3
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1063
    goto/16 :goto_a

    .line 1065
    :catch_3
    move-exception p0

    .line 1066
    invoke-virtual {p0}, Landroid/location/LocationResult$BadLocationException;->printStackTrace()V

    .line 1069
    goto/16 :goto_a

    .line 1071
    :cond_24
    const-string/jumbo p1, "gnss_configuration_from_nsflp"

    .line 1074
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1077
    move-result p1

    .line 1078
    if-eqz p1, :cond_28

    .line 1080
    invoke-virtual {p3, p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1083
    move-result-object p1

    .line 1084
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1087
    move-result p2

    .line 1088
    if-eqz p2, :cond_25

    .line 1090
    return-void

    .line 1091
    :cond_25
    invoke-virtual {v9, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 1094
    new-instance p2, Ljava/util/Scanner;

    .line 1096
    invoke-direct {p2, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 1099
    :cond_26
    :goto_6
    :try_start_4
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNextLine()Z

    .line 1102
    move-result p1

    .line 1103
    if-eqz p1, :cond_27

    .line 1105
    invoke-virtual {p2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 1108
    move-result-object p1

    .line 1109
    if-eqz p1, :cond_26

    .line 1111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 1114
    move-result p3

    .line 1115
    if-lez p3, :cond_26

    .line 1117
    const-string p3, "="

    .line 1119
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1122
    move-result-object p1

    .line 1123
    array-length p3, p1

    .line 1124
    if-le p3, v2, :cond_26

    .line 1126
    aget-object p3, p1, v5

    .line 1128
    if-eqz p3, :cond_26

    .line 1130
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 1133
    move-result p3

    .line 1134
    if-lez p3, :cond_26

    .line 1136
    aget-object p3, p1, v2

    .line 1138
    if-eqz p3, :cond_26

    .line 1140
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 1143
    move-result p3

    .line 1144
    if-lez p3, :cond_26

    .line 1146
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    .line 1148
    if-eqz p3, :cond_26

    .line 1150
    aget-object p4, p1, v5

    .line 1152
    aget-object p1, p1, v2

    .line 1154
    invoke-virtual {p3, p4, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1157
    goto :goto_6

    .line 1158
    :catchall_0
    move-exception p0

    .line 1159
    goto :goto_7

    .line 1160
    :cond_27
    invoke-virtual {p2}, Ljava/util/Scanner;->close()V

    .line 1163
    goto/16 :goto_a

    .line 1165
    :goto_7
    :try_start_5
    invoke-virtual {p2}, Ljava/util/Scanner;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1168
    goto :goto_8

    .line 1169
    :catchall_1
    move-exception p1

    .line 1170
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1173
    :goto_8
    throw p0

    .line 1174
    :cond_28
    const-string/jumbo p1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    .line 1177
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    move-result p1

    .line 1181
    if-eqz p1, :cond_2b

    .line 1183
    if-nez p3, :cond_29

    .line 1185
    return-void

    .line 1186
    :cond_29
    const-string p0, "ONOFF"

    .line 1188
    invoke-virtual {p3, p0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1191
    move-result p0

    .line 1192
    const-string/jumbo p1, "extraCommand - com.sec.android.ISSUE_TRACKER_ONOFF, enabled = "

    .line 1195
    invoke-static {p1, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    const-string/jumbo p1, "dev.gnss.silentloggingIssueTracker"

    .line 1201
    if-eqz p0, :cond_2a

    .line 1203
    const-string p0, "ON"

    .line 1205
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    goto/16 :goto_a

    .line 1210
    :cond_2a
    const-string p0, "OFF"

    .line 1212
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    goto/16 :goto_a

    .line 1217
    :cond_2b
    const-string/jumbo p1, "set_emergency_state"

    .line 1220
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1223
    move-result p1

    .line 1224
    if-eqz p1, :cond_2c

    .line 1226
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1229
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 1232
    move-result p1

    .line 1233
    if-nez p1, :cond_2c

    .line 1235
    invoke-virtual {p3, p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1238
    move-result-object p0

    .line 1239
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1242
    move-result p1

    .line 1243
    if-nez p1, :cond_31

    .line 1245
    invoke-virtual {v9, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 1248
    goto/16 :goto_a

    .line 1250
    :cond_2c
    const-string/jumbo p1, "isEquipmentTestMode"

    .line 1253
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    move-result p4

    .line 1257
    if-eqz p4, :cond_2e

    .line 1259
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 1265
    move-result p4

    .line 1266
    if-nez p4, :cond_2e

    .line 1268
    if-eqz p3, :cond_31

    .line 1270
    invoke-virtual {p3, p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1273
    move-result p1

    .line 1274
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    .line 1276
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1278
    const-string/jumbo p2, "isEquipmentTestMode : "

    .line 1281
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1284
    iget-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    .line 1286
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1292
    move-result-object p1

    .line 1293
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mEquipmentTestModeEnabled:Z

    .line 1298
    if-eqz p0, :cond_2d

    .line 1300
    const-string p0, "Platform NTP aiding/SGEE off"

    .line 1302
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const-string p0, "AIDING_USE_NTP=0\n"

    .line 1307
    invoke-virtual {v9, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 1310
    goto :goto_a

    .line 1311
    :cond_2d
    const-string p0, "EquipmentTestMode off"

    .line 1313
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const-string p0, "AIDING_USE_NTP=1\n"

    .line 1318
    invoke-virtual {v9, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 1321
    goto :goto_a

    .line 1322
    :cond_2e
    const-string/jumbo p1, "set_ce_state"

    .line 1325
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1328
    move-result p1

    .line 1329
    if-eqz p1, :cond_30

    .line 1331
    if-eqz p3, :cond_31

    .line 1333
    const-string/jumbo p1, "ceState"

    .line 1336
    const/4 p2, 0x3

    .line 1337
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1340
    move-result p3

    .line 1341
    const-string/jumbo p4, "com.samsung.android.ce.sdk.api.action.CONTEXT_ENGINE_STATE_CHANGED"

    .line 1344
    const-string/jumbo v0, "com.samsung.android.mcfds"

    .line 1347
    invoke-static {p4, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    move-result-object p4

    .line 1351
    const-string/jumbo v0, "sending CE_STATE = "

    .line 1354
    invoke-static {p3, v0, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v0, "previousCeState"

    .line 1360
    if-ne p3, p2, :cond_2f

    .line 1362
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    invoke-virtual {p4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1368
    goto :goto_9

    .line 1369
    :cond_2f
    invoke-virtual {p4, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1372
    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1375
    :goto_9
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1377
    const-string/jumbo p1, "com.samsung.android.ce.permission.START_SERVICE_CE"

    .line 1380
    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1383
    goto :goto_a

    .line 1384
    :cond_30
    const-string/jumbo p0, "onExtraCommand: unknown command "

    .line 1387
    invoke-static {p0, p2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    :cond_31
    :goto_a
    return-void
.end method

.method public final onRequestRefLocation()V
    .locals 2

    .line 1
    const-string v0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v1, "onRequestRefLocation"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isSehRefLocation:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->requestRefLocationSec()V

    .line 15
    return-void
.end method

.method public final onRequestSetID(I)V
    .locals 5

    .line 1
    const-string v0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v1, "onRequestSetId"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 11
    const-string/jumbo v1, "phone"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 20
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    iget-boolean v1, v1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    .line 26
    if-eqz v1, :cond_0

    .line 28
    sget v1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 34
    move-result v1

    .line 35
    :goto_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 44
    move-result-object v0

    .line 45
    :cond_1
    and-int/lit8 v1, p1, 0x1

    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    if-ne v1, v2, :cond_3

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v2, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 v2, 0x2

    .line 62
    and-int/2addr p1, v2

    .line 63
    if-ne p1, v2, :cond_4

    .line 65
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_2

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move v2, v3

    .line 73
    move-object p1, v4

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 76
    if-nez v2, :cond_5

    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_5

    .line 87
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 89
    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_5

    .line 95
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 108
    new-instance v4, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 110
    invoke-direct {v4}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    .line 113
    const-wide/16 v0, 0xbb8

    .line 115
    invoke-virtual {v4, v0, v1}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    .line 118
    :cond_6
    if-nez p1, :cond_7

    .line 120
    const-string p1, ""

    .line 122
    :cond_7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 124
    invoke-virtual {p0, v2, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsSetId(ILjava/lang/String;)V

    .line 127
    if-eqz v4, :cond_8

    .line 129
    invoke-virtual {v4}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    .line 132
    :cond_8
    return-void
.end method

.method public final releaseDozeMode()V
    .locals 3

    .line 1
    const-string/jumbo v0, "deviceidle"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v1, "power"

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/os/PowerManager;

    .line 23
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 26
    move-result p0

    .line 27
    const-string v1, "Device Idle Mode="

    .line 29
    const-string v2, "GnssLocationProvider_ex"

    .line 31
    invoke-static {v1, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne p0, v1, :cond_0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    const-string p0, "Release doze mode when KOR emergency request"

    .line 41
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    const-string/jumbo p0, "gnss"

    .line 47
    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    const-string p0, "Failed to release doze mode"

    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    return-void
.end method

.method public final requestRefLocationSec()V
    .locals 3

    .line 1
    const-string v0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v1, "requestRefLocationSec"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 11
    iget-boolean v1, v1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 17
    sget v1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mPhone:Landroid/telephony/TelephonyManager;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 37
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 42
    move-result-object v1

    .line 43
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCellInfoCb:Lcom/android/server/location/gnss/GnssLocationProviderSec$2;

    .line 45
    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 51
    const-string/jumbo v2, "phone"

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 71
    move-result-object v0

    .line 72
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCellInfoCb:Lcom/android/server/location/gnss/GnssLocationProviderSec$2;

    .line 74
    invoke-virtual {v1, v0, p0}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string p0, "Error getting cell location info."

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method public final secLocationValidate(Landroid/location/Location;J)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "GnssLocationProvider_ex"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 12
    move-result v0

    .line 13
    const/high16 v2, 0x3f000000    # 0.5f

    .line 15
    cmpg-float v0, v0, v2

    .line 17
    if-gez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v3, "location must have reasonable accuracy,"

    .line 24
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 44
    const-string v0, "WARNING:Invalid Accuracy"

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendAssertMessage(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 52
    move-result-wide v2

    .line 53
    cmp-long v0, v2, p2

    .line 55
    if-lez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v2, "location must not have realtime in the future,"

    .line 62
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 68
    move-result-wide v2

    .line 69
    sub-long/2addr v2, p2

    .line 70
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 83
    const-string v0, "WARNING:ElapsedRealtimeNanos is greater than system time"

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendAssertMessage(Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLocationElapsedRealtimeNs:J

    .line 90
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 93
    move-result-wide v4

    .line 94
    cmp-long v0, v2, v4

    .line 96
    if-lez v0, :cond_2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v2, "location must have valid monotonically increasing realtime,"

    .line 103
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLocationElapsedRealtimeNs:J

    .line 108
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 111
    move-result-wide v4

    .line 112
    sub-long/2addr v2, v4

    .line 113
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 126
    const-string p2, "WARNING:ElapsedRealtimeNanos is less than previous time"

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendAssertMessage(Ljava/lang/String;)V

    .line 131
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 134
    move-result-wide p1

    .line 135
    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLocationElapsedRealtimeNs:J

    .line 137
    return-void
.end method

.method public final sendAssertMessage(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 12
    const-string v2, "MM-dd-yyyy HH:mm:ss"

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 27
    iget-object v1, v1, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    .line 29
    const-string v2, ","

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    array-length v3, v1

    .line 36
    const/4 v4, 0x3

    .line 37
    if-lt v3, v4, :cond_0

    .line 39
    const/4 v3, 0x2

    .line 40
    aget-object v1, v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "UNKNOWN"

    .line 45
    :goto_0
    const-string v3, "G,"

    .line 47
    const-string v4, ",UNKNOWN,UNKNOWN,"

    .line 49
    invoke-static {v3, v0, v2, v1, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v0

    .line 53
    const-string v1, ";git_hash=0;"

    .line 55
    invoke-static {v0, p1, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onGnssEventUpdated(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public final sendExtraConfigurationString()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 20
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const-string v1, "SUPL_USE_APN"

    .line 28
    const-string v2, "FALSE"

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setCpAgpsProfile(I)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v2

    .line 55
    const-string v3, "GnssLocationProvider_ex"

    .line 57
    if-eqz v2, :cond_1

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 71
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, "="

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v5

    .line 97
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v3, "\n"

    .line 102
    invoke-static {v1, v4, v6, v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const-string/jumbo v0, "model = "

    .line 109
    const-string/jumbo v2, "getHardwareFactors"

    .line 112
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v2, Ljava/io/File;

    .line 117
    const-string v4, "/vendor/etc/gnss/hardware_factors.conf"

    .line 119
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 125
    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    if-eqz v4, :cond_2

    .line 128
    const/4 v4, 0x1

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 134
    :cond_2
    const/4 v4, 0x0

    .line 135
    :goto_1
    const-string v5, ""

    .line 137
    if-nez v4, :cond_3

    .line 139
    move-object v0, v5

    .line 140
    goto :goto_7

    .line 141
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    .line 148
    new-instance v7, Ljava/io/FileReader;

    .line 150
    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 153
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :try_start_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_4

    .line 179
    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getConfigValuesFromLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    goto :goto_2

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    goto :goto_3

    .line 189
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    goto :goto_6

    .line 193
    :catch_1
    move-exception v0

    .line 194
    goto :goto_5

    .line 195
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    goto :goto_4

    .line 199
    :catchall_1
    move-exception v2

    .line 200
    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 203
    :goto_4
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 204
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    const-string v2, "HW_FEATURES:\n"

    .line 211
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    .line 233
    if-eqz v0, :cond_6

    .line 235
    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_5

    .line 241
    goto :goto_8

    .line 242
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    .line 244
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 247
    :try_start_6
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    .line 249
    invoke-virtual {v2, v0, v5}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 259
    goto :goto_8

    .line 260
    :catch_2
    const-string/jumbo v0, "could not store to writer"

    .line 263
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_6
    :goto_8
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public final sendLidState(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_GPS_CONFIG_FOLD_CALIBRATED"

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    if-nez p1, :cond_1

    .line 17
    move p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-ne p1, v1, :cond_2

    .line 21
    move p1, v0

    .line 22
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "sendLidState "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "GnssLocationProvider_ex"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda1;

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;II)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public final setAgpsReferenceLocationCellId(IIIIJIII)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isSehRefLocation:Z

    .line 4
    const-string v2, "GnssLocationProvider_ex"

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const-string/jumbo v1, "setAgpsReferenceLocationCellId"

    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 16
    move v4, p1

    .line 17
    move v5, p2

    .line 18
    move v6, p3

    .line 19
    move/from16 v7, p4

    .line 21
    move-wide/from16 v8, p5

    .line 23
    move/from16 v10, p7

    .line 25
    move/from16 v11, p8

    .line 27
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJII)V

    .line 30
    return-void

    .line 31
    :cond_0
    const-string/jumbo v1, "setRefLocation through IAGnss"

    .line 34
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    move/from16 v1, p9

    .line 39
    int-to-long v5, v1

    .line 40
    const/4 v7, 0x0

    .line 41
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 43
    move v1, p1

    .line 44
    move v2, p2

    .line 45
    move v3, p3

    .line 46
    move/from16 v4, p4

    .line 48
    move/from16 v8, p7

    .line 50
    move/from16 v9, p8

    .line 52
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 55
    return-void
.end method

.method public final setCpAgpsProfile(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 11
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "CarrierFeature_GPS_SupportEnableAgps"

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    .line 28
    move-result p1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "AGPS Mask prev="

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevCpAgpsMask:I

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", current="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    const-string v1, "GnssLocationProvider_ex"

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevCpAgpsMask:I

    .line 60
    if-le p1, v0, :cond_1

    .line 62
    if-ltz p1, :cond_1

    .line 64
    const-string v0, "Set AGPS="

    .line 66
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevCpAgpsMask:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "CP_AGPS_ENABLE_PROFILE="

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v0, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method public final setLppBitMask(I)V
    .locals 11

    .line 1
    const-string v0, "CarrierFeature_GPS_ConfigLppBitmask"

    .line 3
    invoke-static {p1, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "CarrierFeature value LPPe Capability = "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", slotID = "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const-string v2, "GnssLocationProvider_ex"

    .line 35
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 40
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v1

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    .line 66
    iget v4, v4, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    .line 68
    if-ne v4, p1, :cond_0

    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x0

    .line 78
    :goto_0
    if-eqz v1, :cond_4

    .line 80
    iget-object v1, v1, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSimOperator:Ljava/lang/String;

    .line 82
    const-string v3, ""

    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_3

    .line 90
    if-nez v1, :cond_2

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const-string/jumbo v3, "setLppBitmask. simOperator="

    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 105
    iput-object v1, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 107
    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 110
    move-result-object v1

    .line 111
    iput-object v1, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    :goto_1
    const-string v1, "Invalid simOperator, set as default sim operator"

    .line 116
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 121
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 127
    iput-object v1, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 129
    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 132
    move-result-object v1

    .line 133
    iput-object v1, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 135
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 137
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    .line 140
    move-result v1

    .line 141
    const-string/jumbo v3, "tablet"

    .line 144
    const/4 v4, 0x0

    .line 145
    const/4 v5, 0x5

    .line 146
    if-eqz v1, :cond_f

    .line 148
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 150
    if-nez v0, :cond_5

    .line 152
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 160
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mDeviceMode:Ljava/lang/String;

    .line 162
    if-eqz v0, :cond_6

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v0

    .line 172
    goto :goto_3

    .line 173
    :cond_6
    move v0, v4

    .line 174
    :goto_3
    if-eqz v0, :cond_7

    .line 176
    move v0, v4

    .line 177
    goto/16 :goto_6

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 181
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 183
    const-string v3, "VZW"

    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v1

    .line 189
    const/4 v6, 0x1

    .line 190
    const-string v7, "GCF"

    .line 192
    const-string v8, "XAA"

    .line 194
    if-nez v1, :cond_9

    .line 196
    const-string v1, "USC"

    .line 198
    iget-object v9, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 200
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_9

    .line 206
    const-string v1, "ACG"

    .line 208
    iget-object v9, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_9

    .line 216
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 218
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_9

    .line 224
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 226
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_8

    .line 232
    goto :goto_4

    .line 233
    :cond_8
    move v0, v4

    .line 234
    goto :goto_5

    .line 235
    :cond_9
    :goto_4
    move v0, v6

    .line 236
    :goto_5
    const-string/jumbo v1, "isOTDOASupportMarket : "

    .line 239
    const-string v9, "CarrierConfigForGnss"

    .line 241
    invoke-static {v1, v9, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    if-eqz v0, :cond_a

    .line 246
    const/4 v5, 0x7

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 249
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 251
    const-string v10, "TMB"

    .line 253
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    move-result v1

    .line 257
    if-nez v1, :cond_b

    .line 259
    const-string v1, "ATT"

    .line 261
    iget-object v10, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_b

    .line 269
    const-string v1, "AIO"

    .line 271
    iget-object v10, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 273
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_b

    .line 279
    const-string v1, "XAU"

    .line 281
    iget-object v10, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 283
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result v1

    .line 287
    if-nez v1, :cond_b

    .line 289
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 291
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v1

    .line 295
    if-nez v1, :cond_b

    .line 297
    const-string v1, "XAR"

    .line 299
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 301
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_b

    .line 307
    const-string v1, "XAG"

    .line 309
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_b

    .line 317
    const-string v1, "TMK"

    .line 319
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_b

    .line 327
    const-string v1, "DSH"

    .line 329
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 331
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result v1

    .line 335
    if-nez v1, :cond_b

    .line 337
    const-string v1, "DSA"

    .line 339
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 341
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_b

    .line 347
    const-string v1, "DSG"

    .line 349
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 351
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    move-result v1

    .line 355
    if-nez v1, :cond_b

    .line 357
    const-string v1, "TFO"

    .line 359
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 361
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_b

    .line 367
    const-string v1, "TFA"

    .line 369
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 371
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_b

    .line 377
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_b

    .line 385
    const-string v1, "SPR"

    .line 387
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 389
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    move-result v1

    .line 393
    if-nez v1, :cond_b

    .line 395
    const-string v1, "VMU"

    .line 397
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 399
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_b

    .line 405
    const-string v1, "BST"

    .line 407
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 409
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_b

    .line 415
    const-string v1, "XAS"

    .line 417
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 419
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    move-result v1

    .line 423
    if-nez v1, :cond_b

    .line 425
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 427
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_c

    .line 433
    :cond_b
    move v4, v6

    .line 434
    :cond_c
    const-string/jumbo v0, "isLppeSupportMarket : "

    .line 437
    invoke-static {v0, v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 440
    if-eqz v4, :cond_d

    .line 442
    or-int/lit8 v5, v5, 0x10

    .line 444
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 446
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_e

    .line 452
    or-int/lit8 v5, v5, 0x40

    .line 454
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 456
    const-string v1, "(US market) LPPe Capability = "

    .line 458
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-static {v5}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object v0

    .line 472
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move v0, v5

    .line 476
    :goto_6
    const-string v1, "CarrierFeature_GPS_ConfigNrLppBitmask"

    .line 478
    invoke-static {p1, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    .line 481
    move-result p1

    .line 482
    const-string v1, "NR LPP Profile = "

    .line 484
    invoke-static {p1, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    goto/16 :goto_b

    .line 489
    :cond_f
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 491
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    .line 494
    move-result p1

    .line 495
    const/4 v1, -0x1

    .line 496
    if-eqz p1, :cond_15

    .line 498
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 500
    if-nez p1, :cond_10

    .line 502
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 505
    move-result-object p1

    .line 506
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 508
    :cond_10
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 510
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mDeviceMode:Ljava/lang/String;

    .line 512
    if-eqz p1, :cond_11

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 521
    move-result p1

    .line 522
    goto :goto_7

    .line 523
    :cond_11
    move p1, v4

    .line 524
    :goto_7
    if-eqz p1, :cond_13

    .line 526
    :cond_12
    :goto_8
    move v0, v4

    .line 527
    goto :goto_9

    .line 528
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 530
    const-string v0, "(Canada Market) LPPe Capability = "

    .line 532
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-static {v5}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object p1

    .line 546
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move v0, v5

    .line 550
    :cond_14
    :goto_9
    move p1, v1

    .line 551
    goto :goto_b

    .line 552
    :cond_15
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 554
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 557
    move-result p1

    .line 558
    if-eqz p1, :cond_19

    .line 560
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 562
    if-nez p1, :cond_16

    .line 564
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 567
    move-result-object p1

    .line 568
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 570
    :cond_16
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 572
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    .line 575
    move-result p1

    .line 576
    if-nez p1, :cond_18

    .line 578
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 580
    const-string v0, "45006"

    .line 582
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 584
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    move-result p1

    .line 588
    if-eqz p1, :cond_17

    .line 590
    goto :goto_a

    .line 591
    :cond_17
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 593
    const-string v0, "45008"

    .line 595
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 597
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    move-result p1

    .line 601
    if-eqz p1, :cond_12

    .line 603
    new-instance p1, Ljava/lang/StringBuilder;

    .line 605
    const-string v0, "(KOR KTT) LPPe Capability = "

    .line 607
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    const/16 v0, 0x57

    .line 612
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    .line 615
    move-result-object v3

    .line 616
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    move-result-object p1

    .line 623
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    goto :goto_9

    .line 627
    :cond_18
    :goto_a
    const-string p1, "(KOR SKT,LGU) LPPe Capability = []"

    .line 629
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    goto :goto_8

    .line 633
    :cond_19
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 635
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 637
    sget-object v3, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 639
    if-ne p1, v3, :cond_14

    .line 641
    if-ne v0, v1, :cond_14

    .line 643
    const-string p1, "No Operator LPP Disable"

    .line 645
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    move p1, v1

    .line 649
    move v0, v4

    .line 650
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 652
    const-string/jumbo v3, "prevLppMask="

    .line 655
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 660
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    const-string v3, ", curLppMask="

    .line 665
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    move-result-object v1

    .line 675
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 680
    if-le v0, v1, :cond_1a

    .line 682
    if-ltz v0, :cond_1a

    .line 684
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppSupport(I)V

    .line 689
    :cond_1a
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    .line 691
    if-le p1, v0, :cond_1e

    .line 693
    if-ltz p1, :cond_1e

    .line 695
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    .line 697
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 699
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 705
    move-result v0

    .line 706
    if-eqz v0, :cond_1b

    .line 708
    goto :goto_d

    .line 709
    :cond_1b
    const-string/jumbo v0, "setNrLppSupport("

    .line 712
    const-string v1, ")"

    .line 714
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 719
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 721
    if-nez v0, :cond_1c

    .line 723
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    .line 726
    move-result v0

    .line 727
    if-eqz v0, :cond_1c

    .line 729
    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    .line 732
    const-string/jumbo v0, "native_init"

    .line 735
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_1c
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_1d

    .line 744
    goto :goto_c

    .line 745
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 747
    const-string/jumbo v3, "configurationUpdate_setNrLppSupport, NR_LPP_PROFILE="

    .line 750
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    move-result-object v0

    .line 760
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    .line 765
    const-string v3, "NR_LPP_PROFILE="

    .line 767
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    move-result-object p1

    .line 777
    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 780
    :goto_c
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 782
    if-nez p0, :cond_1e

    .line 784
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    .line 787
    move-result p0

    .line 788
    if-eqz p0, :cond_1e

    .line 790
    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    .line 793
    const-string/jumbo p0, "native_cleanup "

    .line 796
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->initLocationOff()Z

    .line 802
    :cond_1e
    :goto_d
    return-void
.end method

.method public final setLppSupport(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const-string/jumbo v0, "setLppSupport("

    .line 16
    const-string v1, ")"

    .line 18
    const-string v2, "GnssLocationProvider_ex"

    .line 20
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 25
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 27
    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    .line 38
    const-string/jumbo v0, "native_init"

    .line 41
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v3, "configurationUpdate_setLppSupport, LPP_PROFILE="

    .line 56
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    const-string v3, "LPP_PROFILE="

    .line 73
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 86
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 88
    if-nez p0, :cond_3

    .line 90
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    .line 99
    const-string/jumbo p0, "native_cleanup"

    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->initLocationOff()Z

    .line 108
    :cond_3
    return-void
.end method

.method public final setSktSuplVer()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setSktSuplVer : "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v1, "ro.product.name"

    .line 12
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "GnssLocationProvider_ex"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v0, "AGPS_SUPL_VER_2_0_1_AGNSS,  server = wpde.nate.com"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v6, 0x0

    .line 34
    const/16 v7, 0xf

    .line 36
    const/4 v3, 0x4

    .line 37
    const-string/jumbo v8, "wpde.nate.com"

    .line 40
    const/16 v4, 0x1c6b

    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v2, p0

    .line 44
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 47
    return-void
.end method

.method public final setSuplServerSec()V
    .locals 15

    .line 1
    const-string v0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v1, "updateSuplServerFromCSC"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    const-string v2, "/data/system/gps/cscgps.conf"

    .line 13
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "CSC_SUPL_SUPLSERVERFROMCSC"

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 40
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    const/4 v3, 0x1

    .line 45
    if-ne v2, v3, :cond_0

    .line 47
    const-string v2, "CSC_SUPL_HOST"

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v9

    .line 53
    const-string v2, "CSC_SUPL_VER"

    .line 55
    const-string v3, "1"

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    const-string v3, "CSC_SUPL_PORT"

    .line 63
    const-string v4, "7276"

    .line 65
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    const-string v4, "CSC_SUPL_SSL"

    .line 71
    const-string v5, "0"

    .line 73
    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    const-string v6, "CSC_SUPL_CERT"

    .line 79
    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    move-result v2

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    move-result v5

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    move-result v6

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    move-result v8

    .line 99
    const/4 v7, 0x0

    .line 100
    move-object v3, p0

    .line 101
    move v4, v2

    .line 102
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 110
    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 115
    goto :goto_0

    .line 116
    :catch_2
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 120
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_1

    .line 131
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 140
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_2

    .line 146
    const/4 v6, 0x0

    .line 147
    const/16 v7, 0xf

    .line 149
    const/4 v3, 0x3

    .line 150
    const-string/jumbo v8, "supl.google.com"

    .line 153
    const/16 v4, 0x1c6b

    .line 155
    const/4 v5, 0x1

    .line 156
    move-object v2, p0

    .line 157
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 160
    return-void

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 163
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_3

    .line 173
    const/16 v4, 0x1c6b

    .line 175
    const/4 v5, 0x1

    .line 176
    const/16 v3, 0x8

    .line 178
    const-string/jumbo v8, "supl.geo.t-mobile.com"

    .line 181
    const/4 v6, 0x0

    .line 182
    const/16 v7, 0xf

    .line 184
    move-object v2, p0

    .line 185
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 188
    goto/16 :goto_8

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 192
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 195
    move-result-object v1

    .line 196
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 198
    if-eq v1, v2, :cond_14

    .line 200
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 202
    if-eq v1, v2, :cond_14

    .line 204
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 206
    if-eq v1, v2, :cond_14

    .line 208
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 210
    if-ne v1, v2, :cond_4

    .line 212
    goto/16 :goto_7

    .line 214
    :cond_4
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 216
    if-eq v1, v2, :cond_14

    .line 218
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 220
    if-eq v1, v2, :cond_14

    .line 222
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 224
    if-eq v1, v2, :cond_14

    .line 226
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 228
    if-ne v1, v2, :cond_5

    .line 230
    goto/16 :goto_7

    .line 232
    :cond_5
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 234
    if-ne v1, v2, :cond_6

    .line 236
    goto/16 :goto_7

    .line 238
    :cond_6
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 240
    if-eq v1, v2, :cond_14

    .line 242
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 244
    if-ne v1, v2, :cond_7

    .line 246
    goto/16 :goto_7

    .line 248
    :cond_7
    invoke-static {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_8

    .line 254
    goto/16 :goto_7

    .line 256
    :cond_8
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 258
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 261
    move-result-object v1

    .line 262
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 264
    if-ne v1, v2, :cond_a

    .line 266
    const-string/jumbo v1, "dcm_supl_iot"

    .line 269
    const-string/jumbo v2, "false"

    .line 272
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    move-result-object v1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    const-string v3, "Set supl server for JPN_DCM, iot value:"

    .line 280
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string/jumbo v0, "true"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_9

    .line 302
    const/4 v5, 0x1

    .line 303
    const/4 v6, 0x0

    .line 304
    const/16 v2, 0x9

    .line 306
    const-string/jumbo v7, "dcm-supl.com"

    .line 309
    const/16 v3, 0x1c6b

    .line 311
    const/4 v4, 0x1

    .line 312
    move-object v1, p0

    .line 313
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 316
    goto/16 :goto_8

    .line 318
    :cond_9
    const/4 v12, 0x0

    .line 319
    const/16 v13, 0xf

    .line 321
    const/4 v9, 0x3

    .line 322
    const-string/jumbo v14, "supl.google.com"

    .line 325
    const/16 v10, 0x1c6b

    .line 327
    const/4 v11, 0x1

    .line 328
    move-object v8, p0

    .line 329
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 332
    goto/16 :goto_8

    .line 334
    :cond_a
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 336
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 339
    move-result-object v1

    .line 340
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 342
    if-ne v1, v2, :cond_b

    .line 344
    const/16 v5, 0x1c6b

    .line 346
    const/4 v6, 0x1

    .line 347
    const/16 v4, 0x9

    .line 349
    const-string/jumbo v9, "supl.google.com"

    .line 352
    const/4 v7, 0x0

    .line 353
    const/16 v8, 0xf

    .line 355
    move-object v3, p0

    .line 356
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 359
    goto/16 :goto_8

    .line 361
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 363
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 366
    move-result-object v1

    .line 367
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 369
    if-ne v1, v2, :cond_c

    .line 371
    const/16 v5, 0x1c6b

    .line 373
    const/4 v6, 0x1

    .line 374
    const/4 v4, 0x2

    .line 375
    const-string/jumbo v9, "location2.kddi.ne.jp"

    .line 378
    const/4 v7, 0x0

    .line 379
    const/16 v8, 0xf

    .line 381
    move-object v3, p0

    .line 382
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 385
    goto/16 :goto_8

    .line 387
    :cond_c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 389
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 392
    move-result-object v1

    .line 393
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 395
    if-ne v1, v2, :cond_d

    .line 397
    const/16 v5, 0x1c6b

    .line 399
    const/4 v6, 0x1

    .line 400
    const/4 v4, 0x3

    .line 401
    const-string/jumbo v9, "supl.rm-n.jp"

    .line 404
    const/4 v7, 0x0

    .line 405
    const/16 v8, 0xf

    .line 407
    move-object v3, p0

    .line 408
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 411
    goto/16 :goto_8

    .line 413
    :cond_d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 415
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 418
    move-result-object v1

    .line 419
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 421
    if-eq v1, v2, :cond_13

    .line 423
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 425
    if-ne v1, v2, :cond_e

    .line 427
    goto/16 :goto_6

    .line 429
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 431
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 434
    move-result-object v1

    .line 435
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 437
    if-eq v1, v2, :cond_12

    .line 439
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 441
    if-eq v1, v2, :cond_12

    .line 443
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 445
    if-ne v1, v2, :cond_f

    .line 447
    goto/16 :goto_5

    .line 449
    :cond_f
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 451
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 454
    move-result-object v1

    .line 455
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 457
    if-ne v1, v2, :cond_11

    .line 459
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 461
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 465
    if-nez v1, :cond_10

    .line 467
    const/4 v0, 0x0

    .line 468
    :goto_1
    move-object v7, v0

    .line 469
    goto :goto_4

    .line 470
    :cond_10
    const/4 v2, 0x3

    .line 471
    const/4 v3, 0x0

    .line 472
    :try_start_3
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 475
    move-result-object v4

    .line 476
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 479
    move-result v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 480
    goto :goto_2

    .line 481
    :catch_3
    move-exception v4

    .line 482
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 485
    move v4, v3

    .line 486
    :goto_2
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 489
    move-result-object v1

    .line 490
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 493
    move-result v3
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 494
    goto :goto_3

    .line 495
    :catch_4
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 499
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 501
    const-string/jumbo v2, "h-slp.mnc"

    .line 504
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 510
    move-result-object v2

    .line 511
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    move-result-object v3

    .line 515
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 518
    move-result-object v3

    .line 519
    const-string v5, "%03d"

    .line 521
    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 524
    move-result-object v2

    .line 525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v2, ".mcc"

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 536
    move-result-object v2

    .line 537
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    move-result-object v3

    .line 541
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 544
    move-result-object v3

    .line 545
    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 548
    move-result-object v2

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v2, ".pub.3gppnetwork.org"

    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 559
    const-string/jumbo v3, "makeAutoSuplUrl :"

    .line 562
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    move-result-object v2

    .line 572
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    move-result-object v0

    .line 579
    goto :goto_1

    .line 580
    :goto_4
    if-eqz v7, :cond_15

    .line 582
    const/4 v5, 0x0

    .line 583
    const/16 v6, 0xf

    .line 585
    const/4 v2, 0x2

    .line 586
    const/16 v3, 0x1c6b

    .line 588
    const/4 v4, 0x1

    .line 589
    move-object v1, p0

    .line 590
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 593
    goto :goto_8

    .line 594
    :cond_11
    const/16 v10, 0x1c6b

    .line 596
    const/4 v11, 0x1

    .line 597
    const/4 v9, 0x3

    .line 598
    const-string/jumbo v14, "supl.google.com"

    .line 601
    const/4 v12, 0x0

    .line 602
    const/16 v13, 0xf

    .line 604
    move-object v8, p0

    .line 605
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 608
    goto :goto_8

    .line 609
    :cond_12
    :goto_5
    const/16 v2, 0x1c6b

    .line 611
    const/4 v3, 0x1

    .line 612
    const/4 v1, 0x2

    .line 613
    const-string/jumbo v6, "supl.attmex.mx"

    .line 616
    const/4 v4, 0x0

    .line 617
    const/16 v5, 0xf

    .line 619
    move-object v0, p0

    .line 620
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 623
    goto :goto_8

    .line 624
    :cond_13
    :goto_6
    const/4 v11, 0x0

    .line 625
    const/16 v12, 0xf

    .line 627
    const/4 v8, 0x1

    .line 628
    const-string v13, "221.176.0.55"

    .line 630
    const/16 v9, 0x1c6b

    .line 632
    const/4 v10, 0x1

    .line 633
    move-object v7, p0

    .line 634
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 637
    goto :goto_8

    .line 638
    :cond_14
    :goto_7
    const/16 v2, 0x1c6b

    .line 640
    const/4 v3, 0x1

    .line 641
    const/16 v1, 0x8

    .line 643
    const-string/jumbo v6, "supl.google.com"

    .line 646
    const/4 v4, 0x0

    .line 647
    const/16 v5, 0xf

    .line 649
    move-object v0, p0

    .line 650
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 653
    :cond_15
    :goto_8
    return-void
.end method

.method public final setTelephonyTransmitPower(Z)V
    .locals 4

    .line 1
    const-string p0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v0, "set setTransmitPowerExt(Tuner) value : "

    .line 6
    const-string/jumbo v1, "isemtelephony"

    .line 9
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    :try_start_0
    sget-wide v2, Lcom/android/server/location/gnss/GnssLocationProviderSec;->GNSS_DEVICE_ID:J

    .line 21
    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerExt(JZ)Z

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string p1, "RemoteException occurs in setTransmitPowerExt"

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    const-string p1, "NullPointerException, as ITelephony object is null"

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method public final setXtraDownloadedTime()V
    .locals 2

    .line 1
    const-string p0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v0, "setXtraDownloadedTime()"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    const-string/jumbo p0, "persist.sys.xtra_time"

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final startNavigatingSec()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 12
    const-string/jumbo p0, "vendor/etc/gnss/mnl.prop"

    .line 15
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 21
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 27
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    .line 30
    :cond_0
    return-void
.end method

.method public final stopNavigatingSec()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "GnssLocationProvider_ex"

    .line 9
    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "getSKAFEnable : "

    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 21
    invoke-static {v1, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 24
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 26
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSKApplicationFrameworkEnabled(Z)V

    .line 34
    const-string/jumbo v0, "stopNavigating : isSKAF changed"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string/jumbo v0, "sys.sktgps"

    .line 43
    const-string v4, "0"

    .line 45
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v4, "mIsKtGps : "

    .line 65
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    .line 70
    invoke-static {v1, v0, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 73
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    .line 75
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKTSuplServerEnabled(Z)V

    .line 80
    const-string/jumbo v0, "mIsKtGps is changed"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 101
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 103
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 105
    if-ne v0, v2, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 109
    if-eqz v0, :cond_2

    .line 111
    const-string/jumbo v0, "release ToneGenerator"

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 119
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 122
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 125
    :cond_2
    :goto_0
    return-void
.end method

.method public final updateKTSuplServerEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v0, "mIsKtGps : "

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    .line 13
    const-string v0, "GnssLocationProvider_ex"

    .line 15
    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 18
    return-void
.end method

.method public final updateKoreanOperatorsSuplSetting()V
    .locals 9

    .line 1
    const-string v0, "GnssLocationProvider_ex"

    .line 3
    const-string/jumbo v1, "setKoreanOperatorsSuplSetting()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "getSKAFEnable : "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 19
    invoke-static {v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 22
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const-string v1, " SKT GPS mode : SUPL 2.0.1 AGNSS"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSktSuplVer()V

    .line 34
    const-string/jumbo p0, "sys.sktgps"

    .line 37
    const-string v0, "1"

    .line 39
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v2, "mIsKtGps : "

    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    .line 53
    invoke-static {v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 56
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    .line 58
    if-eqz v1, :cond_1

    .line 60
    const-string v1, " KT GPS mode : SUPL2.0 AGNSS"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerHost:Ljava/lang/String;

    .line 67
    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerPort:I

    .line 69
    const/4 v3, 0x3

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    const/16 v7, 0xf

    .line 74
    move-object v2, p0

    .line 75
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v1, "setKoreanOperatorsSuplSetting() : Google SUPL 2.0 AGNSS"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 98
    const-string v1, "ENABLE_SUPL_AGNSS_BEIDOU=FALSE"

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 103
    const-string v1, "ENABLE_SUPL_AGNSS_GALILEO=FALSE"

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 108
    :cond_2
    const/16 v4, 0x1c6b

    .line 110
    const/4 v5, 0x1

    .line 111
    const/4 v3, 0x3

    .line 112
    const-string/jumbo v8, "supl.google.com"

    .line 115
    const/4 v6, 0x0

    .line 116
    const/16 v7, 0xf

    .line 118
    move-object v2, p0

    .line 119
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(IIIIILjava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method

.method public final updatePsdsEnabled(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "configurationUpdate_xtraEnable, XTRA_ENABLE="

    .line 4
    const-string v1, "GnssLocationProvider_ex"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string v0, "XTRA_ENABLE="

    .line 22
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda1;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;II)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 41
    :goto_0
    return-void
.end method

.method public final updateSKApplicationFrameworkEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v0, "setSKAFEnable : "

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 13
    const-string v0, "GnssLocationProvider_ex"

    .line 15
    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 18
    return-void
.end method

.method public final updateSuplServerConfiguration(IIIIILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "AGPS_TYPE=3\nSUPL_VERSION="

    .line 3
    const-string v1, "\nSUPL_HOST="

    .line 5
    const-string v2, "\nSUPL_PORT="

    .line 7
    invoke-static {p1, v0, v1, p6, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\nSUPL_SSL="

    .line 13
    const-string v2, "\nSSL_VER="

    .line 15
    invoke-static {p2, p3, v1, v2, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 18
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "\nSSL_TYPE="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "Update SUPL Configuration["

    .line 35
    const-string/jumbo v2, "|"

    .line 38
    invoke-static {p1, v1, v2, p6, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2, p3, v2, v2, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 45
    const-string p2, "]"

    .line 47
    invoke-static {p4, p5, v2, p2, p1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const-string p2, "GnssLocationProvider_ex"

    .line 53
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;

    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-direct {p1, p2, p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 82
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 84
    if-nez p6, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iput-object p6, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mSuplAddress:Ljava/lang/String;

    .line 92
    const-string/jumbo p1, "supl_hostname"

    .line 95
    invoke-static {p1, p6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 98
    move-result-object p1

    .line 99
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 101
    sget-object p2, Landroid/location/LocationConstants$STATE_TYPE;->SUPL_ADDRESS:Landroid/location/LocationConstants$STATE_TYPE;

    .line 103
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 106
    :goto_1
    return-void
.end method

.method public final updateSuplServerForNewSISession()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    .line 5
    const-string v2, "GnssLocationProvider_ex"

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const-string v1, "NISession flag set to false"

    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    .line 17
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    const-string v1, "Set SubIdForSuplNi to DD subID"

    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sput v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 36
    const-string/jumbo v1, "phone"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 45
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 47
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    .line 69
    :cond_2
    return-void
.end method
