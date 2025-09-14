.class public final Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final adjustBrightnessFactor:F

.field public final advertiseIsEnabled:Z

.field public final deferFullBackup:Z

.field public final deferKeyValueBackup:Z

.field public final disableAnimation:Z

.field public final disableAod:Z

.field public final disableLaunchBoost:Z

.field public final disableOptionalSensors:Z

.field public final disableVibration:Z

.field public final enableAdjustBrightness:Z

.field public final enableDataSaver:Z

.field public final enableFirewall:Z

.field public final enableNightMode:Z

.field public final enableQuickDoze:Z

.field public final forceAllAppsStandby:Z

.field public final forceBackgroundCheck:Z

.field public final locationMode:I

.field public final mHashCode:I

.field public final soundTriggerMode:I


# direct methods
.method public constructor <init>(FZZZZZZZZZZZZZZZII)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p17

    move/from16 v2, p18

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    move/from16 v4, p1

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    move/from16 v3, p2

    .line 3
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    move/from16 v5, p3

    .line 4
    iput-boolean v5, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    move/from16 v6, p4

    .line 5
    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    move/from16 v7, p5

    .line 6
    iput-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    move/from16 v8, p6

    .line 7
    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    move/from16 v9, p7

    .line 8
    iput-boolean v9, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    move/from16 v10, p8

    .line 9
    iput-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    move/from16 v11, p9

    .line 10
    iput-boolean v11, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    move/from16 v12, p10

    .line 11
    iput-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    move/from16 v13, p11

    .line 12
    iput-boolean v13, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    move/from16 v14, p12

    .line 13
    iput-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    move/from16 v15, p13

    .line 14
    iput-boolean v15, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    move/from16 v3, p14

    .line 15
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    move/from16 v3, p15

    .line 16
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    move/from16 v3, p16

    .line 17
    iput-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 18
    const-string v3, "BatterySaverPolicy"

    if-ltz v1, :cond_1

    const/4 v4, 0x4

    if-ge v4, v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid location mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 21
    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    :goto_1
    if-ltz v2, :cond_3

    const/4 v4, 0x2

    if-le v2, v4, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    iput v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    goto :goto_3

    .line 23
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid SoundTrigger mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 24
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 25
    :goto_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 26
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 27
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 28
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 29
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 30
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 31
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 32
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 33
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 34
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 35
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 36
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    .line 37
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 38
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 39
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    .line 40
    invoke-static/range {p16 .. p16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 41
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 42
    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    filled-new-array/range {v16 .. v33}, [Ljava/lang/Object;

    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    return-void
.end method

.method public static fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 20

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string v0, "BatterySaverPolicy"

    .line 4
    .line 5
    const-string v1, "Null config passed down to BatterySaverPolicy"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdjustBrightnessFactor()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdvertiseIsEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferFullBackup()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferKeyValueBackup()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAnimation()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAod()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableLaunchBoost()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableOptionalSensors()Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableVibration()Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableAdjustBrightness()Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableDataSaver()Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableFirewall()Z

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableNightMode()Z

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableQuickDoze()Z

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceAllAppsStandby()Z

    .line 76
    .line 77
    .line 78
    move-result v16

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceBackgroundCheck()Z

    .line 80
    .line 81
    .line 82
    move-result v17

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getLocationMode()I

    .line 84
    .line 85
    .line 86
    move-result v18

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getSoundTriggerMode()I

    .line 88
    .line 89
    .line 90
    move-result v19

    .line 91
    invoke-direct/range {v1 .. v19}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public static fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    return-object p0
.end method

.method public static fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 2
    const-string v3, "BatterySaverPolicy"

    new-instance v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    invoke-direct {v4}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;-><init>()V

    .line 3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    :try_start_0
    iget-object v6, v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v6, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    const-string v6, "Bad device specific battery saver constants: "

    .line 6
    invoke-static {v6, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget v6, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 8
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    :try_start_1
    iget-object v1, v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 10
    iput-object v1, v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 11
    :catch_1
    const-string v1, "Bad battery saver constants: "

    .line 12
    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 14
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_1
    const-string v0, "adjust_brightness_factor"

    .line 16
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-virtual {v4, v1, v0}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    move-result v7

    .line 18
    const-string v0, "advertise_is_enabled"

    .line 19
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 21
    const-string v0, "defer_full_backup"

    .line 22
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 24
    const-string v0, "defer_keyvalue_backup"

    .line 25
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 27
    const-string v0, "disable_animation"

    .line 28
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 30
    const-string v0, "disable_aod"

    .line 31
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 33
    const-string v0, "disable_launch_boost"

    .line 34
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 36
    const-string v0, "disable_optional_sensors"

    .line 37
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 39
    const-string v0, "disable_vibration"

    .line 40
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 42
    const-string v0, "enable_brightness_adjustment"

    .line 43
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 45
    const-string v0, "enable_datasaver"

    .line 46
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 48
    const-string v0, "enable_firewall"

    .line 49
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 51
    const-string v0, "enable_night_mode"

    .line 52
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 54
    const-string v0, "enable_quick_doze"

    .line 55
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 57
    const-string v0, "force_all_apps_standby"

    .line 58
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 60
    const-string v0, "force_background_check"

    .line 61
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-boolean v1, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 63
    const-string v0, "location_mode"

    .line 64
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 66
    iget-object v3, v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    iget v6, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 67
    :goto_2
    invoke-virtual {v1, v0, v6}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 68
    const-string/jumbo v0, "soundtrigger_mode"

    .line 69
    invoke-static {v0, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 71
    iget-object v3, v4, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    iget v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3, v0, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 72
    :goto_3
    invoke-virtual {v1, v0, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 73
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object v6, v0

    invoke-direct/range {v6 .. v24}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 24
    .line 25
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 26
    .line 27
    if-ne v1, v3, :cond_2

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 30
    .line 31
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 32
    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 38
    .line 39
    if-ne v1, v3, :cond_2

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 44
    .line 45
    if-ne v1, v3, :cond_2

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 48
    .line 49
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 50
    .line 51
    if-ne v1, v3, :cond_2

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 54
    .line 55
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 56
    .line 57
    if-ne v1, v3, :cond_2

    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 62
    .line 63
    if-ne v1, v3, :cond_2

    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 66
    .line 67
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 68
    .line 69
    if-ne v1, v3, :cond_2

    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 72
    .line 73
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 74
    .line 75
    if-ne v1, v3, :cond_2

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 78
    .line 79
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 80
    .line 81
    if-ne v1, v3, :cond_2

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 84
    .line 85
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 86
    .line 87
    if-ne v1, v3, :cond_2

    .line 88
    .line 89
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 90
    .line 91
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 92
    .line 93
    if-ne v1, v3, :cond_2

    .line 94
    .line 95
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 96
    .line 97
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 98
    .line 99
    if-ne v1, v3, :cond_2

    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 102
    .line 103
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 104
    .line 105
    if-ne v1, v3, :cond_2

    .line 106
    .line 107
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 108
    .line 109
    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 110
    .line 111
    if-ne v1, v3, :cond_2

    .line 112
    .line 113
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 114
    .line 115
    iget v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 116
    .line 117
    if-ne v1, v3, :cond_2

    .line 118
    .line 119
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 120
    .line 121
    iget p1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 122
    .line 123
    if-ne p0, p1, :cond_2

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    move v0, v2

    .line 127
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    .line 2
    .line 3
    return p0
.end method
