.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 2
    .line 3
    const/16 v1, 0xc5

    .line 4
    .line 5
    const-string v2, "NOTIFICATION_OPEN"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 14
    .line 15
    const/16 v2, 0xc6

    .line 16
    .line 17
    const-string v3, "NOTIFICATION_CLOSE"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 26
    .line 27
    const/16 v3, 0x13d

    .line 28
    .line 29
    const-string v4, "NOTIFICATION_SNOOZED"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 36
    .line 37
    new-instance v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 38
    .line 39
    const/16 v4, 0x13f

    .line 40
    .line 41
    const-string v5, "NOTIFICATION_NOT_POSTED_SNOOZED"

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v6, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 48
    .line 49
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 50
    .line 51
    const/16 v5, 0x140

    .line 52
    .line 53
    const-string v6, "NOTIFICATION_CLICKED"

    .line 54
    .line 55
    const/4 v7, 0x4

    .line 56
    invoke-direct {v4, v7, v5, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 60
    .line 61
    new-instance v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 62
    .line 63
    const/16 v6, 0x141

    .line 64
    .line 65
    const-string v7, "NOTIFICATION_ACTION_CLICKED"

    .line 66
    .line 67
    const/4 v8, 0x5

    .line 68
    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 72
    .line 73
    new-instance v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 74
    .line 75
    const/16 v7, 0x147

    .line 76
    .line 77
    const-string v8, "NOTIFICATION_DETAIL_OPEN_SYSTEM"

    .line 78
    .line 79
    const/4 v9, 0x6

    .line 80
    invoke-direct {v6, v9, v7, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 84
    .line 85
    new-instance v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 86
    .line 87
    const/16 v8, 0x148

    .line 88
    .line 89
    const-string v9, "NOTIFICATION_DETAIL_CLOSE_SYSTEM"

    .line 90
    .line 91
    const/4 v10, 0x7

    .line 92
    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 96
    .line 97
    new-instance v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 98
    .line 99
    const/16 v9, 0x149

    .line 100
    .line 101
    const-string v10, "NOTIFICATION_DETAIL_OPEN_USER"

    .line 102
    .line 103
    const/16 v11, 0x8

    .line 104
    .line 105
    invoke-direct {v8, v11, v9, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 109
    .line 110
    new-instance v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 111
    .line 112
    const/16 v10, 0x14a

    .line 113
    .line 114
    const-string v11, "NOTIFICATION_DETAIL_CLOSE_USER"

    .line 115
    .line 116
    const/16 v12, 0x9

    .line 117
    .line 118
    invoke-direct {v9, v12, v10, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 122
    .line 123
    new-instance v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 124
    .line 125
    const/16 v11, 0x14b

    .line 126
    .line 127
    const-string v12, "NOTIFICATION_DIRECT_REPLIED"

    .line 128
    .line 129
    const/16 v13, 0xa

    .line 130
    .line 131
    invoke-direct {v10, v13, v11, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 135
    .line 136
    new-instance v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 137
    .line 138
    const/16 v12, 0x14c

    .line 139
    .line 140
    const-string v13, "NOTIFICATION_SMART_REPLIED"

    .line 141
    .line 142
    const/16 v14, 0xb

    .line 143
    .line 144
    invoke-direct {v11, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 148
    .line 149
    new-instance v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 150
    .line 151
    const/16 v13, 0x14d

    .line 152
    .line 153
    const-string v14, "NOTIFICATION_SMART_REPLY_VISIBLE"

    .line 154
    .line 155
    const/16 v15, 0xc

    .line 156
    .line 157
    invoke-direct {v12, v15, v13, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 161
    .line 162
    new-instance v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 163
    .line 164
    const/16 v14, 0x1c2

    .line 165
    .line 166
    const-string v15, "NOTIFICATION_ACTION_CLICKED_0"

    .line 167
    .line 168
    move-object/from16 v16, v12

    .line 169
    .line 170
    const/16 v12, 0xd

    .line 171
    .line 172
    invoke-direct {v13, v12, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 176
    .line 177
    const/16 v12, 0x1c3

    .line 178
    .line 179
    const-string v15, "NOTIFICATION_ACTION_CLICKED_1"

    .line 180
    .line 181
    move-object/from16 v17, v13

    .line 182
    .line 183
    const/16 v13, 0xe

    .line 184
    .line 185
    invoke-direct {v14, v13, v12, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 189
    .line 190
    const/16 v12, 0x1c4

    .line 191
    .line 192
    const-string v13, "NOTIFICATION_ACTION_CLICKED_2"

    .line 193
    .line 194
    move-object/from16 v18, v14

    .line 195
    .line 196
    const/16 v14, 0xf

    .line 197
    .line 198
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 202
    .line 203
    const/16 v12, 0x1c5

    .line 204
    .line 205
    const-string v13, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0"

    .line 206
    .line 207
    move-object/from16 v19, v15

    .line 208
    .line 209
    const/16 v15, 0x10

    .line 210
    .line 211
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 215
    .line 216
    const/16 v12, 0x1c6

    .line 217
    .line 218
    const-string v13, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1"

    .line 219
    .line 220
    move-object/from16 v20, v14

    .line 221
    .line 222
    const/16 v14, 0x11

    .line 223
    .line 224
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 228
    .line 229
    const/16 v12, 0x1c7

    .line 230
    .line 231
    const-string v13, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2"

    .line 232
    .line 233
    move-object/from16 v21, v15

    .line 234
    .line 235
    const/16 v15, 0x12

    .line 236
    .line 237
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 241
    .line 242
    const/16 v12, 0x1c8

    .line 243
    .line 244
    const-string v13, "NOTIFICATION_ASSIST_ACTION_CLICKED_0"

    .line 245
    .line 246
    move-object/from16 v22, v14

    .line 247
    .line 248
    const/16 v14, 0x13

    .line 249
    .line 250
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 254
    .line 255
    const/16 v12, 0x1c9

    .line 256
    .line 257
    const-string v13, "NOTIFICATION_ASSIST_ACTION_CLICKED_1"

    .line 258
    .line 259
    move-object/from16 v23, v15

    .line 260
    .line 261
    const/16 v15, 0x14

    .line 262
    .line 263
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 267
    .line 268
    const/16 v12, 0x1ca

    .line 269
    .line 270
    const-string v13, "NOTIFICATION_ASSIST_ACTION_CLICKED_2"

    .line 271
    .line 272
    move-object/from16 v24, v14

    .line 273
    .line 274
    const/16 v14, 0x15

    .line 275
    .line 276
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(IILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    move-object/from16 v12, v16

    .line 280
    .line 281
    move-object/from16 v13, v17

    .line 282
    .line 283
    move-object/from16 v16, v20

    .line 284
    .line 285
    move-object/from16 v20, v22

    .line 286
    .line 287
    move-object/from16 v22, v24

    .line 288
    .line 289
    move-object/from16 v14, v18

    .line 290
    .line 291
    move-object/from16 v17, v21

    .line 292
    .line 293
    move-object/from16 v21, v23

    .line 294
    .line 295
    move-object/from16 v23, v15

    .line 296
    .line 297
    move-object/from16 v15, v19

    .line 298
    .line 299
    move-object/from16 v18, v20

    .line 300
    .line 301
    move-object/from16 v19, v21

    .line 302
    .line 303
    move-object/from16 v20, v22

    .line 304
    .line 305
    move-object/from16 v21, v23

    .line 306
    .line 307
    filled-new-array/range {v0 .. v21}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 312
    .line 313
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
