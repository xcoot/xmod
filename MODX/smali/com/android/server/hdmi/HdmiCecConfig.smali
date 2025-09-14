.class public final Lcom/android/server/hdmi/HdmiCecConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingChangeListeners:Landroid/util/ArrayMap;

.field public final mSettings:Ljava/util/LinkedHashMap;

.field public final mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 5
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    .line 7
    const-string/jumbo p1, "hdmi_cec_enabled"

    const p2, 0x1110079

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const/4 p2, 0x1

    const v1, 0x1110077

    const v2, 0x1110078

    .line 8
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/4 v1, 0x0

    const v2, 0x1110075

    const v3, 0x1110076

    .line 9
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 10
    const-string/jumbo p1, "hdmi_cec_version"

    const v2, 0x111007e

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x111007b

    const/4 v3, 0x5

    const v4, 0x111007a

    .line 11
    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/4 v2, 0x6

    const v3, 0x111007c

    const v4, 0x111007d

    .line 12
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 13
    const-string/jumbo p1, "routing_control"

    const v3, 0x1110100

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x11100fe

    const v4, 0x11100ff

    .line 14
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x11100fc

    const v4, 0x11100fd

    .line 15
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 16
    const-string/jumbo p1, "soundbar_mode"

    const v3, 0x111010a

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110108

    const v4, 0x1110109

    .line 17
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110106

    const v4, 0x1110107

    .line 18
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 19
    const-string/jumbo p1, "power_control_mode"

    const v3, 0x1110087

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110086

    .line 20
    const-string/jumbo v4, "to_tv"

    const v5, 0x1110085

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const v3, 0x1110080

    .line 21
    const-string/jumbo v4, "broadcast"

    const v5, 0x111007f

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    .line 22
    const-string/jumbo v3, "none"

    const v4, 0x1110081

    const v5, 0x1110082

    invoke-virtual {p1, v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const v4, 0x1110084

    .line 23
    const-string/jumbo v5, "to_tv_and_audio_system"

    const v6, 0x1110083

    invoke-virtual {p1, v6, v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    .line 24
    const-string/jumbo p1, "power_state_change_on_active_source_lost"

    const v4, 0x111008c

    invoke-virtual {p0, v4, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v4, 0x1110088

    const v5, 0x1110089

    .line 25
    invoke-virtual {p1, v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const v3, 0x111008b

    .line 26
    const-string/jumbo v4, "standby_now"

    const v5, 0x111008a

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    .line 27
    const-string/jumbo p1, "system_audio_control"

    const v3, 0x111010f

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x111010d

    const v4, 0x111010e

    .line 28
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x111010b

    const v4, 0x111010c

    .line 29
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 30
    const-string/jumbo p1, "system_audio_mode_muting"

    const v3, 0x1110114

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110112

    const v4, 0x1110113

    .line 31
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110110

    const v4, 0x1110111

    .line 32
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 33
    const-string/jumbo p1, "volume_control_enabled"

    const v3, 0x1110123

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110121

    const v4, 0x1110122

    .line 34
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x111011f

    const v4, 0x1110120

    .line 35
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 36
    const-string/jumbo p1, "tv_wake_on_one_touch_play"

    const v3, 0x111011e

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x111011c

    const v4, 0x111011d

    .line 37
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x111011a

    const v4, 0x111011b

    .line 38
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 39
    const-string/jumbo p1, "tv_send_standby_on_sleep"

    const v3, 0x1110119

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110117

    const v4, 0x1110118

    .line 40
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110115

    const v4, 0x1110116

    .line 41
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 42
    const-string/jumbo p1, "set_menu_language"

    const v3, 0x1110105

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110103

    const v4, 0x1110104

    .line 43
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110101

    const v4, 0x1110102

    .line 44
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 45
    const-string/jumbo p1, "rc_profile_tv"

    const v3, 0x11100fb

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x11100f3

    const v4, 0x11100f4

    .line 46
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x11100f6

    const/4 v4, 0x2

    const v5, 0x11100f5

    .line 47
    invoke-virtual {p1, v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x11100f9

    const v4, 0x11100fa

    .line 48
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100f8

    const/16 v3, 0xa

    const v4, 0x11100f7

    .line 49
    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100f2

    const/16 v3, 0xe

    const v4, 0x11100f1

    .line 50
    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 51
    const-string/jumbo p1, "rc_profile_source_handles_root_menu"

    const v2, 0x11100e6

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100e2

    const v3, 0x11100e3

    .line 52
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100e4

    const v3, 0x11100e5

    .line 53
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 54
    const-string/jumbo p1, "rc_profile_source_handles_setup_menu"

    const v2, 0x11100eb

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100e7

    const v3, 0x11100e8

    .line 55
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100e9

    const v3, 0x11100ea

    .line 56
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 57
    const-string/jumbo p1, "rc_profile_source_handles_contents_menu"

    const v2, 0x11100dc

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100d8

    const v3, 0x11100d9

    .line 58
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100da

    const v3, 0x11100db

    .line 59
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 60
    const-string/jumbo p1, "rc_profile_source_handles_top_menu"

    const v2, 0x11100f0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100ec

    const v3, 0x11100ed

    .line 61
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100ee

    const v3, 0x11100ef

    .line 62
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 63
    const-string/jumbo p1, "rc_profile_source_handles_media_context_sensitive_menu"

    const v2, 0x11100e1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100dd

    const v3, 0x11100de

    .line 64
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100df

    const v3, 0x11100e0

    .line 65
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 66
    const-string/jumbo p1, "query_sad_lpcm"

    const v2, 0x11100b4

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100b2

    const v3, 0x11100b3

    .line 67
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100b0

    const v3, 0x11100b1

    .line 68
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 69
    const-string/jumbo p1, "query_sad_dd"

    const v2, 0x111009b

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x1110099

    const v3, 0x111009a

    .line 70
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x1110097

    const v3, 0x1110098

    .line 71
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 72
    const-string/jumbo p1, "query_sad_mpeg1"

    const v2, 0x11100c3

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100c1

    const v3, 0x11100c2

    .line 73
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100bf

    const v3, 0x11100c0

    .line 74
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 75
    const-string/jumbo p1, "query_sad_mp3"

    const v2, 0x11100be

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100bc

    const v3, 0x11100bd

    .line 76
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100ba

    const v3, 0x11100bb

    .line 77
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 78
    const-string/jumbo p1, "query_sad_mpeg2"

    const v2, 0x11100c8

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100c6

    const v3, 0x11100c7

    .line 79
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100c4

    const v3, 0x11100c5

    .line 80
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 81
    const-string/jumbo p1, "query_sad_aac"

    const v2, 0x1110091

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x111008f

    const v3, 0x1110090

    .line 82
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x111008d

    const v3, 0x111008e

    .line 83
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 84
    const-string/jumbo p1, "query_sad_dts"

    const v2, 0x11100aa

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100a8

    const v3, 0x11100a9

    .line 85
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100a6

    const v3, 0x11100a7

    .line 86
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 87
    const-string/jumbo p1, "query_sad_atrac"

    const v2, 0x1110096

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x1110094

    const v3, 0x1110095

    .line 88
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x1110092

    const v3, 0x1110093

    .line 89
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 90
    const-string/jumbo p1, "query_sad_onebitaudio"

    const v2, 0x11100cd

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100cb

    const v3, 0x11100cc

    .line 91
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100c9

    const v3, 0x11100ca

    .line 92
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 93
    const-string/jumbo p1, "query_sad_ddp"

    const v2, 0x11100a0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x111009e

    const v3, 0x111009f

    .line 94
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x111009c

    const v3, 0x111009d

    .line 95
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 96
    const-string/jumbo p1, "query_sad_dtshd"

    const v2, 0x11100af

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100ad

    const v3, 0x11100ae

    .line 97
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100ab

    const v3, 0x11100ac

    .line 98
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 99
    const-string/jumbo p1, "query_sad_truehd"

    const v2, 0x11100d2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100d0

    const v3, 0x11100d1

    .line 100
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100ce

    const v3, 0x11100cf

    .line 101
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 102
    const-string/jumbo p1, "query_sad_dst"

    const v2, 0x11100a5

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100a3

    const v3, 0x11100a4

    .line 103
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100a1

    const v3, 0x11100a2

    .line 104
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 105
    const-string/jumbo p1, "query_sad_wmapro"

    const v2, 0x11100d7

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100d5

    const v3, 0x11100d6

    .line 106
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100d3

    const v3, 0x11100d4

    .line 107
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 108
    const-string/jumbo p1, "query_sad_max"

    const v2, 0x11100b9

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100b7

    const v3, 0x11100b8

    .line 109
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100b5

    const v3, 0x11100b6

    .line 110
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 111
    const-string/jumbo p1, "earc_enabled"

    const v2, 0x111015e

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    const p1, 0x1110161

    const v2, 0x1110162

    .line 112
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p1, 0x111015f

    const p2, 0x1110160

    .line 113
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 114
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 116
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    .line 117
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 14
    goto/16 :goto_0

    .line 16
    :sswitch_0
    const-string/jumbo v1, "system_audio_control"

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x21

    .line 29
    goto/16 :goto_0

    .line 31
    :sswitch_1
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 40
    goto/16 :goto_0

    .line 42
    :cond_1
    const/16 v0, 0x20

    .line 44
    goto/16 :goto_0

    .line 46
    :sswitch_2
    const-string/jumbo v1, "query_sad_mp3"

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 55
    goto/16 :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x1f

    .line 59
    goto/16 :goto_0

    .line 61
    :sswitch_3
    const-string/jumbo v1, "query_sad_max"

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 70
    goto/16 :goto_0

    .line 72
    :cond_3
    const/16 v0, 0x1e

    .line 74
    goto/16 :goto_0

    .line 76
    :sswitch_4
    const-string/jumbo v1, "query_sad_dts"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 85
    goto/16 :goto_0

    .line 87
    :cond_4
    const/16 v0, 0x1d

    .line 89
    goto/16 :goto_0

    .line 91
    :sswitch_5
    const-string/jumbo v1, "query_sad_dst"

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_5

    .line 100
    goto/16 :goto_0

    .line 102
    :cond_5
    const/16 v0, 0x1c

    .line 104
    goto/16 :goto_0

    .line 106
    :sswitch_6
    const-string/jumbo v1, "query_sad_ddp"

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_6

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_6
    const/16 v0, 0x1b

    .line 119
    goto/16 :goto_0

    .line 121
    :sswitch_7
    const-string/jumbo v1, "query_sad_aac"

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_7

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_7
    const/16 v0, 0x1a

    .line 134
    goto/16 :goto_0

    .line 136
    :sswitch_8
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_8

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_8
    const/16 v0, 0x19

    .line 149
    goto/16 :goto_0

    .line 151
    :sswitch_9
    const-string/jumbo v1, "query_sad_dd"

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_9

    .line 160
    goto/16 :goto_0

    .line 162
    :cond_9
    const/16 v0, 0x18

    .line 164
    goto/16 :goto_0

    .line 166
    :sswitch_a
    const-string/jumbo v1, "query_sad_onebitaudio"

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_a

    .line 175
    goto/16 :goto_0

    .line 177
    :cond_a
    const/16 v0, 0x17

    .line 179
    goto/16 :goto_0

    .line 181
    :sswitch_b
    const-string/jumbo v1, "rc_profile_tv"

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_b

    .line 190
    goto/16 :goto_0

    .line 192
    :cond_b
    const/16 v0, 0x16

    .line 194
    goto/16 :goto_0

    .line 196
    :sswitch_c
    const-string/jumbo v1, "hdmi_cec_enabled"

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_c

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_c
    const/16 v0, 0x15

    .line 209
    goto/16 :goto_0

    .line 211
    :sswitch_d
    const-string/jumbo v1, "volume_control_enabled"

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_d

    .line 220
    goto/16 :goto_0

    .line 222
    :cond_d
    const/16 v0, 0x14

    .line 224
    goto/16 :goto_0

    .line 226
    :sswitch_e
    const-string/jumbo v1, "soundbar_mode"

    .line 229
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_e

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_e
    const/16 v0, 0x13

    .line 239
    goto/16 :goto_0

    .line 241
    :sswitch_f
    const-string/jumbo v1, "power_control_mode"

    .line 244
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_f

    .line 250
    goto/16 :goto_0

    .line 252
    :cond_f
    const/16 v0, 0x12

    .line 254
    goto/16 :goto_0

    .line 256
    :sswitch_10
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_10

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_10
    const/16 v0, 0x11

    .line 269
    goto/16 :goto_0

    .line 271
    :sswitch_11
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_11

    .line 280
    goto/16 :goto_0

    .line 282
    :cond_11
    const/16 v0, 0x10

    .line 284
    goto/16 :goto_0

    .line 286
    :sswitch_12
    const-string/jumbo v1, "query_sad_lpcm"

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_12

    .line 295
    goto/16 :goto_0

    .line 297
    :cond_12
    const/16 v0, 0xf

    .line 299
    goto/16 :goto_0

    .line 301
    :sswitch_13
    const-string/jumbo v1, "routing_control"

    .line 304
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_13

    .line 310
    goto/16 :goto_0

    .line 312
    :cond_13
    const/16 v0, 0xe

    .line 314
    goto/16 :goto_0

    .line 316
    :sswitch_14
    const-string/jumbo v1, "query_sad_wmapro"

    .line 319
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_14

    .line 325
    goto/16 :goto_0

    .line 327
    :cond_14
    const/16 v0, 0xd

    .line 329
    goto/16 :goto_0

    .line 331
    :sswitch_15
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    .line 334
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_15

    .line 340
    goto/16 :goto_0

    .line 342
    :cond_15
    const/16 v0, 0xc

    .line 344
    goto/16 :goto_0

    .line 346
    :sswitch_16
    const-string/jumbo v1, "query_sad_truehd"

    .line 349
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    move-result v1

    .line 353
    if-nez v1, :cond_16

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_16
    const/16 v0, 0xb

    .line 359
    goto/16 :goto_0

    .line 361
    :sswitch_17
    const-string/jumbo v1, "earc_enabled"

    .line 364
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_17

    .line 370
    goto/16 :goto_0

    .line 372
    :cond_17
    const/16 v0, 0xa

    .line 374
    goto/16 :goto_0

    .line 376
    :sswitch_18
    const-string/jumbo v1, "query_sad_mpeg2"

    .line 379
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_18

    .line 385
    goto/16 :goto_0

    .line 387
    :cond_18
    const/16 v0, 0x9

    .line 389
    goto/16 :goto_0

    .line 391
    :sswitch_19
    const-string/jumbo v1, "query_sad_mpeg1"

    .line 394
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_19

    .line 400
    goto/16 :goto_0

    .line 402
    :cond_19
    const/16 v0, 0x8

    .line 404
    goto/16 :goto_0

    .line 406
    :sswitch_1a
    const-string/jumbo v1, "query_sad_dtshd"

    .line 409
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_1a

    .line 415
    goto :goto_0

    .line 416
    :cond_1a
    const/4 v0, 0x7

    .line 417
    goto :goto_0

    .line 418
    :sswitch_1b
    const-string/jumbo v1, "query_sad_atrac"

    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_1b

    .line 427
    goto :goto_0

    .line 428
    :cond_1b
    const/4 v0, 0x6

    .line 429
    goto :goto_0

    .line 430
    :sswitch_1c
    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    .line 433
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_1c

    .line 439
    goto :goto_0

    .line 440
    :cond_1c
    const/4 v0, 0x5

    .line 441
    goto :goto_0

    .line 442
    :sswitch_1d
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    .line 445
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    move-result v1

    .line 449
    if-nez v1, :cond_1d

    .line 451
    goto :goto_0

    .line 452
    :cond_1d
    const/4 v0, 0x4

    .line 453
    goto :goto_0

    .line 454
    :sswitch_1e
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    .line 457
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    move-result v1

    .line 461
    if-nez v1, :cond_1e

    .line 463
    goto :goto_0

    .line 464
    :cond_1e
    const/4 v0, 0x3

    .line 465
    goto :goto_0

    .line 466
    :sswitch_1f
    const-string/jumbo v1, "set_menu_language"

    .line 469
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result v1

    .line 473
    if-nez v1, :cond_1f

    .line 475
    goto :goto_0

    .line 476
    :cond_1f
    const/4 v0, 0x2

    .line 477
    goto :goto_0

    .line 478
    :sswitch_20
    const-string/jumbo v1, "system_audio_mode_muting"

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    move-result v1

    .line 485
    if-nez v1, :cond_20

    .line 487
    goto :goto_0

    .line 488
    :cond_20
    const/4 v0, 0x1

    .line 489
    goto :goto_0

    .line 490
    :sswitch_21
    const-string/jumbo v1, "hdmi_cec_version"

    .line 493
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    move-result v1

    .line 497
    if-nez v1, :cond_21

    .line 499
    goto :goto_0

    .line 500
    :cond_21
    const/4 v0, 0x0

    .line 501
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 504
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    .line 506
    const-string v1, "Invalid CEC setting \'"

    .line 508
    const-string v2, "\' storage."

    .line 510
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    move-result-object p0

    .line 514
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    .line 517
    throw v0

    .line 518
    :pswitch_0
    return-void

    .line 519
    :sswitch_data_0
    .sparse-switch
        -0x7b89074d -> :sswitch_21
        -0x6a9ec647 -> :sswitch_20
        -0x607d7ae5 -> :sswitch_1f
        -0x4c082dd9 -> :sswitch_1e
        -0x4ab99283 -> :sswitch_1d
        -0x46d3da58 -> :sswitch_1c
        -0x44f9855f -> :sswitch_1b
        -0x44cf3a41 -> :sswitch_1a
        -0x44526d14 -> :sswitch_19
        -0x44526d13 -> :sswitch_18
        -0x40778731 -> :sswitch_17
        -0x39e5d496 -> :sswitch_16
        -0x36427790 -> :sswitch_15
        -0x3516ad1e -> :sswitch_14
        -0x1893b91c -> :sswitch_13
        -0x12b8cab2 -> :sswitch_12
        -0x117d9fab -> :sswitch_11
        -0xd196d78 -> :sswitch_10
        -0x1832fc1 -> :sswitch_f
        0x118545e -> :sswitch_e
        0x45cb33a -> :sswitch_d
        0xf91671c -> :sswitch_c
        0x2f314ba6 -> :sswitch_b
        0x2fa40eef -> :sswitch_a
        0x5e0410e0 -> :sswitch_9
        0x611b5e8f -> :sswitch_8
        0x627dffe3 -> :sswitch_7
        0x627e0b90 -> :sswitch_6
        0x627e0d65 -> :sswitch_5
        0x627e0d83 -> :sswitch_4
        0x627e2d04 -> :sswitch_3
        0x627e2e90 -> :sswitch_2
        0x7a8663a3 -> :sswitch_1
        0x7e41b7e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 14
    goto/16 :goto_0

    .line 16
    :sswitch_0
    const-string/jumbo v1, "system_audio_control"

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x21

    .line 29
    goto/16 :goto_0

    .line 31
    :sswitch_1
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 40
    goto/16 :goto_0

    .line 42
    :cond_1
    const/16 v0, 0x20

    .line 44
    goto/16 :goto_0

    .line 46
    :sswitch_2
    const-string/jumbo v1, "query_sad_mp3"

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 55
    goto/16 :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x1f

    .line 59
    goto/16 :goto_0

    .line 61
    :sswitch_3
    const-string/jumbo v1, "query_sad_max"

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 70
    goto/16 :goto_0

    .line 72
    :cond_3
    const/16 v0, 0x1e

    .line 74
    goto/16 :goto_0

    .line 76
    :sswitch_4
    const-string/jumbo v1, "query_sad_dts"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 85
    goto/16 :goto_0

    .line 87
    :cond_4
    const/16 v0, 0x1d

    .line 89
    goto/16 :goto_0

    .line 91
    :sswitch_5
    const-string/jumbo v1, "query_sad_dst"

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_5

    .line 100
    goto/16 :goto_0

    .line 102
    :cond_5
    const/16 v0, 0x1c

    .line 104
    goto/16 :goto_0

    .line 106
    :sswitch_6
    const-string/jumbo v1, "query_sad_ddp"

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_6

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_6
    const/16 v0, 0x1b

    .line 119
    goto/16 :goto_0

    .line 121
    :sswitch_7
    const-string/jumbo v1, "query_sad_aac"

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_7

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_7
    const/16 v0, 0x1a

    .line 134
    goto/16 :goto_0

    .line 136
    :sswitch_8
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_8

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_8
    const/16 v0, 0x19

    .line 149
    goto/16 :goto_0

    .line 151
    :sswitch_9
    const-string/jumbo v1, "query_sad_dd"

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_9

    .line 160
    goto/16 :goto_0

    .line 162
    :cond_9
    const/16 v0, 0x18

    .line 164
    goto/16 :goto_0

    .line 166
    :sswitch_a
    const-string/jumbo v1, "query_sad_onebitaudio"

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_a

    .line 175
    goto/16 :goto_0

    .line 177
    :cond_a
    const/16 v0, 0x17

    .line 179
    goto/16 :goto_0

    .line 181
    :sswitch_b
    const-string/jumbo v1, "rc_profile_tv"

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_b

    .line 190
    goto/16 :goto_0

    .line 192
    :cond_b
    const/16 v0, 0x16

    .line 194
    goto/16 :goto_0

    .line 196
    :sswitch_c
    const-string/jumbo v1, "hdmi_cec_enabled"

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_c

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_c
    const/16 v0, 0x15

    .line 209
    goto/16 :goto_0

    .line 211
    :sswitch_d
    const-string/jumbo v1, "volume_control_enabled"

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_d

    .line 220
    goto/16 :goto_0

    .line 222
    :cond_d
    const/16 v0, 0x14

    .line 224
    goto/16 :goto_0

    .line 226
    :sswitch_e
    const-string/jumbo v1, "soundbar_mode"

    .line 229
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_e

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_e
    const/16 v0, 0x13

    .line 239
    goto/16 :goto_0

    .line 241
    :sswitch_f
    const-string/jumbo v1, "power_control_mode"

    .line 244
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_f

    .line 250
    goto/16 :goto_0

    .line 252
    :cond_f
    const/16 v0, 0x12

    .line 254
    goto/16 :goto_0

    .line 256
    :sswitch_10
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_10

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_10
    const/16 v0, 0x11

    .line 269
    goto/16 :goto_0

    .line 271
    :sswitch_11
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_11

    .line 280
    goto/16 :goto_0

    .line 282
    :cond_11
    const/16 v0, 0x10

    .line 284
    goto/16 :goto_0

    .line 286
    :sswitch_12
    const-string/jumbo v1, "query_sad_lpcm"

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_12

    .line 295
    goto/16 :goto_0

    .line 297
    :cond_12
    const/16 v0, 0xf

    .line 299
    goto/16 :goto_0

    .line 301
    :sswitch_13
    const-string/jumbo v1, "routing_control"

    .line 304
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_13

    .line 310
    goto/16 :goto_0

    .line 312
    :cond_13
    const/16 v0, 0xe

    .line 314
    goto/16 :goto_0

    .line 316
    :sswitch_14
    const-string/jumbo v1, "query_sad_wmapro"

    .line 319
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_14

    .line 325
    goto/16 :goto_0

    .line 327
    :cond_14
    const/16 v0, 0xd

    .line 329
    goto/16 :goto_0

    .line 331
    :sswitch_15
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    .line 334
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_15

    .line 340
    goto/16 :goto_0

    .line 342
    :cond_15
    const/16 v0, 0xc

    .line 344
    goto/16 :goto_0

    .line 346
    :sswitch_16
    const-string/jumbo v1, "query_sad_truehd"

    .line 349
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    move-result v1

    .line 353
    if-nez v1, :cond_16

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_16
    const/16 v0, 0xb

    .line 359
    goto/16 :goto_0

    .line 361
    :sswitch_17
    const-string/jumbo v1, "earc_enabled"

    .line 364
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_17

    .line 370
    goto/16 :goto_0

    .line 372
    :cond_17
    const/16 v0, 0xa

    .line 374
    goto/16 :goto_0

    .line 376
    :sswitch_18
    const-string/jumbo v1, "query_sad_mpeg2"

    .line 379
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_18

    .line 385
    goto/16 :goto_0

    .line 387
    :cond_18
    const/16 v0, 0x9

    .line 389
    goto/16 :goto_0

    .line 391
    :sswitch_19
    const-string/jumbo v1, "query_sad_mpeg1"

    .line 394
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_19

    .line 400
    goto/16 :goto_0

    .line 402
    :cond_19
    const/16 v0, 0x8

    .line 404
    goto/16 :goto_0

    .line 406
    :sswitch_1a
    const-string/jumbo v1, "query_sad_dtshd"

    .line 409
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_1a

    .line 415
    goto :goto_0

    .line 416
    :cond_1a
    const/4 v0, 0x7

    .line 417
    goto :goto_0

    .line 418
    :sswitch_1b
    const-string/jumbo v1, "query_sad_atrac"

    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_1b

    .line 427
    goto :goto_0

    .line 428
    :cond_1b
    const/4 v0, 0x6

    .line 429
    goto :goto_0

    .line 430
    :sswitch_1c
    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    .line 433
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_1c

    .line 439
    goto :goto_0

    .line 440
    :cond_1c
    const/4 v0, 0x5

    .line 441
    goto :goto_0

    .line 442
    :sswitch_1d
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    .line 445
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    move-result v1

    .line 449
    if-nez v1, :cond_1d

    .line 451
    goto :goto_0

    .line 452
    :cond_1d
    const/4 v0, 0x4

    .line 453
    goto :goto_0

    .line 454
    :sswitch_1e
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    .line 457
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    move-result v1

    .line 461
    if-nez v1, :cond_1e

    .line 463
    goto :goto_0

    .line 464
    :cond_1e
    const/4 v0, 0x3

    .line 465
    goto :goto_0

    .line 466
    :sswitch_1f
    const-string/jumbo v1, "set_menu_language"

    .line 469
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result v1

    .line 473
    if-nez v1, :cond_1f

    .line 475
    goto :goto_0

    .line 476
    :cond_1f
    const/4 v0, 0x2

    .line 477
    goto :goto_0

    .line 478
    :sswitch_20
    const-string/jumbo v1, "system_audio_mode_muting"

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    move-result v1

    .line 485
    if-nez v1, :cond_20

    .line 487
    goto :goto_0

    .line 488
    :cond_20
    const/4 v0, 0x1

    .line 489
    goto :goto_0

    .line 490
    :sswitch_21
    const-string/jumbo v1, "hdmi_cec_version"

    .line 493
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    move-result v1

    .line 497
    if-nez v1, :cond_21

    .line 499
    goto :goto_0

    .line 500
    :cond_21
    const/4 v0, 0x0

    .line 501
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 504
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    .line 506
    const-string v1, "Invalid CEC setting \'"

    .line 508
    const-string v2, "\' storage key."

    .line 510
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    move-result-object p0

    .line 514
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    .line 517
    throw v0

    .line 518
    :pswitch_0
    return-object p0

    .line 519
    :sswitch_data_0
    .sparse-switch
        -0x7b89074d -> :sswitch_21
        -0x6a9ec647 -> :sswitch_20
        -0x607d7ae5 -> :sswitch_1f
        -0x4c082dd9 -> :sswitch_1e
        -0x4ab99283 -> :sswitch_1d
        -0x46d3da58 -> :sswitch_1c
        -0x44f9855f -> :sswitch_1b
        -0x44cf3a41 -> :sswitch_1a
        -0x44526d14 -> :sswitch_19
        -0x44526d13 -> :sswitch_18
        -0x40778731 -> :sswitch_17
        -0x39e5d496 -> :sswitch_16
        -0x36427790 -> :sswitch_15
        -0x3516ad1e -> :sswitch_14
        -0x1893b91c -> :sswitch_13
        -0x12b8cab2 -> :sswitch_12
        -0x117d9fab -> :sswitch_11
        -0xd196d78 -> :sswitch_10
        -0x1832fc1 -> :sswitch_f
        0x118545e -> :sswitch_e
        0x45cb33a -> :sswitch_d
        0xf91671c -> :sswitch_c
        0x2f314ba6 -> :sswitch_b
        0x2fa40eef -> :sswitch_a
        0x5e0410e0 -> :sswitch_9
        0x611b5e8f -> :sswitch_8
        0x627dffe3 -> :sswitch_7
        0x627e0b90 -> :sswitch_6
        0x627e0d65 -> :sswitch_5
        0x627e0d83 -> :sswitch_4
        0x627e2d04 -> :sswitch_3
        0x627e2e90 -> :sswitch_2
        0x7a8663a3 -> :sswitch_1
        0x7e41b7e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Setting \'"

    .line 7
    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "int"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 47
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object p1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string v1, "\' is not a string-type setting."

    .line 58
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    const-string v1, "\' does not exist."

    .line 70
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0
.end method

.method public final getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Setting \'"

    .line 7
    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "string"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 47
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object p1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string v1, "\' is not a string-type setting."

    .line 58
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    const-string v1, "\' does not exist."

    .line 70
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0
.end method

.method public final getIntValue(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Setting \'"

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "int"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const-string v1, "Getting CEC setting value \'"

    .line 24
    const-string v2, "\'."

    .line 26
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string v0, "\' is not a int-type setting."

    .line 63
    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string v0, "\' does not exist."

    .line 75
    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0
.end method

.method public final getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method

.method public final getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Setting \'"

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "string"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const-string v1, "Getting CEC setting value \'"

    .line 24
    const-string v2, "\'."

    .line 26
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string v0, "\' is not a string-type setting."

    .line 51
    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string v0, "\' does not exist."

    .line 63
    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0
.end method

.method public final getUserSettings()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 28
    iget-boolean v2, v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    .line 30
    if-eqz v2, :cond_0

    .line 32
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method public final registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    .line 10
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 23
    new-instance v2, Landroid/util/ArrayMap;

    .line 25
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string p2, "Setting \'"

    .line 53
    const-string p3, "\' does not exist."

    .line 55
    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
.end method

.method public final registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {p0, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-object v0
.end method

.method public final removeChangeListener(Lcom/android/server/hdmi/HdmiControlService$2;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 18
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string p1, "Setting \'"

    .line 51
    const-string v0, "\' does not exist."

    .line 53
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
.end method

.method public final retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    .line 4
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "Reading \'"

    .line 10
    const-string v1, "\' shared preference."

    .line 12
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    .line 24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 26
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final setIntValue(ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Setting \'"

    .line 7
    if-eqz v0, :cond_3

    .line 9
    iget-boolean v2, v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    .line 11
    const-string v3, "Updating CEC setting \'"

    .line 13
    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const-string/jumbo v4, "int"

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    const-string v2, "\'."

    .line 44
    if-eqz v1, :cond_0

    .line 46
    const-string v1, "\' to \'"

    .line 48
    invoke-static {p1, v3, p2, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    const/4 v1, 0x0

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    .line 65
    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    const-string v0, "Invalid CEC setting \'"

    .line 70
    const-string v1, "\' value: \'"

    .line 72
    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    const-string p1, "\' is not a int-type setting."

    .line 84
    invoke-static {v1, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0

    .line 92
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    const-string p1, "\' prohibited."

    .line 96
    invoke-static {v3, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p0

    .line 104
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 106
    const-string p1, "\' does not exist."

    .line 108
    invoke-static {v1, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p0
.end method

.method public final setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Setting \'"

    .line 7
    if-eqz v0, :cond_3

    .line 9
    iget-boolean v2, v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    .line 11
    const-string v3, "Updating CEC setting \'"

    .line 13
    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const-string/jumbo v4, "string"

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    const-string v2, "\'."

    .line 40
    if-eqz v1, :cond_0

    .line 42
    const-string v1, "\' to \'"

    .line 44
    invoke-static {v3, p1, v1, p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x0

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    .line 57
    return-void

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    const-string v0, "Invalid CEC setting \'"

    .line 62
    const-string v1, "\' value: \'"

    .line 64
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string p2, "\' is not a string-type setting."

    .line 76
    invoke-static {v1, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 86
    const-string p2, "\' prohibited."

    .line 88
    invoke-static {v3, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0

    .line 96
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    const-string p2, "\' does not exist."

    .line 100
    invoke-static {v1, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0
.end method

.method public final storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    .line 4
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "Setting \'"

    .line 10
    const-string v2, "\' shared pref."

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    .line 24
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter p2

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/util/ArrayMap;

    .line 48
    if-nez p0, :cond_0

    .line 50
    monitor-exit p2

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p0

    .line 62
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 86
    new-instance v2, Lcom/android/server/hdmi/HdmiCecConfig$1;

    .line 88
    invoke-direct {v2, v1, p1}, Lcom/android/server/hdmi/HdmiCecConfig$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$2;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    .line 91
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    monitor-exit p2

    .line 96
    :goto_1
    return-void

    .line 97
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method
