.class final enum Lcom/android/server/audio/AudioService$BypassReason;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum LE_BROADCAST:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    .line 2
    .line 3
    const-string v1, "NO_BYPASS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/audio/AudioService$BypassReason;

    .line 12
    .line 13
    const-string v2, "DISPLAY_VOLUME_CONTROL"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/audio/AudioService$BypassReason;

    .line 22
    .line 23
    const-string v3, "CANNOT_UNMUTE_SILENT_VIBRATE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/audio/AudioService$BypassReason;

    .line 32
    .line 33
    const-string v4, "ALL_SOUND_MUTE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/audio/AudioService$BypassReason;

    .line 42
    .line 43
    const-string v5, "TMS_CONNECT"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/android/server/audio/AudioService$BypassReason;

    .line 50
    .line 51
    const-string v6, "CONSUME_ADJUST_SAME"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    .line 58
    .line 59
    new-instance v6, Lcom/android/server/audio/AudioService$BypassReason;

    .line 60
    .line 61
    const-string v7, "MULTISOUND"

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    .line 68
    .line 69
    new-instance v7, Lcom/android/server/audio/AudioService$BypassReason;

    .line 70
    .line 71
    const-string v8, "MEDIA_VOLUME_STEP_ON"

    .line 72
    .line 73
    const/4 v9, 0x7

    .line 74
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    sput-object v7, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    .line 78
    .line 79
    new-instance v8, Lcom/android/server/audio/AudioService$BypassReason;

    .line 80
    .line 81
    const-string v9, "SKIP_WARNING_POPUP_VISIBLE"

    .line 82
    .line 83
    const/16 v10, 0x8

    .line 84
    .line 85
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v8, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 89
    .line 90
    new-instance v9, Lcom/android/server/audio/AudioService$BypassReason;

    .line 91
    .line 92
    const-string v10, "SKIP_VOLUME_PANEL_NOT_VISIBLE"

    .line 93
    .line 94
    const/16 v11, 0x9

    .line 95
    .line 96
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 100
    .line 101
    new-instance v10, Lcom/android/server/audio/AudioService$BypassReason;

    .line 102
    .line 103
    const-string v11, "VOLUME_LIMITER"

    .line 104
    .line 105
    const/16 v12, 0xa

    .line 106
    .line 107
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    sput-object v10, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    .line 111
    .line 112
    new-instance v11, Lcom/android/server/audio/AudioService$BypassReason;

    .line 113
    .line 114
    const-string v12, "LE_BROADCAST"

    .line 115
    .line 116
    const/16 v13, 0xb

    .line 117
    .line 118
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    sput-object v11, Lcom/android/server/audio/AudioService$BypassReason;->LE_BROADCAST:Lcom/android/server/audio/AudioService$BypassReason;

    .line 122
    .line 123
    filled-new-array/range {v0 .. v11}, [Lcom/android/server/audio/AudioService$BypassReason;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    .line 128
    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/audio/AudioService$BypassReason;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/audio/AudioService$BypassReason;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/audio/AudioService$BypassReason;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/audio/AudioService$BypassReason;

    .line 8
    .line 9
    return-object v0
.end method
