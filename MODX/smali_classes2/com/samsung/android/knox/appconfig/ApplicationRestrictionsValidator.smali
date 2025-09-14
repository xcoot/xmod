.class public final Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FEATURE_INTELLIGENCE_SERVICE:Z

.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsValidator"

.field public static final unusedBundleKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string/jumbo v11, "startActivity"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v12, "sendBroadcast"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "wificonfiguration"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "skip_welcome_screen"

    .line 11
    .line 12
    .line 13
    const-string v2, "flow_pointer_is_on_dex"

    .line 14
    .line 15
    const-string v3, "flow_pointer_from_where_dex"

    .line 16
    .line 17
    const-string v4, "app_config_skip_overscan"

    .line 18
    .line 19
    const-string v5, "app_config_hidden"

    .line 20
    .line 21
    const-string v6, "app_config_disable_ctx_menu"

    .line 22
    .line 23
    const-string v7, "app_config_disable_dex_labs_button"

    .line 24
    .line 25
    const-string v8, "app_config_disable_exit_dex_button"

    .line 26
    .line 27
    const-string v9, "dex_disable_file_copy_from_pc"

    .line 28
    .line 29
    const-string v10, "dex_disable_file_copy_from_mobile"

    .line 30
    .line 31
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    xor-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    sput-boolean v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->FEATURE_INTELLIGENCE_SERVICE:Z

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkAISupport(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/EdmConstants;->AI_TOP_LEVEL_KEYS:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-boolean p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->FEATURE_INTELLIGENCE_SERVICE:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    .line 17
    .line 18
    return p0
.end method

.method public static checkKeyType(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v2
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getPermission()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-interface {v0, p2, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_PERMISSION_DENIED:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    .line 25
    .line 26
    return p0

    .line 27
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p2, "fail to checkPermission  "

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "ApplicationRestrictionsValidator"

    .line 42
    .line 43
    invoke-static {p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    .line 47
    .line 48
    return p0
.end method

.method public static checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevelForInternal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-le p0, v0, :cond_0

    .line 10
    .line 11
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    .line 17
    .line 18
    return p0

    .line 19
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "fail to checkVersion "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "ApplicationRestrictionsValidator"

    .line 34
    .line 35
    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    .line 39
    .line 40
    return p0
.end method

.method public static checkWPCODMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "device_policy"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getCallerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static hasSystemVibrationMenu(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isSupportDcHaptic(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    return v1
.end method

.method public static hasVibrator(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "vibrator"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/Vibrator;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public static isEnableIntensity(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "vibrator"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/Vibrator;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-le p0, v1, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_1
    return v0
.end method

.method public static isSupportDcHaptic(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static supportAutoBrightness(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportLightSensor(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportCameraSensor(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static supportCameraSensor(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "sensor"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/hardware/SensorManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v1, 0x5

    .line 15
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const v1, 0x10044

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    return v0
.end method

.method public static supportLightSensor(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "sensor"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/hardware/SensorManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    move v1, v0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/hardware/Sensor;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x5

    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    const v3, 0x10041

    .line 40
    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 49
    :cond_3
    return v0
.end method

.method public static supportPocketMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "motion_recognition"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/high16 v0, 0x800000

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isAvailable(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static supportTaskBar(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string/jumbo v0, "minimal_battery_use"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x1

    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    .line 28
    move v1, v0

    .line 29
    :cond_0
    return v1
.end method

.method public static validate(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v1, p1

    .line 1
    const-string v2, "ApplicationRestrictionsValidator"

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1

    .line 3
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->getCallerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->NONE:Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    .line 5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    sget-object v7, Lcom/samsung/android/knox/appconfig/info/KeyInfo;->KEYMAP:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    if-nez v7, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    move-result v8

    .line 9
    sget v9, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v9, v8, :cond_2

    .line 10
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v8, p0

    .line 11
    invoke-static {v8, v3, v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    move-result v7

    .line 12
    sget v9, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v9, v7, :cond_3

    .line 13
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkWPCODMode(Landroid/content/Context;)Z

    move-result v7

    .line 15
    const-string v9, "location_services_wifi_scanning"

    const-string v10, "location_services_bluetooth_scanning"

    const-string/jumbo v11, "wifi_always_scanning"

    const-string v12, "bluetooth_always_scanning"

    const-string/jumbo v13, "top_level_location"

    const-string v14, "location_settings"

    const/4 v15, 0x1

    if-ne v7, v15, :cond_5

    .line 16
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 17
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 18
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    :cond_4
    sget v7, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {v6}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkKeyType(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v15, :cond_6

    goto :goto_0

    .line 21
    :cond_6
    invoke-static {v6}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkAISupport(Ljava/lang/String;)I

    move-result v7

    .line 22
    sget v15, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v15, v7, :cond_7

    .line 23
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 24
    :cond_7
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 25
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    goto/16 :goto_0

    .line 26
    :cond_8
    const-string/jumbo v15, "value"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_27

    .line 27
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    goto/16 :goto_0

    .line 28
    :cond_9
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v1, 0x4

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v9, "wifi_qrcode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x85

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :sswitch_1
    const-string v9, "disableToolbarYoutube "

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa5

    goto/16 :goto_2

    :sswitch_2
    const-string v9, "long_press_wake_bixby"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x63

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v9, "telephonyui_simcard_manager_data_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb9

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x3

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v9, "xcover_top_long_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x58

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v9, "telephonyui_doemstic_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb4

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v9, "nfc_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x9

    goto/16 :goto_2

    :sswitch_8
    const-string v9, "lock_screen_additional_info"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x1e

    goto/16 :goto_2

    :sswitch_9
    const-string v9, "easy_mute"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    goto/16 :goto_2

    :sswitch_a
    const-string v9, "lockscreen_notifications"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8b

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v9, "noti_card_seekbar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x23

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v9, "top_level_apps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x7d

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v9, "top_level_display_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x50

    goto/16 :goto_2

    :sswitch_e
    const-string v9, "international_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xaf

    goto/16 :goto_2

    :sswitch_f
    const-string v9, "double_press_open_apps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x5c

    goto/16 :goto_2

    :sswitch_10
    const-string v9, "function_key_long_press"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x5d

    goto/16 :goto_2

    :sswitch_11
    const-string v9, "blue_light_filter_user_schedule"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x40

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v9, "notification_details"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x6a

    goto/16 :goto_2

    :sswitch_13
    const-string v9, "change_language_shortcut"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x66

    goto/16 :goto_2

    :sswitch_14
    const-string v9, "homescreen_noti_preview"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x26

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v9, "volume_key_control"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x33

    goto/16 :goto_2

    :sswitch_16
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x86

    goto/16 :goto_2

    :sswitch_17
    const-string v9, "location_time_zone_detection"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x91

    goto/16 :goto_2

    :sswitch_18
    const-string/jumbo v9, "xcover_top_short_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x57

    goto/16 :goto_2

    :sswitch_19
    const-string v9, "backup_category"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x83

    goto/16 :goto_2

    :sswitch_1a
    const-string v9, "international_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb0

    goto/16 :goto_2

    :sswitch_1b
    const-string v9, "auto_wifi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc

    goto/16 :goto_2

    :sswitch_1c
    const-string/jumbo v9, "notification_vibration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x6b

    goto/16 :goto_2

    :sswitch_1d
    const-string v9, "disableVoiceInput"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x9e

    goto/16 :goto_2

    :sswitch_1e
    const-string v9, "double_press_quick_launch_camera"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x61

    goto/16 :goto_2

    :sswitch_1f
    const-string v9, "lock_screen_menu_notifications"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x22

    goto/16 :goto_2

    :sswitch_20
    const-string/jumbo v9, "telephonyui_simcard_manager_general_settings_sim2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb8

    goto/16 :goto_2

    :sswitch_21
    const-string/jumbo v9, "telephonyui_simcard_manager_general_settings_sim1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xbc

    goto/16 :goto_2

    :sswitch_22
    const-string/jumbo v9, "telephonyui_simcard_manager_general_settings_esim"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xbd

    goto/16 :goto_2

    :sswitch_23
    const-string v9, "long_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x55

    goto/16 :goto_2

    :sswitch_24
    const-string v9, "flow_pointer_from_where_dex"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc6

    goto/16 :goto_2

    :sswitch_25
    const-string v9, "function_key_double_press"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x5a

    goto/16 :goto_2

    :sswitch_26
    const-string v9, "disable_connectivity_check"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc3

    goto/16 :goto_2

    :sswitch_27
    const-string/jumbo v9, "restriction_app_suggestion"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc1

    goto/16 :goto_2

    :sswitch_28
    const-string v9, "charging_sounds"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x2b

    goto/16 :goto_2

    :sswitch_29
    const-string/jumbo v9, "wifi_adps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xd

    goto/16 :goto_2

    :sswitch_2a
    const-string/jumbo v9, "telephonyui_simcard_manager_data_switching_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xbf

    goto/16 :goto_2

    :sswitch_2b
    const-string v9, "all_notification"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x46

    goto/16 :goto_2

    :sswitch_2c
    const-string v9, "default_autofill"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x81

    goto/16 :goto_2

    :sswitch_2d
    const-string v9, "button_order"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x1a

    goto/16 :goto_2

    :sswitch_2e
    const-string/jumbo v9, "where_to_show"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x1d

    goto/16 :goto_2

    :sswitch_2f
    const-string v9, "dex_disable_file_copy_from_mobile"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xcd

    goto/16 :goto_2

    :sswitch_30
    const-string v9, "blue_light_filter_turn_on_now"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x3d

    goto/16 :goto_2

    :sswitch_31
    const-string v9, "key_show_keyboard_button"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x37

    goto/16 :goto_2

    :sswitch_32
    const-string/jumbo v9, "noti_inverse_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x24

    goto/16 :goto_2

    :sswitch_33
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x6

    goto/16 :goto_2

    :sswitch_34
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4a

    goto/16 :goto_2

    :sswitch_35
    const-string/jumbo v9, "notification_content"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8c

    goto/16 :goto_2

    :sswitch_36
    const-string v9, "auto_brightness_no_pac"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x11

    goto/16 :goto_2

    :sswitch_37
    const-string v9, "app_config_disable_dex_labs_button"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xca

    goto/16 :goto_2

    :sswitch_38
    const-string v9, "eye_comfort_set_schedule"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x6e

    goto/16 :goto_2

    :sswitch_39
    const-string/jumbo v9, "tts_default_pitch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x39

    goto/16 :goto_2

    :sswitch_3a
    const-string v9, "blue_light_filter_on_time"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x41

    goto/16 :goto_2

    :sswitch_3b
    const-string/jumbo v9, "sec_high_refresh_rate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8d

    goto/16 :goto_2

    :sswitch_3c
    const-string/jumbo v9, "resolution_user_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xcc

    goto/16 :goto_2

    :sswitch_3d
    const-string v9, "app_config_hidden"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc8

    goto/16 :goto_2

    :sswitch_3e
    const-string/jumbo v9, "top_level_location_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4e

    goto/16 :goto_2

    :sswitch_3f
    const-string v9, "gesture_detailed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x74

    goto/16 :goto_2

    :sswitch_40
    const-string/jumbo v9, "top_level_wifi_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4b

    goto/16 :goto_2

    :sswitch_41
    const-string/jumbo v9, "screen_timeout"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x18

    goto/16 :goto_2

    :sswitch_42
    const-string/jumbo v9, "private_dns_settings_specifier"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x95

    goto/16 :goto_2

    :sswitch_43
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8

    goto/16 :goto_2

    :sswitch_44
    const-string/jumbo v9, "notification_2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x30

    goto/16 :goto_2

    :sswitch_45
    const-string v9, "category_samsungservices"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x82

    goto/16 :goto_2

    :sswitch_46
    const-string/jumbo v9, "wifi_hs20_list"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x49

    goto/16 :goto_2

    :sswitch_47
    const-string v9, "accessibility_installed_services"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xab

    goto/16 :goto_2

    :sswitch_48
    const-string/jumbo v9, "phone_vibration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x35

    goto/16 :goto_2

    :sswitch_49
    const-string v9, "dashboard_tile_pref_com.samsung.android.app.telephonyui.netsettings.ui.NetSettingsActivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x52

    goto/16 :goto_2

    :sswitch_4a
    const-string v9, "device_name_edit"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x89

    goto/16 :goto_2

    :sswitch_4b
    const-string v9, "eye_comfort_adaptive_mode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x6c

    goto/16 :goto_2

    :sswitch_4c
    const-string/jumbo v9, "notification"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x2f

    goto/16 :goto_2

    :sswitch_4d
    const-string v9, "lift_to_wake"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x92

    goto/16 :goto_2

    :sswitch_4e
    const-string v9, "disableHWRInput"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa0

    goto/16 :goto_2

    :sswitch_4f
    const-string v9, "app_config_disable_exit_dex_button"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xcb

    goto/16 :goto_2

    :sswitch_50
    const-string v9, "auto_brightness"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x10

    goto/16 :goto_2

    :sswitch_51
    const-string/jumbo v9, "show_notification_icons"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x29

    goto/16 :goto_2

    :sswitch_52
    const-string/jumbo v9, "vibrate_when_ringing"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x36

    goto/16 :goto_2

    :sswitch_53
    const-string/jumbo v9, "screenshots_and_screen_recorder"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v1

    goto/16 :goto_2

    :sswitch_54
    const-string v9, "SETTINGS_USE_TOOLBAR"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x96

    goto/16 :goto_2

    :sswitch_55
    const-string/jumbo v9, "picture_in_picture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x65

    goto/16 :goto_2

    :sswitch_56
    const-string v9, "doemstic_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xae

    goto/16 :goto_2

    :sswitch_57
    const-string v9, "disableGifKeyboard"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x9d

    goto/16 :goto_2

    :sswitch_58
    const-string v9, "eye_comfort_seekbar_color_temperature"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x6f

    goto/16 :goto_2

    :sswitch_59
    const-string/jumbo v9, "spen_detachment_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x76

    goto/16 :goto_2

    :sswitch_5a
    const-string v9, "accessibility_power_and_volume_up_keys"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa9

    goto/16 :goto_2

    :sswitch_5b
    const-string/jumbo v9, "sec_font_size"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x16

    goto/16 :goto_2

    :sswitch_5c
    const-string/jumbo v9, "phone_language"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x7e

    goto/16 :goto_2

    :sswitch_5d
    const-string/jumbo v9, "screen_off_pocket"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x14

    goto/16 :goto_2

    :sswitch_5e
    const-string/jumbo v9, "navigation_Bar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x43

    goto/16 :goto_2

    :sswitch_5f
    const-string v9, "disableClipboard"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa1

    goto/16 :goto_2

    :sswitch_60
    const-string/jumbo v9, "skip_welcome_screen"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc4

    goto/16 :goto_2

    :sswitch_61
    const-string v9, "increse_touch_sensetivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x72

    goto/16 :goto_2

    :sswitch_62
    const-string v9, "SETTINGS_PHYSICAL_KEYBOARD_TOOLBAR"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x97

    goto/16 :goto_2

    :sswitch_63
    const-string/jumbo v9, "telephonyui_simcard_manager_call_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xba

    goto/16 :goto_2

    :sswitch_64
    const-string v9, "blue_light_filter_seekbar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x3c

    goto/16 :goto_2

    :sswitch_65
    const-string v9, "disablePrediction"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x99

    goto/16 :goto_2

    :sswitch_66
    const-string/jumbo v9, "verizon_dedicated_ptt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x53

    goto/16 :goto_2

    :sswitch_67
    const-string/jumbo v9, "telephonyui_international_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb1

    goto/16 :goto_2

    :sswitch_68
    const-string v9, "dial_pad_tones"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x2c

    goto/16 :goto_2

    :sswitch_69
    const-string v9, "function_key_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x60

    goto/16 :goto_2

    :sswitch_6a
    const-string v9, "bluetooth_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x79

    goto/16 :goto_2

    :sswitch_6b
    const-string v9, "lock_screen_dualclock"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x1b

    goto/16 :goto_2

    :sswitch_6c
    const-string/jumbo v9, "tts_engine_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x38

    goto/16 :goto_2

    :sswitch_6d
    const-string/jumbo v9, "proxy_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x77

    goto/16 :goto_2

    :sswitch_6e
    const-string v9, "blue_light_filter"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x15

    goto/16 :goto_2

    :sswitch_6f
    const-string v9, "MobileWIPS"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xf

    goto/16 :goto_2

    :sswitch_70
    const-string/jumbo v9, "wifi_hs20_profile"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xe

    goto/16 :goto_2

    :sswitch_71
    const-string/jumbo v9, "notification_badging"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x25

    goto/16 :goto_2

    :sswitch_72
    const-string/jumbo v9, "smart_alert"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x2

    goto/16 :goto_2

    :sswitch_73
    const-string v9, "ds_notification_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x48

    goto/16 :goto_2

    :sswitch_74
    const-string v9, "blue_light_filter_off_time"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x42

    goto/16 :goto_2

    :sswitch_75
    const-string/jumbo v9, "telephonyui_international_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb5

    goto/16 :goto_2

    :sswitch_76
    const-string/jumbo v9, "telephonyui_simcard_manager_text_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xbb

    goto/16 :goto_2

    :sswitch_77
    const-string/jumbo v9, "telephonyui_simcard_manager_add_esim_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xbe

    goto/16 :goto_2

    :sswitch_78
    const-string v9, "disableSticker"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x9c

    goto/16 :goto_2

    :sswitch_79
    const-string v9, "app_icon_number"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x27

    goto/16 :goto_2

    :sswitch_7a
    const-string/jumbo v9, "xcover_top_key_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x5f

    goto/16 :goto_2

    :sswitch_7b
    const-string v9, "function_key_double_press_type"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x5b

    goto/16 :goto_2

    :sswitch_7c
    const-string/jumbo v9, "secbrightness"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8e

    goto/16 :goto_2

    :sswitch_7d
    const-string/jumbo v9, "wificonfiguration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc2

    goto/16 :goto_2

    :sswitch_7e
    const-string v9, "app_config_disable_ctx_menu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc9

    goto/16 :goto_2

    :sswitch_7f
    const-string/jumbo v9, "wifi_poor_network_detection"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa

    goto/16 :goto_2

    :sswitch_80
    const-string/jumbo v9, "task_bar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x93

    goto/16 :goto_2

    :sswitch_81
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x87

    goto/16 :goto_2

    :sswitch_82
    const-string/jumbo v9, "wifi_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x78

    goto/16 :goto_2

    :sswitch_83
    const-string/jumbo v9, "wifi_switch_for_individual_apps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb

    goto/16 :goto_2

    :sswitch_84
    const-string/jumbo v9, "xcover_top_key_on_lockscreen_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x59

    goto/16 :goto_2

    :sswitch_85
    const-string/jumbo v9, "recent_notifications"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x45

    goto/16 :goto_2

    :sswitch_86
    const-string v9, "disableTextEditPanel"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa3

    goto/16 :goto_2

    :sswitch_87
    const-string/jumbo v9, "show_virtual_keyboard_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x80

    goto/16 :goto_2

    :sswitch_88
    const-string/jumbo v9, "short_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x54

    goto/16 :goto_2

    :sswitch_89
    const-string v9, "accessibility_flash_notificaitons"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xaa

    goto/16 :goto_2

    :sswitch_8a
    const-string/jumbo v9, "reset_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x7f

    goto/16 :goto_2

    :sswitch_8b
    const-string v9, "blue_light_filter_turn_on_as_scheduled"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x3e

    goto/16 :goto_2

    :sswitch_8c
    const-string v9, "disableToolbarSpotify"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa4

    goto/16 :goto_2

    :sswitch_8d
    const-string/jumbo v9, "telephonyui_network_operator_menu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb7

    goto/16 :goto_2

    :sswitch_8e
    const-string v9, "flow_pointer_is_on_dex"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc5

    goto/16 :goto_2

    :sswitch_8f
    const-string v9, "disableAllToolbarItems"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x9a

    goto/16 :goto_2

    :sswitch_90
    const-string/jumbo v9, "sync_vibration_with_ringtone"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x88

    goto/16 :goto_2

    :sswitch_91
    const-string/jumbo v9, "notification_vibration_pattern"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x71

    goto/16 :goto_2

    :sswitch_92
    const-string/jumbo v9, "telephonyui_verizon_data_on_off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb2

    goto/16 :goto_2

    :sswitch_93
    const-string v9, "disableSetting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x98

    goto/16 :goto_2

    :sswitch_94
    const-string v9, "eye_comfort_custom_mode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x6d

    goto/16 :goto_2

    :sswitch_95
    const-string v9, "keyboard_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x2d

    goto/16 :goto_2

    :sswitch_96
    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x5

    goto/16 :goto_2

    :sswitch_97
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x7

    goto/16 :goto_2

    :sswitch_98
    const-string v9, "double_press_open_bixby"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x62

    goto/16 :goto_2

    :sswitch_99
    const-string/jumbo v9, "top_level_lockscreen"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x7b

    goto/16 :goto_2

    :sswitch_9a
    const-string v9, "homecity_timezone"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x1c

    goto/16 :goto_2

    :sswitch_9b
    const-string/jumbo v9, "phone_vibration_pattern"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x70

    goto/16 :goto_2

    :sswitch_9c
    const-string v9, "double_tap_to_sleep"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x90

    goto/16 :goto_2

    :sswitch_9d
    const-string v9, "app_icon_dot"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x44

    goto/16 :goto_2

    :sswitch_9e
    const-string v9, "app_config_skip_overscan"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc7

    goto/16 :goto_2

    :sswitch_9f
    const-string/jumbo v9, "toggle_airplane"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x7a

    goto/16 :goto_2

    :sswitch_a0
    const-string v9, "disableModes"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa2

    goto/16 :goto_2

    :sswitch_a1
    const-string/jumbo v9, "top_level_sounds_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4f

    goto/16 :goto_2

    :sswitch_a2
    const-string/jumbo v9, "set_visibility"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x20

    goto/16 :goto_2

    :sswitch_a3
    const-string/jumbo v9, "outdoor_mode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x13

    goto/16 :goto_2

    :sswitch_a4
    const-string/jumbo v9, "tts_default_rate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x3a

    goto/16 :goto_2

    :sswitch_a5
    const-string/jumbo v9, "top_level_bluetooth_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4c

    goto/16 :goto_2

    :sswitch_a6
    const-string v9, "disableToolbarNetflix"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa6

    goto/16 :goto_2

    :sswitch_a7
    const-string/jumbo v9, "vibrate_on_touch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x34

    goto/16 :goto_2

    :sswitch_a8
    const-string v9, "dex_disable_file_copy_from_pc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xce

    goto/16 :goto_2

    :sswitch_a9
    const-string v9, "android_beam_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x3b

    goto/16 :goto_2

    :sswitch_aa
    const-string v9, "current_input_method"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x67

    goto/16 :goto_2

    :sswitch_ab
    const-string/jumbo v9, "palm_swipe_to_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    goto/16 :goto_2

    :sswitch_ac
    const-string v9, "long_press_power_off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x64

    goto/16 :goto_2

    :sswitch_ad
    const-string/jumbo v9, "telephonyui_simcard_manager_more_settings_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc0

    goto/16 :goto_2

    :sswitch_ae
    const-string v9, "disableLiveMessage"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x9f

    goto/16 :goto_2

    :sswitch_af
    const-string v9, "blue_light_filter_auto_schedule"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x3f

    goto/16 :goto_2

    :sswitch_b0
    const-string v9, "gesture_preview"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x73

    goto/16 :goto_2

    :sswitch_b1
    const-string/jumbo v9, "xcover_key_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x5e

    goto/16 :goto_2

    :sswitch_b2
    const-string/jumbo v9, "mobile_network_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8a

    goto/16 :goto_2

    :sswitch_b3
    const-string/jumbo v9, "show_password"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x2a

    goto/16 :goto_2

    :sswitch_b4
    const-string v9, "active_key_on_lockscreen_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x56

    goto/16 :goto_2

    :sswitch_b5
    const-string/jumbo v9, "sec_font_style"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x17

    goto/16 :goto_2

    :sswitch_b6
    const-string v9, "double_tab_to_wake_up"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8f

    goto/16 :goto_2

    :sswitch_b7
    const-string/jumbo v9, "noti_view_style"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x21

    goto/16 :goto_2

    :sswitch_b8
    const-string/jumbo v9, "sendBroadcast"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xd0

    goto/16 :goto_2

    :sswitch_b9
    const-string v9, "dashboard_tile_pref_com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x7c

    goto/16 :goto_2

    :sswitch_ba
    const-string/jumbo v9, "top_level_airplane_mode_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4d

    goto/16 :goto_2

    :sswitch_bb
    const-string v9, "key_notification_icons_on_status_bar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x68

    goto/16 :goto_2

    :sswitch_bc
    const-string/jumbo v9, "notification_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x47

    goto/16 :goto_2

    :sswitch_bd
    const-string/jumbo v9, "telephonyui_domestic_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb3

    goto/16 :goto_2

    :sswitch_be
    const-string/jumbo v9, "touch_sounds"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x32

    goto/16 :goto_2

    :sswitch_bf
    const-string/jumbo v9, "startActivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xcf

    goto/16 :goto_2

    :sswitch_c0
    const-string v9, "external_storage_transfer"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x84

    goto/16 :goto_2

    :sswitch_c1
    const-string/jumbo v9, "private_dns_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x94

    goto/16 :goto_2

    :sswitch_c2
    const-string v9, "domestic_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xad

    goto/16 :goto_2

    :sswitch_c3
    const-string v9, "facewidget_where_to_show"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x1f

    goto/16 :goto_2

    :sswitch_c4
    const-string v9, "adaptive_brightness_no_ls"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x12

    goto/16 :goto_2

    :sswitch_c5
    const-string v9, "disableToolbarMelon"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa7

    goto/16 :goto_2

    :sswitch_c6
    const-string/jumbo v9, "telephonyui_access_point_names_menu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xb6

    goto/16 :goto_2

    :sswitch_c7
    const-string/jumbo v9, "top_level_accessibility"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x51

    goto/16 :goto_2

    :sswitch_c8
    const-string/jumbo v9, "notification_icons_only"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x69

    goto :goto_2

    :sswitch_c9
    const-string/jumbo v9, "show_battery_percent"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x28

    goto :goto_2

    :sswitch_ca
    const-string/jumbo v9, "onehand_operation_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x75

    goto :goto_2

    :sswitch_cb
    const-string v9, "accessibility_advanced_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xa8

    goto :goto_2

    :sswitch_cc
    const-string v9, "disableEmoticonInput"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x9b

    goto :goto_2

    :sswitch_cd
    const-string/jumbo v9, "sec_screen_size"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x19

    goto :goto_2

    :sswitch_ce
    const-string/jumbo v9, "verizon_data_on_off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xac

    goto :goto_2

    :sswitch_cf
    const-string v9, "keyboard_vibration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x2e

    goto :goto_2

    :sswitch_d0
    const-string/jumbo v9, "screen_locking_sounds"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_a

    const/16 v9, 0x31

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v9, -0x1

    :goto_2
    const-string v10, "0"

    const-string v11, "1"

    if-eqz v9, :cond_26

    const/4 v12, 0x1

    if-eq v9, v12, :cond_25

    const/4 v12, 0x2

    if-eq v9, v12, :cond_24

    const/4 v12, 0x3

    if-eq v9, v12, :cond_23

    if-eq v9, v1, :cond_22

    const/4 v12, 0x5

    if-eq v9, v12, :cond_21

    const-string v12, "3"

    const-string v13, "2"

    const/4 v14, 0x6

    if-eq v9, v14, :cond_20

    const/4 v14, 0x7

    if-eq v9, v14, :cond_1f

    const/16 v14, 0x36

    if-eq v9, v14, :cond_1e

    const/16 v14, 0x37

    if-eq v9, v14, :cond_1d

    const/16 v14, 0x39

    if-eq v9, v14, :cond_1b

    const/16 v14, 0x3a

    if-eq v9, v14, :cond_19

    const/16 v14, 0x49

    if-eq v9, v14, :cond_18

    const/16 v14, 0x4a

    if-eq v9, v14, :cond_17

    const/16 v14, 0x68

    if-eq v9, v14, :cond_16

    const/16 v14, 0x69

    if-eq v9, v14, :cond_15

    const/16 v14, 0x72

    if-eq v9, v14, :cond_14

    const/16 v14, 0x73

    if-eq v9, v14, :cond_13

    const-string v14, "false"

    const-string/jumbo v1, "true"

    sparse-switch v9, :sswitch_data_1

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    goto/16 :goto_8

    .line 29
    :pswitch_0
    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 30
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 31
    :pswitch_1
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 32
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 33
    :pswitch_2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 34
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 35
    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 36
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    :cond_b
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 38
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 39
    :pswitch_4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 40
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 41
    :pswitch_5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 42
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 43
    :pswitch_6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 44
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 45
    :pswitch_7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 46
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 47
    :pswitch_8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 48
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 49
    :pswitch_9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 50
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 51
    :pswitch_a
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 52
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 53
    :pswitch_b
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 54
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 55
    :pswitch_c
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 56
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 57
    :pswitch_d
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 58
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 59
    :pswitch_e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 60
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 61
    :pswitch_f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 62
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 63
    :pswitch_10
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 64
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 65
    :pswitch_11
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 66
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 67
    :pswitch_12
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_c

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x4b

    if-le v1, v7, :cond_27

    .line 68
    :cond_c
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 69
    :pswitch_13
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 70
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 71
    :pswitch_14
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 72
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 73
    :pswitch_15
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 74
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 75
    :pswitch_16
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 76
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 77
    :pswitch_17
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 78
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 79
    :pswitch_18
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 80
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 81
    :pswitch_19
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_d

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x4

    if-le v1, v7, :cond_27

    .line 82
    :cond_d
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 83
    :sswitch_d1
    const-string v1, "UWQHD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "WQXGA"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "WQHD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "UWFHD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "WUXGA"

    .line 84
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "FHD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "HD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 85
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 86
    :sswitch_d2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 87
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 88
    :sswitch_d3
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 89
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 90
    :sswitch_d4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 91
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_preferred_mode_during_calling"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_3
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 96
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "auto brightness level fail :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 97
    :goto_4
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw v1

    .line 99
    :sswitch_d5
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 100
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 101
    :sswitch_d6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 102
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 103
    :sswitch_d7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 104
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 105
    :sswitch_d8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 106
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 107
    :sswitch_d9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 108
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 109
    :sswitch_da
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 110
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 111
    :sswitch_db
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 112
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 113
    :sswitch_dc
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 114
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 115
    :sswitch_dd
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 116
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 117
    :sswitch_de
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 118
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 119
    :sswitch_df
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 120
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 121
    :sswitch_e0
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 122
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 123
    :sswitch_e1
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 124
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 125
    :sswitch_e2
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "hostname"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "opportunistic"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 126
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 127
    :sswitch_e3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportTaskBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 128
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    :cond_f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 130
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 131
    :sswitch_e4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 132
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 133
    :sswitch_e5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 134
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 135
    :sswitch_e6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 136
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 137
    :sswitch_e7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 138
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 139
    :sswitch_e8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 140
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 141
    :sswitch_e9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 142
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 143
    :sswitch_ea
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 144
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 145
    :sswitch_eb
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 146
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 147
    :sswitch_ec
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 148
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 149
    :sswitch_ed
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 150
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 151
    :sswitch_ee
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 152
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 153
    :sswitch_ef
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 154
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 155
    :sswitch_f0
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 156
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 157
    :sswitch_f1
    const-string v1, "7"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "6"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "5"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 158
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 159
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 160
    :sswitch_f2
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 161
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 162
    :sswitch_f3
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 163
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 164
    :sswitch_f4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 165
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 166
    :sswitch_f5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 167
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 168
    :sswitch_f6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 169
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 170
    :sswitch_f7
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportPocketMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 171
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    :cond_10
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 173
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 174
    :sswitch_f8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 175
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 176
    :sswitch_f9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 177
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 178
    :sswitch_fa
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 179
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 180
    :sswitch_fb
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 181
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    :cond_11
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 183
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    :cond_12
    const-string v1, "level"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 186
    :try_start_6
    const-string v1, "level"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_brightness"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    :goto_5
    :try_start_7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 189
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auto brightness level fail :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 190
    :goto_6
    :try_start_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw v1

    .line 192
    :sswitch_fc
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 193
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 194
    :sswitch_fd
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 195
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 196
    :sswitch_fe
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 197
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 198
    :sswitch_ff
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 199
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 200
    :sswitch_100
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 201
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 202
    :sswitch_101
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 203
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 204
    :sswitch_102
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 205
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 206
    :sswitch_103
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 207
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 208
    :cond_13
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 209
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 210
    :cond_14
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 211
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 212
    :cond_15
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 213
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 214
    :cond_16
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 215
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 216
    :cond_17
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 217
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 218
    :cond_18
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 219
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 220
    :cond_19
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0xa

    if-lt v1, v7, :cond_1a

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x258

    if-le v1, v7, :cond_27

    .line 221
    :cond_1a
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 222
    :cond_1b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x19

    if-lt v1, v7, :cond_1c

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x190

    if-le v1, v7, :cond_27

    .line 223
    :cond_1c
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 224
    :cond_1d
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 225
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 226
    :cond_1e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 227
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 228
    :cond_1f
    :sswitch_104
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 229
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 230
    :cond_20
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 231
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 232
    :cond_21
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 233
    :cond_22
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 234
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 235
    :cond_23
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 236
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 237
    :cond_24
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 238
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 239
    :cond_25
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 240
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 241
    :cond_26
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 242
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_8

    .line 243
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fail to validate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_8
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_28
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f5cb021 -> :sswitch_d0
        -0x787013c6 -> :sswitch_cf
        -0x72e8c808 -> :sswitch_ce
        -0x70e89afa -> :sswitch_cd
        -0x70cc2d24 -> :sswitch_cc
        -0x705f4111 -> :sswitch_cb
        -0x6bafcb5b -> :sswitch_ca
        -0x6b770d2f -> :sswitch_c9
        -0x6b1bfe7b -> :sswitch_c8
        -0x6a1df617 -> :sswitch_c7
        -0x69a85713 -> :sswitch_c6
        -0x67379d00 -> :sswitch_c5
        -0x65712a00 -> :sswitch_c4
        -0x640f2df5 -> :sswitch_c3
        -0x63de4f3f -> :sswitch_c2
        -0x62d0484b -> :sswitch_c1
        -0x62ae10dd -> :sswitch_c0
        -0x5b20666f -> :sswitch_bf
        -0x58d55dbc -> :sswitch_be
        -0x58cef052 -> :sswitch_bd
        -0x588de745 -> :sswitch_bc
        -0x574ec733 -> :sswitch_bb
        -0x56fd1517 -> :sswitch_ba
        -0x55af4883 -> :sswitch_b9
        -0x5424cde7 -> :sswitch_b8
        -0x53046480 -> :sswitch_b7
        -0x5293f996 -> :sswitch_b6
        -0x5270bd91 -> :sswitch_b5
        -0x503c9082 -> :sswitch_b4
        -0x4fbce263 -> :sswitch_b3
        -0x4f5feeef -> :sswitch_b2
        -0x4ec70bfd -> :sswitch_b1
        -0x4d0a712e -> :sswitch_b0
        -0x4ccd4ad2 -> :sswitch_af
        -0x4bdf968d -> :sswitch_ae
        -0x4b81ee16 -> :sswitch_ad
        -0x4b0c998a -> :sswitch_ac
        -0x4a8376ec -> :sswitch_ab
        -0x4a34e804 -> :sswitch_aa
        -0x4969d71d -> :sswitch_a9
        -0x485b6dfe -> :sswitch_a8
        -0x47f26a51 -> :sswitch_a7
        -0x42717761 -> :sswitch_a6
        -0x4261e015 -> :sswitch_a5
        -0x3ffd6516 -> :sswitch_a4
        -0x3f046bfa -> :sswitch_a3
        -0x3e9934f1 -> :sswitch_a2
        -0x3e8fe055 -> :sswitch_a1
        -0x3bc386d8 -> :sswitch_a0
        -0x3bb86c23 -> :sswitch_9f
        -0x3b2c12ce -> :sswitch_9e
        -0x3812671f -> :sswitch_9d
        -0x37d9a523 -> :sswitch_9c
        -0x354445ae -> :sswitch_9b
        -0x314d8a32 -> :sswitch_9a
        -0x313a5164 -> :sswitch_99
        -0x2f80f0e3 -> :sswitch_98
        -0x2f73aab0 -> :sswitch_97
        -0x2ea4a2d7 -> :sswitch_96
        -0x2d772949 -> :sswitch_95
        -0x2bff1350 -> :sswitch_94
        -0x2bc011b8 -> :sswitch_93
        -0x2b692c1b -> :sswitch_92
        -0x2b0fff71 -> :sswitch_91
        -0x2ab92996 -> :sswitch_90
        -0x29c9d2c2 -> :sswitch_8f
        -0x28f70de7 -> :sswitch_8e
        -0x28897b8a -> :sswitch_8d
        -0x276d2439 -> :sswitch_8c
        -0x2487d469 -> :sswitch_8b
        -0x22cd2235 -> :sswitch_8a
        -0x2171b40e -> :sswitch_89
        -0x1fbd53a0 -> :sswitch_88
        -0x1dd1a9ea -> :sswitch_87
        -0x1d2bba9b -> :sswitch_86
        -0x1d090dfc -> :sswitch_85
        -0x1b8d2d73 -> :sswitch_84
        -0x1ad7d13f -> :sswitch_83
        -0x191499f3 -> :sswitch_82
        -0x189833bc -> :sswitch_81
        -0x186d69a7 -> :sswitch_80
        -0x1827bcbf -> :sswitch_7f
        -0x17cba8d3 -> :sswitch_7e
        -0x179e4fff -> :sswitch_7d
        -0x16fa889e -> :sswitch_7c
        -0x159b1c23 -> :sswitch_7b
        -0x14e8d153 -> :sswitch_7a
        -0x142aff4f -> :sswitch_79
        -0x12ca16cb -> :sswitch_78
        -0x127d2833 -> :sswitch_77
        -0x122bc0d0 -> :sswitch_76
        -0x114d657c -> :sswitch_75
        -0xe56d6ca -> :sswitch_74
        -0xce06d95 -> :sswitch_73
        -0x9d1b89a -> :sswitch_72
        -0x8d18fb4 -> :sswitch_71
        -0x7ffc723 -> :sswitch_70
        -0x7980be9 -> :sswitch_6f
        -0x76e157a -> :sswitch_6e
        -0x5c6012c -> :sswitch_6d
        -0x57f5054 -> :sswitch_6c
        -0x421126d -> :sswitch_6b
        -0x38db16c -> :sswitch_6a
        -0x2f3ad77 -> :sswitch_69
        -0x2aea77a -> :sswitch_68
        0x6a1594 -> :sswitch_67
        0xb5ce54 -> :sswitch_66
        0x1268597 -> :sswitch_65
        0x2f125e2 -> :sswitch_64
        0x319915f -> :sswitch_63
        0x59b944f -> :sswitch_62
        0x91483ff -> :sswitch_61
        0x9c1eaa9 -> :sswitch_60
        0x9c49f8e -> :sswitch_5f
        0xa371348 -> :sswitch_5e
        0xa801419 -> :sswitch_5d
        0xcbfc309 -> :sswitch_5c
        0xddb2b83 -> :sswitch_5b
        0xea853a6 -> :sswitch_5a
        0xebf6e1a -> :sswitch_59
        0x1089c6b3 -> :sswitch_58
        0x114887c3 -> :sswitch_57
        0x12bde081 -> :sswitch_56
        0x14a5a9c5 -> :sswitch_55
        0x14f49e67 -> :sswitch_54
        0x14fee157 -> :sswitch_53
        0x1528b87d -> :sswitch_52
        0x1642ab48 -> :sswitch_51
        0x176690e1 -> :sswitch_50
        0x18f662a5 -> :sswitch_4f
        0x1c19474f -> :sswitch_4e
        0x1cc32bb4 -> :sswitch_4d
        0x237a88eb -> :sswitch_4c
        0x2668f90b -> :sswitch_4b
        0x29373095 -> :sswitch_4a
        0x29de8e28 -> :sswitch_49
        0x2bd7b901 -> :sswitch_48
        0x2d890a14 -> :sswitch_47
        0x2dee6dea -> :sswitch_46
        0x2eb98d17 -> :sswitch_45
        0x2efc05de -> :sswitch_44
        0x306993b7 -> :sswitch_43
        0x322891b4 -> :sswitch_42
        0x3343888e -> :sswitch_41
        0x35b5df3a -> :sswitch_40
        0x35ee0ae6 -> :sswitch_3f
        0x3780cd1a -> :sswitch_3e
        0x383dc7a9 -> :sswitch_3d
        0x38730e8f -> :sswitch_3c
        0x39abdad3 -> :sswitch_3b
        0x3e637c74 -> :sswitch_3a
        0x40383676 -> :sswitch_39
        0x4104aeb5 -> :sswitch_38
        0x424d656d -> :sswitch_37
        0x436e0232 -> :sswitch_36
        0x448b4925 -> :sswitch_35
        0x470f223a -> :sswitch_34
        0x47a8296d -> :sswitch_33
        0x47b87a85 -> :sswitch_32
        0x4857e328 -> :sswitch_31
        0x4a05f63f -> :sswitch_30
        0x4ae07531 -> :sswitch_2f
        0x4cbee6e9 -> :sswitch_2e
        0x4cce6401 -> :sswitch_2d
        0x4fb137f0 -> :sswitch_2c
        0x5080e6c9 -> :sswitch_2b
        0x52e83744 -> :sswitch_2a
        0x537bcc50 -> :sswitch_29
        0x55d982d2 -> :sswitch_28
        0x57037fb5 -> :sswitch_27
        0x5a047737 -> :sswitch_26
        0x5ae319bc -> :sswitch_25
        0x5bbc62dd -> :sswitch_24
        0x5bc56e60 -> :sswitch_23
        0x5bdd179a -> :sswitch_22
        0x5be34f82 -> :sswitch_21
        0x5be34f83 -> :sswitch_20
        0x5d584ea7 -> :sswitch_1f
        0x5ed3e575 -> :sswitch_1e
        0x606bf2c0 -> :sswitch_1d
        0x62408c3e -> :sswitch_1c
        0x6306bfa5 -> :sswitch_1b
        0x63278621 -> :sswitch_1a
        0x6402d2db -> :sswitch_19
        0x642f4f76 -> :sswitch_18
        0x650f09da -> :sswitch_17
        0x6568c319 -> :sswitch_16
        0x65f349d8 -> :sswitch_15
        0x662ee633 -> :sswitch_14
        0x663b2e7e -> :sswitch_13
        0x68ad06ee -> :sswitch_12
        0x6981c692 -> :sswitch_11
        0x69bd25e7 -> :sswitch_10
        0x69d231dd -> :sswitch_f
        0x6c6aad51 -> :sswitch_e
        0x6dc86397 -> :sswitch_d
        0x6e355777 -> :sswitch_c
        0x6f216615 -> :sswitch_b
        0x705a7c00 -> :sswitch_a
        0x72a6d836 -> :sswitch_9
        0x734e5d87 -> :sswitch_8
        0x74c2f437 -> :sswitch_7
        0x78c6352e -> :sswitch_6
        0x78cd108a -> :sswitch_5
        0x7b5d2ad0 -> :sswitch_4
        0x7c6b1493 -> :sswitch_3
        0x7ceb0fac -> :sswitch_2
        0x7e6be5f0 -> :sswitch_1
        0x7fc6dff8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_104
        0x8 -> :sswitch_103
        0x9 -> :sswitch_102
        0xa -> :sswitch_101
        0xb -> :sswitch_100
        0xc -> :sswitch_ff
        0xd -> :sswitch_fe
        0xe -> :sswitch_fd
        0xf -> :sswitch_fc
        0x10 -> :sswitch_fb
        0x11 -> :sswitch_fa
        0x12 -> :sswitch_f9
        0x13 -> :sswitch_f8
        0x14 -> :sswitch_f7
        0x15 -> :sswitch_f6
        0x1d -> :sswitch_f5
        0x53 -> :sswitch_f4
        0x56 -> :sswitch_f3
        0x5d -> :sswitch_f2
        0x66 -> :sswitch_f1
        0x75 -> :sswitch_f0
        0x76 -> :sswitch_ef
        0x80 -> :sswitch_ee
        0x86 -> :sswitch_ed
        0x87 -> :sswitch_ec
        0x88 -> :sswitch_eb
        0x8b -> :sswitch_ea
        0x8c -> :sswitch_e9
        0x8d -> :sswitch_e8
        0x8f -> :sswitch_e7
        0x90 -> :sswitch_e6
        0x91 -> :sswitch_e5
        0x92 -> :sswitch_e4
        0x93 -> :sswitch_e3
        0x94 -> :sswitch_e2
        0x96 -> :sswitch_e1
        0x97 -> :sswitch_e0
        0xac -> :sswitch_df
        0xad -> :sswitch_de
        0xae -> :sswitch_dd
        0xaf -> :sswitch_dc
        0xb0 -> :sswitch_db
        0xb1 -> :sswitch_da
        0xb2 -> :sswitch_d9
        0xb3 -> :sswitch_d8
        0xb4 -> :sswitch_d7
        0xb5 -> :sswitch_d6
        0xbd -> :sswitch_d5
        0xbf -> :sswitch_d4
        0xc1 -> :sswitch_d3
        0xc3 -> :sswitch_d2
        0xcc -> :sswitch_d1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x59
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
