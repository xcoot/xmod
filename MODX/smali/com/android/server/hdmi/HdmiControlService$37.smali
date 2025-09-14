.class public abstract synthetic Lcom/android/server/hdmi/HdmiControlService$37;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->values()[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 10
    :try_start_0
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 12
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 21
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 23
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 32
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 34
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 43
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 45
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 52
    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 54
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 56
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x5

    .line 61
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 63
    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 65
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 67
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x6

    .line 72
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 74
    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 76
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 78
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x7

    .line 83
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 85
    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$37;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    .line 87
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    .line 89
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x8

    .line 95
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 97
    :catch_7
    return-void
.end method
