.class Lcom/android/server/location/gnss/GnssVisibilityControl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

.field public static mIsNfwLocationAccessProxyAppsUpdated:Z


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsGpsEnabled:Z

.field public final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public final mOnPermissionsChangedListener:Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProxyAppsState:Landroid/util/ArrayMap;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 12
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    .line 17
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;

    .line 19
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 21
    const-string/jumbo v0, "power"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/os/PowerManager;

    .line 30
    const/4 v1, 0x1

    .line 31
    const-string v2, "GnssVisibilityControl"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    new-instance v0, Landroid/os/Handler;

    .line 41
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 48
    const-class p2, Landroid/app/AppOpsManager;

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Landroid/app/AppOpsManager;

    .line 56
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    new-instance p1, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;

    .line 66
    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method private native native_enable_nfw_location_access([Ljava/lang/String;)Z
.end method


# virtual methods
.method public final clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateLocationIcon(ILjava/lang/String;Z)Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iput-boolean v0, p1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    const-string p1, "Location icon off. Uid: "

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p1, ", proxyAppPkgName: "

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string p1, "GnssVisibilityControl"

    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public final getLocationPermissionEnabledProxyApps()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 25
    iget-boolean v3, v3, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 27
    if-eqz v3, :cond_0

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    .line 34
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p0

    .line 44
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 68
    iget-boolean v2, v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 70
    if-eqz v2, :cond_2

    .line 72
    add-int/lit8 v2, v1, 0x1

    .line 74
    aput-object v3, v0, v1

    .line 76
    move v1, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    return-object v0
.end method

.method public final getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 7
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    const-string p0, "Proxy app "

    .line 11
    const-string v0, " is not found."

    .line 13
    const-string v1, "GnssVisibilityControl"

    .line 15
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final resetProxyAppsState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 29
    iget-boolean v3, v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    .line 31
    if-nez v3, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_0

    .line 51
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 68
    return-void
.end method

.method public final runOnHandler(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    const-wide/32 v1, 0xea60

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 9
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Object;I)V

    .line 15
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 28
    :cond_0
    return-void
.end method

.method public final setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "Updating non-framework location access proxy apps in the GNSS HAL to: "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "GnssVisibilityControl"

    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 31
    move-result v1

    .line 32
    const-string/jumbo v3, "com.sec.location.nfwlocationprivacy"

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    array-length v1, p1

    .line 40
    if-nez v1, :cond_2

    .line 42
    const-string p1, "GnssVisibilityControl KOR exception policy. Force set proxyapp packageName"

    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-array p1, v5, [Ljava/lang/String;

    .line 49
    aput-object v3, p1, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 54
    const-string/jumbo v1, "ro.product.first_api_level"

    .line 57
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 60
    move-result v1

    .line 61
    const/16 v6, 0x1c

    .line 63
    if-le v1, v6, :cond_1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 68
    if-eqz v1, :cond_2

    .line 70
    new-array p1, v5, [Ljava/lang/String;

    .line 72
    aput-object v3, p1, v4

    .line 74
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->native_enable_nfw_location_access([Ljava/lang/String;)Z

    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_3

    .line 80
    const-string p1, "Failed to update non-framework location access proxy apps in the GNSS HAL to: "

    .line 82
    invoke-static {p1, v0, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    sget-boolean p1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsNfwLocationAccessProxyAppsUpdated:Z

    .line 87
    if-nez p1, :cond_4

    .line 89
    if-eqz p0, :cond_4

    .line 91
    sput-boolean v5, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsNfwLocationAccessProxyAppsUpdated:Z

    .line 93
    :cond_4
    return-void
.end method

.method public final shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 13
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final updateLocationIcon(ILjava/lang/String;Z)Z
    .locals 3

    .line 1
    const/16 v0, 0x2a

    .line 3
    const/16 v1, 0x29

    .line 5
    if-eqz p3, :cond_1

    .line 7
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 9
    invoke-virtual {p3, v1, p1, p2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 12
    move-result p3

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 16
    return v2

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 19
    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_2

    .line 25
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 27
    invoke-virtual {p0, v1, p1, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 30
    return v2

    .line 31
    :cond_1
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 33
    invoke-virtual {p3, v1, p1, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 38
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 41
    :cond_2
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final updateNfwLocationAccessProxyAppsInGnssHal()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsNfwLocationAccessProxyAppsUpdated:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 23
    return-void
.end method
