.class public abstract enum Lcom/samsung/android/server/audio/MicModeType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/audio/MicModeType;

.field public static final AVAILABLE_DEVICE_TYPES:Ljava/util/List;

.field public static final enum NONE:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_2MIC:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_2MIC_VOICE:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_3MIC:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_DEFAULT:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_QP:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_VOICE:Lcom/samsung/android/server/audio/MicModeType;

.field public static final sMicModeParamTable:Landroid/util/ArrayMap;


# instance fields
.field private mCallMicMode:I

.field private mVoipCallMicMode:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/samsung/android/server/audio/MicModeType$1;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    invoke-direct {v0, v7, v7, v1}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->NONE:Lcom/samsung/android/server/audio/MicModeType;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/audio/MicModeType$2;

    .line 12
    .line 13
    const-string v2, "TYPE_QP"

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    invoke-direct {v1, v8, v8, v2}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/android/server/audio/MicModeType;->TYPE_QP:Lcom/samsung/android/server/audio/MicModeType;

    .line 20
    .line 21
    new-instance v2, Lcom/samsung/android/server/audio/MicModeType$3;

    .line 22
    .line 23
    const-string v3, "TYPE_2MIC"

    .line 24
    .line 25
    const/4 v9, 0x2

    .line 26
    invoke-direct {v2, v9, v9, v3}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC:Lcom/samsung/android/server/audio/MicModeType;

    .line 30
    .line 31
    new-instance v3, Lcom/samsung/android/server/audio/MicModeType$4;

    .line 32
    .line 33
    const-string v4, "TYPE_3MIC"

    .line 34
    .line 35
    const/4 v10, 0x3

    .line 36
    invoke-direct {v3, v10, v10, v4}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/samsung/android/server/audio/MicModeType;->TYPE_3MIC:Lcom/samsung/android/server/audio/MicModeType;

    .line 40
    .line 41
    new-instance v4, Lcom/samsung/android/server/audio/MicModeType$5;

    .line 42
    .line 43
    const-string v5, "TYPE_2MIC_VOICE"

    .line 44
    .line 45
    const/4 v11, 0x4

    .line 46
    invoke-direct {v4, v11, v11, v5}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    .line 50
    .line 51
    new-instance v5, Lcom/samsung/android/server/audio/MicModeType$6;

    .line 52
    .line 53
    const-string v6, "TYPE_VOICE"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v5, v12, v12, v6}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/samsung/android/server/audio/MicModeType;->TYPE_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    .line 60
    .line 61
    new-instance v6, Lcom/samsung/android/server/audio/MicModeType$7;

    .line 62
    .line 63
    const-string v12, "TYPE_DEFAULT"

    .line 64
    .line 65
    const/4 v13, 0x6

    .line 66
    invoke-direct {v6, v13, v13, v12}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/samsung/android/server/audio/MicModeType;->TYPE_DEFAULT:Lcom/samsung/android/server/audio/MicModeType;

    .line 70
    .line 71
    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/server/audio/MicModeType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->$VALUES:[Lcom/samsung/android/server/audio/MicModeType;

    .line 76
    .line 77
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->AVAILABLE_DEVICE_TYPES:Ljava/util/List;

    .line 94
    .line 95
    new-instance v0, Lcom/samsung/android/server/audio/MicModeType$8;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/samsung/android/server/audio/MicModeType$8;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "l_mic_input_control_mode=0"

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "l_mic_input_control_mode=1"

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v2, "l_mic_input_control_mode=2"

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "l_mic_input_control_mode_call=0"

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "l_mic_input_control_mode_call=1"

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/server/audio/MicModeType;->type:I

    .line 10
    .line 11
    return-void
.end method

.method public static getMicModeType()Lcom/samsung/android/server/audio/MicModeType;
    .locals 10

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MICMODE_QUICK_PANEL"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->TYPE_QP:Lcom/samsung/android/server/audio/MicModeType;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_EFFECTS_VIDEOCALL"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "getMicModeFeature() floatingVideoCallFeature : "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "MicModeManager"

    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const-string v1, "DEFAULT"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->TYPE_DEFAULT:Lcom/samsung/android/server/audio/MicModeType;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    const-string v1, "3MIC"

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->TYPE_3MIC:Lcom/samsung/android/server/audio/MicModeType;

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    const-string v1, "2MIC"

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    sget-object v4, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC:Lcom/samsung/android/server/audio/MicModeType;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    .line 78
    .line 79
    .line 80
    return-object v4

    .line 81
    :cond_3
    const-string v3, "2MIC;VOICE"

    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    sget-object v6, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    .line 88
    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    .line 95
    .line 96
    .line 97
    return-object v6

    .line 98
    :cond_4
    const-string v5, "VOICE"

    .line 99
    .line 100
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sget-object v7, Lcom/samsung/android/server/audio/MicModeType;->TYPE_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    .line 109
    .line 110
    .line 111
    return-object v7

    .line 112
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v8, "CscFeature_Audio_ConfigEffectsVideoCall"

    .line 117
    .line 118
    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v9, "getMicModeFeature() cscVideoCallFeature : "

    .line 125
    .line 126
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    .line 146
    .line 147
    .line 148
    return-object v4

    .line 149
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_7

    .line 154
    .line 155
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    .line 159
    .line 160
    .line 161
    return-object v6

    .line 162
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    .line 169
    .line 170
    .line 171
    return-object v7

    .line 172
    :cond_8
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->NONE:Lcom/samsung/android/server/audio/MicModeType;

    .line 173
    .line 174
    return-object v0
.end method

.method public static isStateEnabled(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-lez p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static updateParamTableFor2Mic()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "l_mic_input_control_mode_2mic=0"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "l_mic_input_control_mode_2mic=1"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "l_mic_input_control_mode_2mic=2"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static updateParamTableForVoice()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "l_call_nc_booster_enable=0"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "l_call_nc_booster_enable=1"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/audio/MicModeType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/audio/MicModeType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/audio/MicModeType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/audio/MicModeType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->$VALUES:[Lcom/samsung/android/server/audio/MicModeType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/audio/MicModeType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/audio/MicModeType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCallMicMode()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getCallMicMode callMicMode = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    .line 9
    .line 10
    const-string v2, "MicModeManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    .line 16
    .line 17
    return p0
.end method

.method public final getCallModeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "Invalid mode "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "MODE_CALL_FOCUS_ON_VOICE"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p0, "MODE_CALL_STANDARD"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p0, "MODE_FOCUS_ON_ALL_SOUNDS"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string p0, "MODE_FOCUS_ON_VOICE"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const-string p0, "MODE_STANDARD"

    .line 45
    .line 46
    :goto_0
    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->type:I

    .line 2
    .line 3
    return p0
.end method

.method public abstract getTypeToString()Ljava/lang/String;
.end method

.method public final getVoipCallMicMode()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getVoipCallMicMode voipCallMicMode = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    .line 9
    .line 10
    const-string v2, "MicModeManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    .line 16
    .line 17
    return p0
.end method

.method public abstract isMicModeSupported(III)Z
.end method

.method public abstract restoreMicMode(Landroid/content/ContentResolver;)V
.end method

.method public final restoreMode(Landroid/content/ContentResolver;)V
    .locals 2

    .line 1
    const-string v0, "call_mic_mode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    .line 9
    .line 10
    const-string/jumbo v0, "voip_call_mic_mode"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v0, "restoreMicMode callMicMode = "

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", voipCallMicMode = "

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    .line 38
    .line 39
    const-string v0, "MicModeManager"

    .line 40
    .line 41
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setCallMicMode(ILandroid/content/ContentResolver;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setCallMicMode callMicMode = "

    .line 2
    .line 3
    .line 4
    const-string v1, "MicModeManager"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    .line 10
    .line 11
    const-string/jumbo p0, "mic_mode_effect"

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string p0, "call_mic_mode"

    .line 18
    .line 19
    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public abstract setMicInputControlMode(Landroid/content/ContentResolver;Lcom/samsung/android/media/AudioParameter;)V
.end method

.method public final setVoipCallMicMode(ILandroid/content/ContentResolver;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setVoipCallMicMode voipCallMicMode = "

    .line 2
    .line 3
    .line 4
    const-string v1, "MicModeManager"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    .line 10
    .line 11
    const-string/jumbo p0, "mic_mode_effect"

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo p0, "voip_call_mic_mode"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
