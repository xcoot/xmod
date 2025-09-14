.class public abstract Lcom/android/server/aod/AODConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AOD_MODE_DEFAULT_VALUE:Ljava/lang/String;

.field public static final SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

.field public static final SUPPORT_FRONT_SUB_DISPLAY_WATCHFACE:Z

.field public static final SUPPORT_SUB_DISPLAY_COVER:Z

.field public static final isAODTouchDisabled:Z

.field public static final isFactoryBinary:Z

.field public static final isTapToShowDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v3, "aodversion"

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    sput-boolean v0, Lcom/android/server/aod/AODConfig;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    .line 21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 24
    move-result-object v0

    .line 25
    const-string v3, "CscFeature_AOD_ConfigDefStatus"

    .line 27
    const-string v4, "ON"

    .line 29
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/aod/AODConfig;->AOD_MODE_DEFAULT_VALUE:Ljava/lang/String;

    .line 35
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 38
    move-result v0

    .line 39
    sput-boolean v0, Lcom/android/server/aod/AODConfig;->isFactoryBinary:Z

    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v3, "-touch"

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v0

    .line 55
    sput-boolean v0, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    .line 57
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    const-string/jumbo v1, "notaptoshow"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v0

    .line 72
    sput-boolean v0, Lcom/android/server/aod/AODConfig;->isTapToShowDisabled:Z

    .line 74
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 77
    move-result-object v0

    .line 78
    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const-string v3, "COVER"

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v0

    .line 90
    sput-boolean v0, Lcom/android/server/aod/AODConfig;->SUPPORT_SUB_DISPLAY_COVER:Z

    .line 92
    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    const-string v1, "WATCHFACE"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    sput-boolean v0, Lcom/android/server/aod/AODConfig;->SUPPORT_FRONT_SUB_DISPLAY_WATCHFACE:Z

    .line 115
    return-void
.end method
