.class public abstract synthetic Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->values()[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    .line 10
    :try_start_0
    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_AND_SEND_ACTIVE_SOURCE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 12
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

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
    sget-object v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    .line 21
    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_ONLY:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 23
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

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
    sget-object v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    .line 32
    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 34
    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

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
    return-void
.end method
