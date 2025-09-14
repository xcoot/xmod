.class public final Lcom/android/server/hdmi/HdmiControlService$14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$14;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    const-string/jumbo v1, "enable_numeric_soundbar_volume_ui_on_tv"

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result p1

    .line 16
    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 18
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 26
    const-string/jumbo v0, "transition_arc_to_earc_tx"

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 36
    return-void

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 39
    const-string/jumbo v1, "enable_soundbar_mode"

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    move-result p1

    .line 47
    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 49
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 51
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 53
    const-string/jumbo v0, "soundbar_mode"

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    const/4 v0, 0x0

    .line 61
    if-ne p1, v2, :cond_0

    .line 63
    move p1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move p1, v0

    .line 66
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 68
    if-eqz p1, :cond_1

    .line 70
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 72
    if-eqz p1, :cond_1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v2, v0

    .line 76
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->setSoundbarMode(I)V

    .line 79
    return-void

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 82
    const-string/jumbo v1, "enable_earc_tx"

    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 89
    move-result p1

    .line 90
    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 92
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 94
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 96
    const-string/jumbo v0, "earc_enabled"

    .line 99
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 102
    move-result p1

    .line 103
    const/4 v0, 0x0

    .line 104
    if-ne p1, v2, :cond_2

    .line 106
    move p1, v2

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    move p1, v0

    .line 109
    :goto_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 111
    if-eqz p1, :cond_3

    .line 113
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 115
    if-eqz p1, :cond_3

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    move v2, v0

    .line 119
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabled(I)V

    .line 122
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
