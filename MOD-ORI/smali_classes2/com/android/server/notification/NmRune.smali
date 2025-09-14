.class public abstract Lcom/android/server/notification/NmRune;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NM_ETC_LOG_DEBUG:Z

.field public static final NM_POLICY_VIB_PICKER_CONCEPT:Z

.field public static final NM_SUPPORT_CLEAR_COVER_NOTI_LIST:Z

.field public static final NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

.field public static final NM_SUPPORT_PUSH_SERVICE:Z

.field public static final NM_SUPPORT_SUB_DISPLAY_EDGE_LIGHTING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sput-boolean v1, Lcom/android/server/notification/NmRune;->NM_ETC_LOG_DEBUG:Z

    .line 16
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 18
    .line 19
    const v2, 0x1d524

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    move v1, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    :goto_0
    sput-boolean v1, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    .line 30
    .line 31
    const-string v1, "COVER"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string v1, "LARGESCREEN"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    move v3, v4

    .line 48
    :cond_1
    sput-boolean v3, Lcom/android/server/notification/NmRune;->NM_SUPPORT_SUB_DISPLAY_EDGE_LIGHTING:Z

    .line 49
    .line 50
    const-string v1, "VIRTUAL_DISPLAY"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sput-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_CLEAR_COVER_NOTI_LIST:Z

    .line 57
    .line 58
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "CscFeature_SetupWizard_ConfigStepSequenceType"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string/jumbo v1, "service_tnc"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sput-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_PUSH_SERVICE:Z

    .line 76
    .line 77
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_SHOW_CONTENT_WHEN_UNLOCKED"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string/jumbo v1, "support"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    sput-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    .line 95
    .line 96
    return-void
.end method
