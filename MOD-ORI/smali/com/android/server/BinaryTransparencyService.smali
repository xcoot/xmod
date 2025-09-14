.class public final Lcom/android/server/BinaryTransparencyService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final BINARY_HASH_ERROR:Ljava/lang/String; = "SHA256HashError"

.field static final KEY_ENABLE_BIOMETRIC_PROPERTY_VERIFICATION:Ljava/lang/String; = "enable_biometric_property_verification"

.field static final SYSPROP_NAME_VBETA_DIGEST:Ljava/lang/String; = "ro.boot.vbmeta.digest"

.field static final VBMETA_DIGEST_UNAVAILABLE:Ljava/lang/String; = "vbmeta-digest-unavailable"

.field static final VBMETA_DIGEST_UNINITIALIZED:Ljava/lang/String; = "vbmeta-digest-uninitialized"

.field public static final digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

.field public final mContext:Landroid/content/Context;

.field public mMeasurementsLastRecordedMs:J

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

.field public mVbmetaDigest:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mgetCurrentInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "TransparencyService"

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "Error obtaining an instance of PackageManager."

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-wide/32 v2, 0x48000000

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    const-string p0, "Error obtaining installed packages (including APEX)"

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda3;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    move-object v0, p0

    .line 66
    check-cast v0, Ljava/util/List;

    .line 67
    .line 68
    :goto_0
    return-object v0
.end method

.method public static -$$Nest$mgetNewlyInstalledMbas(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "background_install_control"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TransparencyService"

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, "Failed to obtain an IBinder instance of IBackgroundInstallControlService"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/32 v2, 0x8020000

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :try_start_0
    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IBackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v2, "Failed to get a list of MBAs."

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object p0
.end method

.method public static -$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    .line 5
    .line 6
    .line 7
    move-result v10

    .line 8
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_0
    :goto_0
    move v11, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v1, 0x3

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move v11, v2

    .line 26
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getComponentInfo()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getComponentId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getHardwareVersion()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getFirmwareVersion()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSerialNumber()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSoftwareVersion()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/16 v0, 0x24b

    .line 92
    .line 93
    move v1, v10

    .line 94
    move v2, p2

    .line 95
    move v3, p3

    .line 96
    move v4, v11

    .line 97
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    return-void
.end method

.method public static -$$Nest$mtranslateContentDigestAlgorithmIdToString(Lcom/android/server/BinaryTransparencyService;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    if-eq p1, p0, :cond_3

    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    if-eq p1, p0, :cond_2

    .line 9
    .line 10
    const/4 p0, 0x3

    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x4

    .line 14
    if-eq p1, p0, :cond_0

    .line 15
    .line 16
    const-string p0, "UNKNOWN_ALGO_ID("

    .line 17
    .line 18
    const-string v0, ")"

    .line 19
    .line 20
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "SHA256"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p0, "VERITY_CHUNKED_SHA256"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string p0, "CHUNKED_SHA512"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const-string p0, "CHUNKED_SHA256"

    .line 35
    .line 36
    :goto_0
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 2
    .line 3
    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x43fa0000    # 500.0f

    .line 7
    .line 8
    const/16 v4, 0x32

    .line 9
    .line 10
    invoke-direct {v1, v4, v2, v3}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    .line 11
    .line 12
    .line 13
    const-string v2, "binary_transparency.value_digest_all_packages_latency_uniform"

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->sInstance:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService;-><init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {p1, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 6
    const-string/jumbo p1, "vbmeta-digest-uninitialized"

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 8
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 9
    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    return-void
.end method


# virtual methods
.method public collectBiometricProperties()V
    .locals 4

    .line 1
    const-string/jumbo v0, "enable_biometric_property_verification"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const-string/jumbo v2, "biometrics"

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v2, "android.hardware.fingerprint"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v2, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string v3, "android.hardware.biometrics.face"

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const-class v1, Landroid/hardware/face/FaceManager;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v1, v0

    .line 63
    check-cast v1, Landroid/hardware/face/FaceManager;

    .line 64
    .line 65
    :cond_2
    if-eqz v2, :cond_3

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/BinaryTransparencyService$1;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$1;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    if-eqz v1, :cond_4

    .line 76
    .line 77
    new-instance v0, Lcom/android/server/BinaryTransparencyService$2;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$2;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    const-string p1, "TransparencyService"

    .line 6
    .line 7
    const-string v0, "Boot completed. Getting boot integrity data."

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "vbmeta-digest-unavailable"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "VBMeta Digest: "

    .line 25
    .line 26
    invoke-static {v1, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x1a4

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/security/Flags;->binaryTransparencySepolicyHash()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    .line 49
    .line 50
    .line 51
    check-cast v0, Landroid/os/HandlerExecutor;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    const-string v0, "Boot completed. Collecting biometric system properties."

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->collectBiometricProperties()V

    .line 62
    .line 63
    .line 64
    const-string v0, "Scheduling measurements to be taken."

    .line 65
    .line 66
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "Registering APK & Non-Staged APEX updates..."

    .line 75
    .line 76
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    .line 80
    .line 81
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "package"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    new-instance v2, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;

    .line 95
    .line 96
    invoke-direct {v2, p0}, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string v0, "Registering APEX updates..."

    .line 103
    .line 104
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    const-string/jumbo v0, "package_native"

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 119
    .line 120
    const-string p0, "IPackageManagerNative is null"

    .line 121
    .line 122
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/server/BinaryTransparencyService$3;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/android/server/BinaryTransparencyService$3;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    const-string p0, "Failed to register a StagedApexObserver."

    .line 136
    .line 137
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    const-string v0, "TransparencyService"

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "transparency"

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "Started BinaryTransparencyService"

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    const-string v1, "Failed to start BinaryTransparencyService."

    .line 19
    .line 20
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
