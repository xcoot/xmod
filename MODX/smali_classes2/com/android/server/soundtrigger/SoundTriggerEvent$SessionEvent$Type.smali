.class public final enum Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum MODULE_DIED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum PAUSE_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 2
    .line 3
    const-string v1, "START_RECOGNITION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 12
    .line 13
    const-string v2, "STOP_RECOGNITION"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 22
    .line 23
    const-string v3, "LOAD_MODEL"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 32
    .line 33
    const-string v4, "UNLOAD_MODEL"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 42
    .line 43
    const-string v5, "UPDATE_MODEL"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 52
    .line 53
    const-string v6, "DELETE_MODEL"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 60
    .line 61
    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 62
    .line 63
    const-string v7, "START_RECOGNITION_SERVICE"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 70
    .line 71
    new-instance v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 72
    .line 73
    const-string v8, "STOP_RECOGNITION_SERVICE"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 80
    .line 81
    new-instance v8, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 82
    .line 83
    const-string v9, "GET_MODEL_STATE"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 91
    .line 92
    new-instance v9, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 93
    .line 94
    const-string v10, "SET_PARAMETER"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 102
    .line 103
    new-instance v10, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 104
    .line 105
    const-string v11, "GET_MODULE_PROPERTIES"

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v10, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 113
    .line 114
    new-instance v11, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 115
    .line 116
    const-string v12, "DETACH"

    .line 117
    .line 118
    const/16 v13, 0xb

    .line 119
    .line 120
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 124
    .line 125
    new-instance v12, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 126
    .line 127
    const-string v13, "RECOGNITION"

    .line 128
    .line 129
    const/16 v14, 0xc

    .line 130
    .line 131
    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v12, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 135
    .line 136
    new-instance v13, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 137
    .line 138
    const-string v14, "RESUME"

    .line 139
    .line 140
    const/16 v15, 0xd

    .line 141
    .line 142
    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v13, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 146
    .line 147
    new-instance v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 148
    .line 149
    const-string v15, "RESUME_FAILED"

    .line 150
    .line 151
    move-object/from16 v16, v13

    .line 152
    .line 153
    const/16 v13, 0xe

    .line 154
    .line 155
    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    sput-object v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 159
    .line 160
    new-instance v15, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 161
    .line 162
    const-string v13, "PAUSE"

    .line 163
    .line 164
    move-object/from16 v17, v14

    .line 165
    .line 166
    const/16 v14, 0xf

    .line 167
    .line 168
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    sput-object v15, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 172
    .line 173
    new-instance v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 174
    .line 175
    const-string v13, "PAUSE_FAILED"

    .line 176
    .line 177
    move-object/from16 v18, v15

    .line 178
    .line 179
    const/16 v15, 0x10

    .line 180
    .line 181
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    sput-object v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 185
    .line 186
    new-instance v15, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 187
    .line 188
    const-string v13, "RESOURCES_AVAILABLE"

    .line 189
    .line 190
    move-object/from16 v19, v14

    .line 191
    .line 192
    const/16 v14, 0x11

    .line 193
    .line 194
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    sput-object v15, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 198
    .line 199
    new-instance v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 200
    .line 201
    const-string v13, "MODULE_DIED"

    .line 202
    .line 203
    move-object/from16 v20, v15

    .line 204
    .line 205
    const/16 v15, 0x12

    .line 206
    .line 207
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    sput-object v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 211
    .line 212
    move-object/from16 v13, v16

    .line 213
    .line 214
    move-object/from16 v16, v19

    .line 215
    .line 216
    move-object/from16 v19, v14

    .line 217
    .line 218
    move-object/from16 v14, v17

    .line 219
    .line 220
    move-object/from16 v17, v20

    .line 221
    .line 222
    move-object/from16 v15, v18

    .line 223
    .line 224
    move-object/from16 v18, v19

    .line 225
    .line 226
    filled-new-array/range {v0 .. v18}, [Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->$VALUES:[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 231
    .line 232
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->$VALUES:[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 8
    .line 9
    return-object v0
.end method
