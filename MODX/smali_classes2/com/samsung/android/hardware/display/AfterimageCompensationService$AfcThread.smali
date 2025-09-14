.class public final Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDataValid:Z

.field public mNormalValid:Z

.field public rotation:I

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 3
    :try_start_0
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4
    .line 5
    iget-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 6
    .line 7
    if-eqz v4, :cond_2d

    .line 8
    .line 9
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    :try_start_1
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 31
    .line 32
    .line 33
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object v3, v0

    .line 38
    goto/16 :goto_19

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    move-object v3, v0

    .line 42
    goto/16 :goto_17

    .line 43
    .line 44
    :catch_1
    :try_start_2
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 48
    .line 49
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 56
    .line 57
    :cond_2
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2c

    .line 64
    .line 65
    const-string/jumbo v3, "service.camera.running"

    .line 66
    .line 67
    .line 68
    const-string v5, "0"

    .line 69
    .line 70
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v5, "1"

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    const-string/jumbo v3, "service.camera.sfs.running"

    .line 83
    .line 84
    .line 85
    const-string v5, "0"

    .line 86
    .line 87
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v5, "0"

    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 100
    .line 101
    iput-boolean v2, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 105
    .line 106
    iput-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 107
    .line 108
    :goto_2
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 109
    .line 110
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_2c

    .line 115
    .line 116
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 117
    .line 118
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_4

    .line 123
    .line 124
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 125
    .line 126
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_2c

    .line 131
    .line 132
    :cond_4
    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 133
    .line 134
    const/16 v5, 0xb

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 139
    .line 140
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 145
    .line 146
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 147
    .line 148
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_6

    .line 153
    .line 154
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 155
    .line 156
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_6

    .line 161
    .line 162
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 163
    .line 164
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    if-nez v3, :cond_6

    .line 170
    .line 171
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 172
    .line 173
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 178
    .line 179
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 180
    .line 181
    iget v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 182
    .line 183
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 187
    .line 188
    iget v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 189
    .line 190
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 191
    .line 192
    .line 193
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 194
    .line 195
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-lt v3, v5, :cond_6

    .line 200
    .line 201
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 202
    .line 203
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_6

    .line 208
    .line 209
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 210
    .line 211
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    :cond_6
    :goto_3
    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 216
    .line 217
    const/4 v6, 0x3

    .line 218
    const/4 v7, 0x5

    .line 219
    const/4 v8, 0x2

    .line 220
    if-eqz v3, :cond_13

    .line 221
    .line 222
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 223
    .line 224
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 237
    .line 238
    const/4 v9, -0x1

    .line 239
    if-eqz v3, :cond_9

    .line 240
    .line 241
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 242
    .line 243
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 256
    .line 257
    if-ne v3, v9, :cond_7

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_7
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 261
    .line 262
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 275
    .line 276
    if-ne v3, v7, :cond_b

    .line 277
    .line 278
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 279
    .line 280
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_8

    .line 285
    .line 286
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 287
    .line 288
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 293
    .line 294
    iget v11, v11, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    .line 295
    .line 296
    add-int/2addr v10, v11

    .line 297
    iput v10, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_8
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 301
    .line 302
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_b

    .line 307
    .line 308
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 309
    .line 310
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 315
    .line 316
    iget v11, v11, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    .line 317
    .line 318
    mul-int/2addr v11, v8

    .line 319
    add-int/2addr v11, v10

    .line 320
    iput v11, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_9
    :goto_4
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 324
    .line 325
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_a

    .line 330
    .line 331
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 332
    .line 333
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 338
    .line 339
    iget v11, v11, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    .line 340
    .line 341
    add-int/2addr v10, v11

    .line 342
    invoke-static {v3, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_a
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 347
    .line 348
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_b

    .line 353
    .line 354
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 355
    .line 356
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 361
    .line 362
    iget v11, v11, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    .line 363
    .line 364
    mul-int/2addr v11, v8

    .line 365
    add-int/2addr v11, v10

    .line 366
    invoke-static {v3, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 367
    .line 368
    .line 369
    :cond_b
    :goto_5
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 370
    .line 371
    iget-object v3, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    .line 372
    .line 373
    if-eqz v3, :cond_10

    .line 374
    .line 375
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_f

    .line 384
    .line 385
    if-eq v3, v2, :cond_e

    .line 386
    .line 387
    if-eq v3, v8, :cond_d

    .line 388
    .line 389
    if-eq v3, v6, :cond_c

    .line 390
    .line 391
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_c
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_d
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_e
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_f
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 404
    .line 405
    :cond_10
    :goto_6
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 406
    .line 407
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 420
    .line 421
    if-eqz v3, :cond_12

    .line 422
    .line 423
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 424
    .line 425
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 438
    .line 439
    if-ne v3, v9, :cond_11

    .line 440
    .line 441
    goto/16 :goto_7

    .line 442
    .line 443
    :cond_11
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 444
    .line 445
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 458
    .line 459
    if-ne v3, v7, :cond_13

    .line 460
    .line 461
    const-string v3, "AfterimageCompensationService"

    .line 462
    .line 463
    new-instance v9, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string v10, "AfcThread mLuminance_sub : "

    .line 469
    .line 470
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 474
    .line 475
    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    .line 476
    .line 477
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v10, " , AfpcPeriodCount_sub : "

    .line 481
    .line 482
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 486
    .line 487
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 488
    .line 489
    .line 490
    move-result v10

    .line 491
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const-string v10, " , rotation : "

    .line 495
    .line 496
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 500
    .line 501
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v10, " , AOD : "

    .line 505
    .line 506
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 510
    .line 511
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 512
    .line 513
    .line 514
    move-result v10

    .line 515
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 526
    .line 527
    iget v9, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    .line 528
    .line 529
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 534
    .line 535
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 536
    .line 537
    invoke-static {v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 538
    .line 539
    .line 540
    move-result v11

    .line 541
    invoke-static {v9, v3, v10, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadSub(IIIZ)V

    .line 542
    .line 543
    .line 544
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 545
    .line 546
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-eqz v3, :cond_13

    .line 551
    .line 552
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 553
    .line 554
    iput-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 555
    .line 556
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 557
    .line 558
    .line 559
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    if-eqz v3, :cond_13

    .line 561
    .line 562
    :try_start_3
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 563
    .line 564
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 569
    :try_start_4
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 570
    .line 571
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 576
    .line 577
    .line 578
    monitor-exit v3

    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :catchall_1
    move-exception v0

    .line 582
    move-object v5, v0

    .line 583
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 584
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 585
    :catch_2
    :try_start_6
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :cond_12
    :goto_7
    const-string v3, "AfterimageCompensationService"

    .line 590
    .line 591
    new-instance v9, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .line 595
    .line 596
    const-string v10, "AfcThread mLuminance : "

    .line 597
    .line 598
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 602
    .line 603
    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 604
    .line 605
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v10, " , AfpcPeriodCount : "

    .line 609
    .line 610
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 614
    .line 615
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 616
    .line 617
    .line 618
    move-result v10

    .line 619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    const-string v10, " , rotation : "

    .line 623
    .line 624
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 628
    .line 629
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v10, " , AOD : "

    .line 633
    .line 634
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 638
    .line 639
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 640
    .line 641
    .line 642
    move-result v10

    .line 643
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v9

    .line 650
    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 654
    .line 655
    iget v9, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 656
    .line 657
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 662
    .line 663
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 664
    .line 665
    invoke-static {v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 666
    .line 667
    .line 668
    move-result v11

    .line 669
    invoke-static {v9, v3, v10, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataRead(IIIZ)V

    .line 670
    .line 671
    .line 672
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 673
    .line 674
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    if-eqz v3, :cond_13

    .line 679
    .line 680
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 681
    .line 682
    iput-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 683
    .line 684
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 685
    .line 686
    .line 687
    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 688
    if-eqz v3, :cond_13

    .line 689
    .line 690
    :try_start_7
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 691
    .line 692
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 697
    :try_start_8
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 698
    .line 699
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 704
    .line 705
    .line 706
    monitor-exit v3

    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :catchall_2
    move-exception v0

    .line 710
    move-object v5, v0

    .line 711
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 712
    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 713
    :catch_3
    :try_start_a
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 714
    .line 715
    goto/16 :goto_0

    .line 716
    .line 717
    :cond_13
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 718
    .line 719
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 724
    .line 725
    iget v10, v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 726
    .line 727
    if-lt v3, v10, :cond_29

    .line 728
    .line 729
    invoke-static {v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    const/4 v9, 0x0

    .line 734
    if-ne v3, v8, :cond_14

    .line 735
    .line 736
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 737
    .line 738
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    if-nez v3, :cond_29

    .line 747
    .line 748
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 749
    .line 750
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 751
    .line 752
    .line 753
    const-string v3, "AfterimageCompensationService"

    .line 754
    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    const-string v7, "mApplyValue : "

    .line 761
    .line 762
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 766
    .line 767
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 768
    .line 769
    .line 770
    move-result v7

    .line 771
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v6

    .line 778
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 779
    .line 780
    .line 781
    :try_start_b
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 786
    .line 787
    const-string v7, "%.2f"

    .line 788
    .line 789
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 802
    .line 803
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    invoke-static {v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 808
    .line 809
    .line 810
    goto :goto_8

    .line 811
    :catch_4
    move-exception v0

    .line 812
    move-object v3, v0

    .line 813
    :try_start_c
    const-string v6, "AfterimageCompensationService"

    .line 814
    .line 815
    new-instance v7, Ljava/lang/StringBuilder;

    .line 816
    .line 817
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .line 819
    .line 820
    const-string v8, "NumberFormatException : "

    .line 821
    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .line 834
    .line 835
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 836
    .line 837
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 838
    .line 839
    .line 840
    :goto_8
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 841
    .line 842
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 843
    .line 844
    .line 845
    goto/16 :goto_14

    .line 846
    .line 847
    :cond_14
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 848
    .line 849
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 850
    .line 851
    .line 852
    move-result v3

    .line 853
    const/4 v8, 0x4

    .line 854
    if-ne v3, v8, :cond_17

    .line 855
    .line 856
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 857
    .line 858
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 863
    .line 864
    .line 865
    move-result v3

    .line 866
    if-nez v3, :cond_29

    .line 867
    .line 868
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 869
    .line 870
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 871
    .line 872
    .line 873
    const-string v3, "AfterimageCompensationService"

    .line 874
    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    .line 876
    .line 877
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .line 879
    .line 880
    const-string v7, "mApplyValue : "

    .line 881
    .line 882
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 886
    .line 887
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 888
    .line 889
    .line 890
    move-result v7

    .line 891
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v6

    .line 898
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 899
    .line 900
    .line 901
    :try_start_d
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 906
    .line 907
    const-string v7, "%.2f"

    .line 908
    .line 909
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 922
    .line 923
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    invoke-static {v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 928
    .line 929
    .line 930
    goto :goto_9

    .line 931
    :catch_5
    move-exception v0

    .line 932
    move-object v3, v0

    .line 933
    :try_start_e
    const-string v6, "AfterimageCompensationService"

    .line 934
    .line 935
    new-instance v7, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .line 939
    .line 940
    const-string v8, "NumberFormatException : "

    .line 941
    .line 942
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    .line 954
    .line 955
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 956
    .line 957
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 958
    .line 959
    .line 960
    :goto_9
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 961
    .line 962
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 963
    .line 964
    .line 965
    move-result v3

    .line 966
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 967
    .line 968
    iget-object v7, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    .line 969
    .line 970
    array-length v7, v7

    .line 971
    if-ge v3, v7, :cond_16

    .line 972
    .line 973
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 978
    .line 979
    iget-object v7, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    .line 980
    .line 981
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 982
    .line 983
    .line 984
    move-result v6

    .line 985
    aget v6, v7, v6

    .line 986
    .line 987
    cmpl-float v3, v3, v6

    .line 988
    .line 989
    if-ltz v3, :cond_16

    .line 990
    .line 991
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 992
    .line 993
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 994
    .line 995
    .line 996
    move-result v3

    .line 997
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataWriteV2(I)I

    .line 998
    .line 999
    .line 1000
    move-result v3

    .line 1001
    if-nez v3, :cond_15

    .line 1002
    .line 1003
    new-instance v3, Landroid/content/Intent;

    .line 1004
    .line 1005
    const-string v6, "com.samsung.android.sm.ACTION_ABC_SOLUTION"

    .line 1006
    .line 1007
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    const-string v7, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 1015
    .line 1016
    const-string v8, "com.samsung.android.lool"

    .line 1017
    .line 1018
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v6

    .line 1022
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    .line 1024
    .line 1025
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1026
    .line 1027
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v6

    .line 1031
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1032
    .line 1033
    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1034
    .line 1035
    .line 1036
    :cond_15
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1042
    .line 1043
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v6

    .line 1047
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    const-string v6, " "

    .line 1051
    .line 1052
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1056
    .line 1057
    const-string v7, "%.2f"

    .line 1058
    .line 1059
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1060
    .line 1061
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 1062
    .line 1063
    .line 1064
    move-result v8

    .line 1065
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v8

    .line 1069
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v8

    .line 1073
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v6

    .line 1077
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v3

    .line 1084
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1085
    .line 1086
    const-string v7, "/efs/afc/apply_count"

    .line 1087
    .line 1088
    invoke-static {v6, v7, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    const-string v6, "AfterimageCompensationService"

    .line 1092
    .line 1093
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    .line 1097
    .line 1098
    const-string v8, "afpcDataWrite - str : "

    .line 1099
    .line 1100
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v3

    .line 1110
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1111
    .line 1112
    .line 1113
    goto :goto_a

    .line 1114
    :catch_6
    move-exception v0

    .line 1115
    move-object v3, v0

    .line 1116
    :try_start_10
    const-string v6, "AfterimageCompensationService"

    .line 1117
    .line 1118
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    const-string v8, "NumberFormatException : "

    .line 1124
    .line 1125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .line 1137
    .line 1138
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1139
    .line 1140
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1141
    .line 1142
    .line 1143
    :cond_16
    :goto_a
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1144
    .line 1145
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_14

    .line 1149
    .line 1150
    :cond_17
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1151
    .line 1152
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1153
    .line 1154
    .line 1155
    move-result v3

    .line 1156
    const/16 v8, 0xa

    .line 1157
    .line 1158
    if-ne v3, v6, :cond_19

    .line 1159
    .line 1160
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1161
    .line 1162
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1163
    .line 1164
    .line 1165
    move-result v3

    .line 1166
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 1167
    .line 1168
    .line 1169
    move-result v3

    .line 1170
    if-nez v3, :cond_29

    .line 1171
    .line 1172
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1173
    .line 1174
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1175
    .line 1176
    .line 1177
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1178
    .line 1179
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 1180
    .line 1181
    .line 1182
    move-result-wide v6

    .line 1183
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1184
    .line 1185
    .line 1186
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1187
    .line 1188
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 1189
    .line 1190
    .line 1191
    move-result-wide v6

    .line 1192
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1193
    .line 1194
    .line 1195
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1196
    .line 1197
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 1198
    .line 1199
    .line 1200
    move-result-wide v6

    .line 1201
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1202
    .line 1203
    .line 1204
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1205
    .line 1206
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 1207
    .line 1208
    .line 1209
    move-result-wide v6

    .line 1210
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1211
    .line 1212
    .line 1213
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1214
    .line 1215
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 1216
    .line 1217
    .line 1218
    move-result-wide v6

    .line 1219
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1223
    .line 1224
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 1225
    .line 1226
    .line 1227
    move-result-wide v6

    .line 1228
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1229
    .line 1230
    .line 1231
    const-string v3, "AfterimageCompensationService"

    .line 1232
    .line 1233
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1236
    .line 1237
    .line 1238
    const-string v7, "mAvgLum : "

    .line 1239
    .line 1240
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1244
    .line 1245
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v11

    .line 1249
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    .line 1252
    const-string v7, ", mMaxBDI : "

    .line 1253
    .line 1254
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1258
    .line 1259
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1260
    .line 1261
    .line 1262
    move-result-wide v11

    .line 1263
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    .line 1266
    const-string v7, ", mNBDI : "

    .line 1267
    .line 1268
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1272
    .line 1273
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1274
    .line 1275
    .line 1276
    move-result-wide v11

    .line 1277
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v6

    .line 1284
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    .line 1286
    .line 1287
    const-string v3, "AfterimageCompensationService"

    .line 1288
    .line 1289
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1290
    .line 1291
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1292
    .line 1293
    .line 1294
    const-string v7, "mEffAvgLum : "

    .line 1295
    .line 1296
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1300
    .line 1301
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1302
    .line 1303
    .line 1304
    move-result-wide v11

    .line 1305
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    const-string v7, ", mEffMaxBDI : "

    .line 1309
    .line 1310
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1314
    .line 1315
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1316
    .line 1317
    .line 1318
    move-result-wide v11

    .line 1319
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    const-string v7, ", mEffNBDI : "

    .line 1323
    .line 1324
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1328
    .line 1329
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1330
    .line 1331
    .line 1332
    move-result-wide v11

    .line 1333
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v6

    .line 1340
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    .line 1342
    .line 1343
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1344
    .line 1345
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1346
    .line 1347
    .line 1348
    move-result-wide v6

    .line 1349
    const-wide v11, 0x4072c00000000000L    # 300.0

    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    cmpl-double v3, v6, v11

    .line 1355
    .line 1356
    if-ltz v3, :cond_18

    .line 1357
    .line 1358
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1359
    .line 1360
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1361
    .line 1362
    .line 1363
    move-result v3

    .line 1364
    if-ge v3, v8, :cond_18

    .line 1365
    .line 1366
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1367
    .line 1368
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1369
    .line 1370
    .line 1371
    move-result-wide v6

    .line 1372
    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    .line 1373
    .line 1374
    cmpl-double v3, v6, v11

    .line 1375
    .line 1376
    if-ltz v3, :cond_18

    .line 1377
    .line 1378
    const-string v3, "AfterimageCompensationService"

    .line 1379
    .line 1380
    const-string/jumbo v6, "nativeDataUpdate"

    .line 1381
    .line 1382
    .line 1383
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    .line 1385
    .line 1386
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1387
    .line 1388
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1389
    .line 1390
    .line 1391
    move-result v3

    .line 1392
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 1393
    .line 1394
    .line 1395
    move-result v3

    .line 1396
    if-nez v3, :cond_18

    .line 1397
    .line 1398
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1399
    .line 1400
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1401
    .line 1402
    .line 1403
    move-result v6

    .line 1404
    add-int/2addr v6, v2

    .line 1405
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1406
    .line 1407
    .line 1408
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1409
    .line 1410
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1411
    .line 1412
    .line 1413
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1414
    .line 1415
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1416
    .line 1417
    .line 1418
    move-result v6

    .line 1419
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    .line 1422
    const-string v6, " "

    .line 1423
    .line 1424
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    .line 1427
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1428
    .line 1429
    const-string v7, "%.2f"

    .line 1430
    .line 1431
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1432
    .line 1433
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 1434
    .line 1435
    .line 1436
    move-result v8

    .line 1437
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v8

    .line 1441
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v8

    .line 1445
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v6

    .line 1449
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v3

    .line 1456
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1457
    .line 1458
    const-string v7, "/efs/afc/apply_count"

    .line 1459
    .line 1460
    invoke-static {v6, v7, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    const-string v6, "AfterimageCompensationService"

    .line 1464
    .line 1465
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    const-string/jumbo v8, "nativeDataUpdate - str : "

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1484
    .line 1485
    .line 1486
    goto :goto_b

    .line 1487
    :catch_7
    move-exception v0

    .line 1488
    move-object v3, v0

    .line 1489
    :try_start_12
    const-string v6, "AfterimageCompensationService"

    .line 1490
    .line 1491
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    .line 1495
    .line 1496
    const-string v8, "NumberFormatException : "

    .line 1497
    .line 1498
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v3

    .line 1508
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .line 1510
    .line 1511
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1512
    .line 1513
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1514
    .line 1515
    .line 1516
    :cond_18
    :goto_b
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1517
    .line 1518
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1519
    .line 1520
    .line 1521
    goto/16 :goto_14

    .line 1522
    .line 1523
    :cond_19
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1524
    .line 1525
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1526
    .line 1527
    .line 1528
    move-result v3

    .line 1529
    if-ne v3, v7, :cond_1b

    .line 1530
    .line 1531
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1532
    .line 1533
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1534
    .line 1535
    .line 1536
    move-result v3

    .line 1537
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 1538
    .line 1539
    .line 1540
    move-result v3

    .line 1541
    if-nez v3, :cond_29

    .line 1542
    .line 1543
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1544
    .line 1545
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1546
    .line 1547
    .line 1548
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1549
    .line 1550
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 1551
    .line 1552
    .line 1553
    move-result-wide v6

    .line 1554
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1555
    .line 1556
    .line 1557
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1558
    .line 1559
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 1560
    .line 1561
    .line 1562
    move-result-wide v6

    .line 1563
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1564
    .line 1565
    .line 1566
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1567
    .line 1568
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 1569
    .line 1570
    .line 1571
    move-result-wide v6

    .line 1572
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1573
    .line 1574
    .line 1575
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1576
    .line 1577
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 1578
    .line 1579
    .line 1580
    move-result-wide v6

    .line 1581
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1582
    .line 1583
    .line 1584
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1585
    .line 1586
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 1587
    .line 1588
    .line 1589
    move-result-wide v6

    .line 1590
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1591
    .line 1592
    .line 1593
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1594
    .line 1595
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 1596
    .line 1597
    .line 1598
    move-result-wide v6

    .line 1599
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1600
    .line 1601
    .line 1602
    const-string v3, "AfterimageCompensationService"

    .line 1603
    .line 1604
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1605
    .line 1606
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1607
    .line 1608
    .line 1609
    const-string v7, "mAvgLum : "

    .line 1610
    .line 1611
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1615
    .line 1616
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1617
    .line 1618
    .line 1619
    move-result-wide v7

    .line 1620
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    const-string v7, ", mMaxBDI : "

    .line 1624
    .line 1625
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    .line 1627
    .line 1628
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1629
    .line 1630
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1631
    .line 1632
    .line 1633
    move-result-wide v7

    .line 1634
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1635
    .line 1636
    .line 1637
    const-string v7, ", mNBDI : "

    .line 1638
    .line 1639
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    .line 1641
    .line 1642
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1643
    .line 1644
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1645
    .line 1646
    .line 1647
    move-result-wide v7

    .line 1648
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v6

    .line 1655
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .line 1657
    .line 1658
    const-string v3, "AfterimageCompensationService"

    .line 1659
    .line 1660
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1663
    .line 1664
    .line 1665
    const-string v7, "mEffAvgLum : "

    .line 1666
    .line 1667
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    .line 1669
    .line 1670
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1671
    .line 1672
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1673
    .line 1674
    .line 1675
    move-result-wide v7

    .line 1676
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    const-string v7, ", mEffMaxBDI : "

    .line 1680
    .line 1681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    .line 1683
    .line 1684
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1685
    .line 1686
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1687
    .line 1688
    .line 1689
    move-result-wide v7

    .line 1690
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1691
    .line 1692
    .line 1693
    const-string v7, ", mEffNBDI : "

    .line 1694
    .line 1695
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    .line 1697
    .line 1698
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1699
    .line 1700
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1701
    .line 1702
    .line 1703
    move-result-wide v7

    .line 1704
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v6

    .line 1711
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    .line 1713
    .line 1714
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1715
    .line 1716
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1717
    .line 1718
    .line 1719
    move-result v3

    .line 1720
    const/16 v6, 0x14

    .line 1721
    .line 1722
    if-ge v3, v6, :cond_1a

    .line 1723
    .line 1724
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1725
    .line 1726
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1727
    .line 1728
    .line 1729
    move-result-wide v6

    .line 1730
    const-wide v11, 0x4052c00000000000L    # 75.0

    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    cmpl-double v3, v6, v11

    .line 1736
    .line 1737
    if-ltz v3, :cond_1a

    .line 1738
    .line 1739
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1740
    .line 1741
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1742
    .line 1743
    .line 1744
    move-result-wide v6

    .line 1745
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1746
    .line 1747
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 1748
    .line 1749
    .line 1750
    move-result-object v3

    .line 1751
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1752
    .line 1753
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1754
    .line 1755
    .line 1756
    move-result v8

    .line 1757
    aget v3, v3, v8

    .line 1758
    .line 1759
    float-to-double v11, v3

    .line 1760
    cmpl-double v3, v6, v11

    .line 1761
    .line 1762
    if-ltz v3, :cond_1a

    .line 1763
    .line 1764
    const-string v3, "AfterimageCompensationService"

    .line 1765
    .line 1766
    const-string/jumbo v6, "nativeDataUpdate"

    .line 1767
    .line 1768
    .line 1769
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    .line 1771
    .line 1772
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1773
    .line 1774
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1775
    .line 1776
    .line 1777
    move-result v3

    .line 1778
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 1779
    .line 1780
    .line 1781
    move-result v3

    .line 1782
    if-nez v3, :cond_1a

    .line 1783
    .line 1784
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1785
    .line 1786
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1787
    .line 1788
    .line 1789
    move-result v6

    .line 1790
    add-int/2addr v6, v2

    .line 1791
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1792
    .line 1793
    .line 1794
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1795
    .line 1796
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1797
    .line 1798
    .line 1799
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1800
    .line 1801
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1802
    .line 1803
    .line 1804
    move-result v6

    .line 1805
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    .line 1808
    const-string v6, " "

    .line 1809
    .line 1810
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    .line 1812
    .line 1813
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1814
    .line 1815
    const-string v7, "%.2f"

    .line 1816
    .line 1817
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1818
    .line 1819
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 1820
    .line 1821
    .line 1822
    move-result v8

    .line 1823
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v8

    .line 1827
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v8

    .line 1831
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v6

    .line 1835
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v3

    .line 1842
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1843
    .line 1844
    const-string v7, "/efs/afc/apply_count"

    .line 1845
    .line 1846
    invoke-static {v6, v7, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    .line 1848
    .line 1849
    const-string v6, "AfterimageCompensationService"

    .line 1850
    .line 1851
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1852
    .line 1853
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1854
    .line 1855
    .line 1856
    const-string/jumbo v8, "nativeDataUpdate - str : "

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    .line 1864
    .line 1865
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v3

    .line 1869
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1870
    .line 1871
    .line 1872
    goto :goto_c

    .line 1873
    :catch_8
    move-exception v0

    .line 1874
    move-object v3, v0

    .line 1875
    :try_start_14
    const-string v6, "AfterimageCompensationService"

    .line 1876
    .line 1877
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1878
    .line 1879
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1880
    .line 1881
    .line 1882
    const-string v8, "NumberFormatException : "

    .line 1883
    .line 1884
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1888
    .line 1889
    .line 1890
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v3

    .line 1894
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    .line 1896
    .line 1897
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1898
    .line 1899
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1900
    .line 1901
    .line 1902
    :cond_1a
    :goto_c
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1903
    .line 1904
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1905
    .line 1906
    .line 1907
    goto/16 :goto_14

    .line 1908
    .line 1909
    :cond_1b
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1910
    .line 1911
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1912
    .line 1913
    .line 1914
    move-result v3

    .line 1915
    const/4 v6, 0x6

    .line 1916
    const-wide v11, 0x4051800000000000L    # 70.0

    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    const/16 v7, 0x1e

    .line 1922
    .line 1923
    if-ne v3, v6, :cond_1d

    .line 1924
    .line 1925
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1926
    .line 1927
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1928
    .line 1929
    .line 1930
    move-result v3

    .line 1931
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 1932
    .line 1933
    .line 1934
    move-result v3

    .line 1935
    if-nez v3, :cond_29

    .line 1936
    .line 1937
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1938
    .line 1939
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1940
    .line 1941
    .line 1942
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1943
    .line 1944
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 1945
    .line 1946
    .line 1947
    move-result-wide v5

    .line 1948
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1949
    .line 1950
    .line 1951
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1952
    .line 1953
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 1954
    .line 1955
    .line 1956
    move-result-wide v5

    .line 1957
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1958
    .line 1959
    .line 1960
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1961
    .line 1962
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 1963
    .line 1964
    .line 1965
    move-result-wide v5

    .line 1966
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1967
    .line 1968
    .line 1969
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1970
    .line 1971
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 1972
    .line 1973
    .line 1974
    move-result-wide v5

    .line 1975
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1976
    .line 1977
    .line 1978
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1979
    .line 1980
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 1981
    .line 1982
    .line 1983
    move-result-wide v5

    .line 1984
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1985
    .line 1986
    .line 1987
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1988
    .line 1989
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 1990
    .line 1991
    .line 1992
    move-result-wide v5

    .line 1993
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1994
    .line 1995
    .line 1996
    const-string v3, "AfterimageCompensationService"

    .line 1997
    .line 1998
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1999
    .line 2000
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2001
    .line 2002
    .line 2003
    const-string v6, "mAvgLum : "

    .line 2004
    .line 2005
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    .line 2007
    .line 2008
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2009
    .line 2010
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2011
    .line 2012
    .line 2013
    move-result-wide v13

    .line 2014
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2015
    .line 2016
    .line 2017
    const-string v6, ", mMaxBDI : "

    .line 2018
    .line 2019
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    .line 2021
    .line 2022
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2023
    .line 2024
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2025
    .line 2026
    .line 2027
    move-result-wide v13

    .line 2028
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2029
    .line 2030
    .line 2031
    const-string v6, ", mNBDI : "

    .line 2032
    .line 2033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    .line 2035
    .line 2036
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2037
    .line 2038
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2039
    .line 2040
    .line 2041
    move-result-wide v13

    .line 2042
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2043
    .line 2044
    .line 2045
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v5

    .line 2049
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    .line 2051
    .line 2052
    const-string v3, "AfterimageCompensationService"

    .line 2053
    .line 2054
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2055
    .line 2056
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2057
    .line 2058
    .line 2059
    const-string v6, "mEffAvgLum : "

    .line 2060
    .line 2061
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    .line 2063
    .line 2064
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2065
    .line 2066
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2067
    .line 2068
    .line 2069
    move-result-wide v13

    .line 2070
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2071
    .line 2072
    .line 2073
    const-string v6, ", mEffMaxBDI : "

    .line 2074
    .line 2075
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    .line 2077
    .line 2078
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2079
    .line 2080
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2081
    .line 2082
    .line 2083
    move-result-wide v13

    .line 2084
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2085
    .line 2086
    .line 2087
    const-string v6, ", mEffNBDI : "

    .line 2088
    .line 2089
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    .line 2091
    .line 2092
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2093
    .line 2094
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2095
    .line 2096
    .line 2097
    move-result-wide v13

    .line 2098
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v5

    .line 2105
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    .line 2107
    .line 2108
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2109
    .line 2110
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2111
    .line 2112
    .line 2113
    move-result v3

    .line 2114
    if-ge v3, v7, :cond_1c

    .line 2115
    .line 2116
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2117
    .line 2118
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2119
    .line 2120
    .line 2121
    move-result-wide v5

    .line 2122
    cmpl-double v3, v5, v11

    .line 2123
    .line 2124
    if-ltz v3, :cond_1c

    .line 2125
    .line 2126
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2127
    .line 2128
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2129
    .line 2130
    .line 2131
    move-result-wide v5

    .line 2132
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2133
    .line 2134
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 2135
    .line 2136
    .line 2137
    move-result-object v3

    .line 2138
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2139
    .line 2140
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2141
    .line 2142
    .line 2143
    move-result v7

    .line 2144
    aget v3, v3, v7

    .line 2145
    .line 2146
    float-to-double v7, v3

    .line 2147
    cmpl-double v3, v5, v7

    .line 2148
    .line 2149
    if-ltz v3, :cond_1c

    .line 2150
    .line 2151
    const-string v3, "AfterimageCompensationService"

    .line 2152
    .line 2153
    const-string/jumbo v5, "nativeDataUpdate"

    .line 2154
    .line 2155
    .line 2156
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    .line 2158
    .line 2159
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2160
    .line 2161
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2162
    .line 2163
    .line 2164
    move-result v3

    .line 2165
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 2166
    .line 2167
    .line 2168
    move-result v3

    .line 2169
    if-nez v3, :cond_1c

    .line 2170
    .line 2171
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2172
    .line 2173
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2174
    .line 2175
    .line 2176
    move-result v5

    .line 2177
    add-int/2addr v5, v2

    .line 2178
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 2179
    .line 2180
    .line 2181
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2182
    .line 2183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2184
    .line 2185
    .line 2186
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2187
    .line 2188
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2189
    .line 2190
    .line 2191
    move-result v5

    .line 2192
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2193
    .line 2194
    .line 2195
    const-string v5, " "

    .line 2196
    .line 2197
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    .line 2199
    .line 2200
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2201
    .line 2202
    const-string v6, "%.2f"

    .line 2203
    .line 2204
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2205
    .line 2206
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 2207
    .line 2208
    .line 2209
    move-result v7

    .line 2210
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v7

    .line 2214
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v7

    .line 2218
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v5

    .line 2222
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    .line 2224
    .line 2225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v3

    .line 2229
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2230
    .line 2231
    const-string v6, "/efs/afc/apply_count"

    .line 2232
    .line 2233
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    .line 2235
    .line 2236
    const-string v5, "AfterimageCompensationService"

    .line 2237
    .line 2238
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2239
    .line 2240
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2241
    .line 2242
    .line 2243
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    .line 2251
    .line 2252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v3

    .line 2256
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2257
    .line 2258
    .line 2259
    goto :goto_d

    .line 2260
    :catch_9
    move-exception v0

    .line 2261
    move-object v3, v0

    .line 2262
    :try_start_16
    const-string v5, "AfterimageCompensationService"

    .line 2263
    .line 2264
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2265
    .line 2266
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2267
    .line 2268
    .line 2269
    const-string v7, "NumberFormatException : "

    .line 2270
    .line 2271
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2275
    .line 2276
    .line 2277
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2278
    .line 2279
    .line 2280
    move-result-object v3

    .line 2281
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    .line 2283
    .line 2284
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2285
    .line 2286
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 2287
    .line 2288
    .line 2289
    :cond_1c
    :goto_d
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2290
    .line 2291
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 2292
    .line 2293
    .line 2294
    goto/16 :goto_14

    .line 2295
    .line 2296
    :cond_1d
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2297
    .line 2298
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2299
    .line 2300
    .line 2301
    move-result v3

    .line 2302
    const/4 v5, 0x7

    .line 2303
    if-ne v3, v5, :cond_1f

    .line 2304
    .line 2305
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2306
    .line 2307
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2308
    .line 2309
    .line 2310
    move-result v3

    .line 2311
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 2312
    .line 2313
    .line 2314
    move-result v3

    .line 2315
    if-nez v3, :cond_29

    .line 2316
    .line 2317
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2318
    .line 2319
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 2320
    .line 2321
    .line 2322
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2323
    .line 2324
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 2325
    .line 2326
    .line 2327
    move-result-wide v5

    .line 2328
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2329
    .line 2330
    .line 2331
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2332
    .line 2333
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 2334
    .line 2335
    .line 2336
    move-result-wide v5

    .line 2337
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2338
    .line 2339
    .line 2340
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2341
    .line 2342
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 2343
    .line 2344
    .line 2345
    move-result-wide v5

    .line 2346
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2347
    .line 2348
    .line 2349
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2350
    .line 2351
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 2352
    .line 2353
    .line 2354
    move-result-wide v5

    .line 2355
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2356
    .line 2357
    .line 2358
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2359
    .line 2360
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 2361
    .line 2362
    .line 2363
    move-result-wide v5

    .line 2364
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2365
    .line 2366
    .line 2367
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2368
    .line 2369
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 2370
    .line 2371
    .line 2372
    move-result-wide v5

    .line 2373
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2374
    .line 2375
    .line 2376
    const-string v3, "AfterimageCompensationService"

    .line 2377
    .line 2378
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2379
    .line 2380
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2381
    .line 2382
    .line 2383
    const-string v6, "mAvgLum : "

    .line 2384
    .line 2385
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    .line 2387
    .line 2388
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2389
    .line 2390
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2391
    .line 2392
    .line 2393
    move-result-wide v13

    .line 2394
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2395
    .line 2396
    .line 2397
    const-string v6, ", mMaxBDI : "

    .line 2398
    .line 2399
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    .line 2401
    .line 2402
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2403
    .line 2404
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2405
    .line 2406
    .line 2407
    move-result-wide v13

    .line 2408
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2409
    .line 2410
    .line 2411
    const-string v6, ", mNBDI : "

    .line 2412
    .line 2413
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    .line 2415
    .line 2416
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2417
    .line 2418
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2419
    .line 2420
    .line 2421
    move-result-wide v13

    .line 2422
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2423
    .line 2424
    .line 2425
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2426
    .line 2427
    .line 2428
    move-result-object v5

    .line 2429
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    .line 2431
    .line 2432
    const-string v3, "AfterimageCompensationService"

    .line 2433
    .line 2434
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2435
    .line 2436
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2437
    .line 2438
    .line 2439
    const-string v6, "mEffAvgLum : "

    .line 2440
    .line 2441
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    .line 2443
    .line 2444
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2445
    .line 2446
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2447
    .line 2448
    .line 2449
    move-result-wide v13

    .line 2450
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2451
    .line 2452
    .line 2453
    const-string v6, ", mEffMaxBDI : "

    .line 2454
    .line 2455
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    .line 2457
    .line 2458
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2459
    .line 2460
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2461
    .line 2462
    .line 2463
    move-result-wide v13

    .line 2464
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2465
    .line 2466
    .line 2467
    const-string v6, ", mEffNBDI : "

    .line 2468
    .line 2469
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    .line 2471
    .line 2472
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2473
    .line 2474
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2475
    .line 2476
    .line 2477
    move-result-wide v13

    .line 2478
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2479
    .line 2480
    .line 2481
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2482
    .line 2483
    .line 2484
    move-result-object v5

    .line 2485
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    .line 2487
    .line 2488
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2489
    .line 2490
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2491
    .line 2492
    .line 2493
    move-result v3

    .line 2494
    if-ge v3, v7, :cond_1e

    .line 2495
    .line 2496
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2497
    .line 2498
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2499
    .line 2500
    .line 2501
    move-result-wide v5

    .line 2502
    cmpl-double v3, v5, v11

    .line 2503
    .line 2504
    if-ltz v3, :cond_1e

    .line 2505
    .line 2506
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2507
    .line 2508
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2509
    .line 2510
    .line 2511
    move-result-wide v5

    .line 2512
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2513
    .line 2514
    iget-object v7, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    .line 2515
    .line 2516
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2517
    .line 2518
    .line 2519
    move-result v3

    .line 2520
    aget v3, v7, v3

    .line 2521
    .line 2522
    float-to-double v7, v3

    .line 2523
    cmpl-double v3, v5, v7

    .line 2524
    .line 2525
    if-ltz v3, :cond_1e

    .line 2526
    .line 2527
    const-string v3, "AfterimageCompensationService"

    .line 2528
    .line 2529
    const-string/jumbo v5, "nativeDataUpdate"

    .line 2530
    .line 2531
    .line 2532
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    .line 2534
    .line 2535
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2536
    .line 2537
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2538
    .line 2539
    .line 2540
    move-result v3

    .line 2541
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 2542
    .line 2543
    .line 2544
    move-result v3

    .line 2545
    if-nez v3, :cond_1e

    .line 2546
    .line 2547
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2548
    .line 2549
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2550
    .line 2551
    .line 2552
    move-result v5

    .line 2553
    add-int/2addr v5, v2

    .line 2554
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 2555
    .line 2556
    .line 2557
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2558
    .line 2559
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2560
    .line 2561
    .line 2562
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2563
    .line 2564
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2565
    .line 2566
    .line 2567
    move-result v5

    .line 2568
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2569
    .line 2570
    .line 2571
    const-string v5, " "

    .line 2572
    .line 2573
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    .line 2575
    .line 2576
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2577
    .line 2578
    const-string v6, "%.2f"

    .line 2579
    .line 2580
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2581
    .line 2582
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 2583
    .line 2584
    .line 2585
    move-result v7

    .line 2586
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2587
    .line 2588
    .line 2589
    move-result-object v7

    .line 2590
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 2591
    .line 2592
    .line 2593
    move-result-object v7

    .line 2594
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2595
    .line 2596
    .line 2597
    move-result-object v5

    .line 2598
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    .line 2600
    .line 2601
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2602
    .line 2603
    .line 2604
    move-result-object v3

    .line 2605
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2606
    .line 2607
    const-string v6, "/efs/afc/apply_count"

    .line 2608
    .line 2609
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    .line 2611
    .line 2612
    const-string v5, "AfterimageCompensationService"

    .line 2613
    .line 2614
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2615
    .line 2616
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2617
    .line 2618
    .line 2619
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 2620
    .line 2621
    .line 2622
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    .line 2624
    .line 2625
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    .line 2627
    .line 2628
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v3

    .line 2632
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 2633
    .line 2634
    .line 2635
    goto :goto_e

    .line 2636
    :catch_a
    move-exception v0

    .line 2637
    move-object v3, v0

    .line 2638
    :try_start_18
    const-string v5, "AfterimageCompensationService"

    .line 2639
    .line 2640
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2641
    .line 2642
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2643
    .line 2644
    .line 2645
    const-string v7, "NumberFormatException : "

    .line 2646
    .line 2647
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    .line 2649
    .line 2650
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2651
    .line 2652
    .line 2653
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2654
    .line 2655
    .line 2656
    move-result-object v3

    .line 2657
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    .line 2659
    .line 2660
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2661
    .line 2662
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 2663
    .line 2664
    .line 2665
    :cond_1e
    :goto_e
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2666
    .line 2667
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 2668
    .line 2669
    .line 2670
    goto/16 :goto_14

    .line 2671
    .line 2672
    :cond_1f
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2673
    .line 2674
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2675
    .line 2676
    .line 2677
    move-result v3

    .line 2678
    const/16 v5, 0x8

    .line 2679
    .line 2680
    if-ne v3, v5, :cond_22

    .line 2681
    .line 2682
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2683
    .line 2684
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2685
    .line 2686
    .line 2687
    move-result v3

    .line 2688
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 2689
    .line 2690
    .line 2691
    move-result v3

    .line 2692
    if-nez v3, :cond_29

    .line 2693
    .line 2694
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2695
    .line 2696
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 2697
    .line 2698
    .line 2699
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2700
    .line 2701
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 2702
    .line 2703
    .line 2704
    move-result-wide v5

    .line 2705
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2706
    .line 2707
    .line 2708
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2709
    .line 2710
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 2711
    .line 2712
    .line 2713
    move-result-wide v5

    .line 2714
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2715
    .line 2716
    .line 2717
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2718
    .line 2719
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 2720
    .line 2721
    .line 2722
    move-result-wide v5

    .line 2723
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2724
    .line 2725
    .line 2726
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2727
    .line 2728
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 2729
    .line 2730
    .line 2731
    move-result-wide v5

    .line 2732
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2733
    .line 2734
    .line 2735
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2736
    .line 2737
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 2738
    .line 2739
    .line 2740
    move-result-wide v5

    .line 2741
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2742
    .line 2743
    .line 2744
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2745
    .line 2746
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 2747
    .line 2748
    .line 2749
    move-result-wide v5

    .line 2750
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2751
    .line 2752
    .line 2753
    const-string v3, "AfterimageCompensationService"

    .line 2754
    .line 2755
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2756
    .line 2757
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2758
    .line 2759
    .line 2760
    const-string v6, "mAvgLum : "

    .line 2761
    .line 2762
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    .line 2764
    .line 2765
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2766
    .line 2767
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2768
    .line 2769
    .line 2770
    move-result-wide v11

    .line 2771
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2772
    .line 2773
    .line 2774
    const-string v6, ", mMaxBDI : "

    .line 2775
    .line 2776
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    .line 2778
    .line 2779
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2780
    .line 2781
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2782
    .line 2783
    .line 2784
    move-result-wide v11

    .line 2785
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2786
    .line 2787
    .line 2788
    const-string v6, ", mNBDI : "

    .line 2789
    .line 2790
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    .line 2792
    .line 2793
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2794
    .line 2795
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2796
    .line 2797
    .line 2798
    move-result-wide v11

    .line 2799
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2800
    .line 2801
    .line 2802
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2803
    .line 2804
    .line 2805
    move-result-object v5

    .line 2806
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    .line 2808
    .line 2809
    const-string v3, "AfterimageCompensationService"

    .line 2810
    .line 2811
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2812
    .line 2813
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2814
    .line 2815
    .line 2816
    const-string v6, "mEffAvgLum : "

    .line 2817
    .line 2818
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    .line 2820
    .line 2821
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2822
    .line 2823
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2824
    .line 2825
    .line 2826
    move-result-wide v11

    .line 2827
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2828
    .line 2829
    .line 2830
    const-string v6, ", mEffMaxBDI : "

    .line 2831
    .line 2832
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    .line 2834
    .line 2835
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2836
    .line 2837
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2838
    .line 2839
    .line 2840
    move-result-wide v11

    .line 2841
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2842
    .line 2843
    .line 2844
    const-string v6, ", mEffNBDI : "

    .line 2845
    .line 2846
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2847
    .line 2848
    .line 2849
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2850
    .line 2851
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2852
    .line 2853
    .line 2854
    move-result-wide v11

    .line 2855
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2856
    .line 2857
    .line 2858
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2859
    .line 2860
    .line 2861
    move-result-object v5

    .line 2862
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    .line 2864
    .line 2865
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2866
    .line 2867
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2868
    .line 2869
    .line 2870
    move-result v3

    .line 2871
    const v5, 0x35bc5

    .line 2872
    .line 2873
    .line 2874
    if-ne v3, v5, :cond_20

    .line 2875
    .line 2876
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2877
    .line 2878
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2879
    .line 2880
    .line 2881
    move-result v3

    .line 2882
    if-ge v3, v7, :cond_21

    .line 2883
    .line 2884
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2885
    .line 2886
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2887
    .line 2888
    .line 2889
    move-result-wide v5

    .line 2890
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 2891
    .line 2892
    cmpl-double v3, v5, v7

    .line 2893
    .line 2894
    if-ltz v3, :cond_21

    .line 2895
    .line 2896
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2897
    .line 2898
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2899
    .line 2900
    .line 2901
    move-result-wide v5

    .line 2902
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2903
    .line 2904
    iget-object v7, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    .line 2905
    .line 2906
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2907
    .line 2908
    .line 2909
    move-result v3

    .line 2910
    aget v3, v7, v3

    .line 2911
    .line 2912
    float-to-double v7, v3

    .line 2913
    cmpl-double v3, v5, v7

    .line 2914
    .line 2915
    if-ltz v3, :cond_21

    .line 2916
    .line 2917
    const-string v3, "AfterimageCompensationService"

    .line 2918
    .line 2919
    const-string/jumbo v5, "nativeDataUpdate"

    .line 2920
    .line 2921
    .line 2922
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    .line 2924
    .line 2925
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2926
    .line 2927
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2928
    .line 2929
    .line 2930
    move-result v3

    .line 2931
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 2932
    .line 2933
    .line 2934
    move-result v3

    .line 2935
    if-nez v3, :cond_21

    .line 2936
    .line 2937
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2938
    .line 2939
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2940
    .line 2941
    .line 2942
    move-result v5

    .line 2943
    add-int/2addr v5, v2

    .line 2944
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 2945
    .line 2946
    .line 2947
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2948
    .line 2949
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2950
    .line 2951
    .line 2952
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2953
    .line 2954
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2955
    .line 2956
    .line 2957
    move-result v5

    .line 2958
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2959
    .line 2960
    .line 2961
    const-string v5, " "

    .line 2962
    .line 2963
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    .line 2965
    .line 2966
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2967
    .line 2968
    const-string v6, "%.2f"

    .line 2969
    .line 2970
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2971
    .line 2972
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 2973
    .line 2974
    .line 2975
    move-result v7

    .line 2976
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2977
    .line 2978
    .line 2979
    move-result-object v7

    .line 2980
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 2981
    .line 2982
    .line 2983
    move-result-object v7

    .line 2984
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2985
    .line 2986
    .line 2987
    move-result-object v5

    .line 2988
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    .line 2990
    .line 2991
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2992
    .line 2993
    .line 2994
    move-result-object v3

    .line 2995
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2996
    .line 2997
    const-string v6, "/efs/afc/apply_count"

    .line 2998
    .line 2999
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    .line 3001
    .line 3002
    const-string v5, "AfterimageCompensationService"

    .line 3003
    .line 3004
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3005
    .line 3006
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3007
    .line 3008
    .line 3009
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 3010
    .line 3011
    .line 3012
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    .line 3014
    .line 3015
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    .line 3017
    .line 3018
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3019
    .line 3020
    .line 3021
    move-result-object v3

    .line 3022
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 3023
    .line 3024
    .line 3025
    goto/16 :goto_f

    .line 3026
    .line 3027
    :catch_b
    move-exception v0

    .line 3028
    move-object v3, v0

    .line 3029
    :try_start_1a
    const-string v5, "AfterimageCompensationService"

    .line 3030
    .line 3031
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3032
    .line 3033
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3034
    .line 3035
    .line 3036
    const-string v7, "NumberFormatException : "

    .line 3037
    .line 3038
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    .line 3040
    .line 3041
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3042
    .line 3043
    .line 3044
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3045
    .line 3046
    .line 3047
    move-result-object v3

    .line 3048
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    .line 3050
    .line 3051
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3052
    .line 3053
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 3054
    .line 3055
    .line 3056
    goto/16 :goto_f

    .line 3057
    .line 3058
    :cond_20
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3059
    .line 3060
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3061
    .line 3062
    .line 3063
    move-result v3

    .line 3064
    const/16 v5, 0x32

    .line 3065
    .line 3066
    if-ge v3, v5, :cond_21

    .line 3067
    .line 3068
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3069
    .line 3070
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3071
    .line 3072
    .line 3073
    move-result-wide v5

    .line 3074
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 3075
    .line 3076
    cmpl-double v3, v5, v7

    .line 3077
    .line 3078
    if-ltz v3, :cond_21

    .line 3079
    .line 3080
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3081
    .line 3082
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3083
    .line 3084
    .line 3085
    move-result-wide v5

    .line 3086
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3087
    .line 3088
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 3089
    .line 3090
    .line 3091
    move-result-object v3

    .line 3092
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3093
    .line 3094
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3095
    .line 3096
    .line 3097
    move-result v7

    .line 3098
    aget v3, v3, v7

    .line 3099
    .line 3100
    float-to-double v7, v3

    .line 3101
    cmpl-double v3, v5, v7

    .line 3102
    .line 3103
    if-ltz v3, :cond_21

    .line 3104
    .line 3105
    const-string v3, "AfterimageCompensationService"

    .line 3106
    .line 3107
    const-string/jumbo v5, "nativeDataUpdate"

    .line 3108
    .line 3109
    .line 3110
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    .line 3112
    .line 3113
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3114
    .line 3115
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3116
    .line 3117
    .line 3118
    move-result v3

    .line 3119
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 3120
    .line 3121
    .line 3122
    move-result v3

    .line 3123
    if-nez v3, :cond_21

    .line 3124
    .line 3125
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3126
    .line 3127
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3128
    .line 3129
    .line 3130
    move-result v5

    .line 3131
    add-int/2addr v5, v2

    .line 3132
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 3133
    .line 3134
    .line 3135
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3136
    .line 3137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3138
    .line 3139
    .line 3140
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3141
    .line 3142
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3143
    .line 3144
    .line 3145
    move-result v5

    .line 3146
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3147
    .line 3148
    .line 3149
    const-string v5, " "

    .line 3150
    .line 3151
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    .line 3153
    .line 3154
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3155
    .line 3156
    const-string v6, "%.2f"

    .line 3157
    .line 3158
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3159
    .line 3160
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 3161
    .line 3162
    .line 3163
    move-result v7

    .line 3164
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3165
    .line 3166
    .line 3167
    move-result-object v7

    .line 3168
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3169
    .line 3170
    .line 3171
    move-result-object v7

    .line 3172
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3173
    .line 3174
    .line 3175
    move-result-object v5

    .line 3176
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    .line 3178
    .line 3179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3180
    .line 3181
    .line 3182
    move-result-object v3

    .line 3183
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3184
    .line 3185
    const-string v6, "/efs/afc/apply_count"

    .line 3186
    .line 3187
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    .line 3189
    .line 3190
    const-string v5, "AfterimageCompensationService"

    .line 3191
    .line 3192
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3193
    .line 3194
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3195
    .line 3196
    .line 3197
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 3198
    .line 3199
    .line 3200
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3201
    .line 3202
    .line 3203
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    .line 3205
    .line 3206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3207
    .line 3208
    .line 3209
    move-result-object v3

    .line 3210
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 3211
    .line 3212
    .line 3213
    goto :goto_f

    .line 3214
    :catch_c
    move-exception v0

    .line 3215
    move-object v3, v0

    .line 3216
    :try_start_1c
    const-string v5, "AfterimageCompensationService"

    .line 3217
    .line 3218
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3219
    .line 3220
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3221
    .line 3222
    .line 3223
    const-string v7, "NumberFormatException : "

    .line 3224
    .line 3225
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    .line 3227
    .line 3228
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3229
    .line 3230
    .line 3231
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3232
    .line 3233
    .line 3234
    move-result-object v3

    .line 3235
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    .line 3237
    .line 3238
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3239
    .line 3240
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 3241
    .line 3242
    .line 3243
    :cond_21
    :goto_f
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3244
    .line 3245
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 3246
    .line 3247
    .line 3248
    goto/16 :goto_14

    .line 3249
    .line 3250
    :cond_22
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3251
    .line 3252
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3253
    .line 3254
    .line 3255
    move-result v3

    .line 3256
    const/16 v5, 0x9

    .line 3257
    .line 3258
    if-eq v3, v5, :cond_27

    .line 3259
    .line 3260
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3261
    .line 3262
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3263
    .line 3264
    .line 3265
    move-result v3

    .line 3266
    const/16 v5, 0xb

    .line 3267
    .line 3268
    if-ne v3, v5, :cond_23

    .line 3269
    .line 3270
    goto/16 :goto_12

    .line 3271
    .line 3272
    :cond_23
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3273
    .line 3274
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3275
    .line 3276
    .line 3277
    move-result v3

    .line 3278
    if-ne v3, v8, :cond_25

    .line 3279
    .line 3280
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3281
    .line 3282
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3283
    .line 3284
    .line 3285
    move-result v3

    .line 3286
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 3287
    .line 3288
    .line 3289
    move-result v3

    .line 3290
    if-nez v3, :cond_29

    .line 3291
    .line 3292
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3293
    .line 3294
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 3295
    .line 3296
    .line 3297
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3298
    .line 3299
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 3300
    .line 3301
    .line 3302
    move-result-wide v5

    .line 3303
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3304
    .line 3305
    .line 3306
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3307
    .line 3308
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 3309
    .line 3310
    .line 3311
    move-result-wide v5

    .line 3312
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3313
    .line 3314
    .line 3315
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3316
    .line 3317
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 3318
    .line 3319
    .line 3320
    move-result-wide v5

    .line 3321
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3322
    .line 3323
    .line 3324
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3325
    .line 3326
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 3327
    .line 3328
    .line 3329
    move-result-wide v5

    .line 3330
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3331
    .line 3332
    .line 3333
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3334
    .line 3335
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 3336
    .line 3337
    .line 3338
    move-result-wide v5

    .line 3339
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3340
    .line 3341
    .line 3342
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3343
    .line 3344
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 3345
    .line 3346
    .line 3347
    move-result-wide v5

    .line 3348
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3349
    .line 3350
    .line 3351
    const-string v3, "AfterimageCompensationService"

    .line 3352
    .line 3353
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3354
    .line 3355
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3356
    .line 3357
    .line 3358
    const-string v6, "mAvgLum : "

    .line 3359
    .line 3360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3361
    .line 3362
    .line 3363
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3364
    .line 3365
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3366
    .line 3367
    .line 3368
    move-result-wide v6

    .line 3369
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3370
    .line 3371
    .line 3372
    const-string v6, ", mMaxBDI : "

    .line 3373
    .line 3374
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3375
    .line 3376
    .line 3377
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3378
    .line 3379
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3380
    .line 3381
    .line 3382
    move-result-wide v6

    .line 3383
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3384
    .line 3385
    .line 3386
    const-string v6, ", mNBDI : "

    .line 3387
    .line 3388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3389
    .line 3390
    .line 3391
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3392
    .line 3393
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3394
    .line 3395
    .line 3396
    move-result-wide v6

    .line 3397
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3398
    .line 3399
    .line 3400
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3401
    .line 3402
    .line 3403
    move-result-object v5

    .line 3404
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    .line 3406
    .line 3407
    const-string v3, "AfterimageCompensationService"

    .line 3408
    .line 3409
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3410
    .line 3411
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3412
    .line 3413
    .line 3414
    const-string v6, "mEffAvgLum : "

    .line 3415
    .line 3416
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    .line 3418
    .line 3419
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3420
    .line 3421
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3422
    .line 3423
    .line 3424
    move-result-wide v6

    .line 3425
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3426
    .line 3427
    .line 3428
    const-string v6, ", mEffMaxBDI : "

    .line 3429
    .line 3430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    .line 3432
    .line 3433
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3434
    .line 3435
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3436
    .line 3437
    .line 3438
    move-result-wide v6

    .line 3439
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3440
    .line 3441
    .line 3442
    const-string v6, ", mEffNBDI : "

    .line 3443
    .line 3444
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    .line 3446
    .line 3447
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3448
    .line 3449
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3450
    .line 3451
    .line 3452
    move-result-wide v6

    .line 3453
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3454
    .line 3455
    .line 3456
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3457
    .line 3458
    .line 3459
    move-result-object v5

    .line 3460
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    .line 3462
    .line 3463
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3464
    .line 3465
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3466
    .line 3467
    .line 3468
    move-result v3

    .line 3469
    const/16 v5, 0x64

    .line 3470
    .line 3471
    if-ge v3, v5, :cond_24

    .line 3472
    .line 3473
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3474
    .line 3475
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3476
    .line 3477
    .line 3478
    move-result-wide v5

    .line 3479
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 3480
    .line 3481
    cmpl-double v3, v5, v7

    .line 3482
    .line 3483
    if-ltz v3, :cond_24

    .line 3484
    .line 3485
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3486
    .line 3487
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3488
    .line 3489
    .line 3490
    move-result-wide v5

    .line 3491
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3492
    .line 3493
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 3494
    .line 3495
    .line 3496
    move-result-object v3

    .line 3497
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3498
    .line 3499
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3500
    .line 3501
    .line 3502
    move-result v7

    .line 3503
    aget v3, v3, v7

    .line 3504
    .line 3505
    float-to-double v7, v3

    .line 3506
    cmpl-double v3, v5, v7

    .line 3507
    .line 3508
    if-ltz v3, :cond_24

    .line 3509
    .line 3510
    const-string v3, "AfterimageCompensationService"

    .line 3511
    .line 3512
    const-string/jumbo v5, "nativeDataUpdate"

    .line 3513
    .line 3514
    .line 3515
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    .line 3517
    .line 3518
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3519
    .line 3520
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3521
    .line 3522
    .line 3523
    move-result v3

    .line 3524
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 3525
    .line 3526
    .line 3527
    move-result v3

    .line 3528
    if-nez v3, :cond_24

    .line 3529
    .line 3530
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3531
    .line 3532
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3533
    .line 3534
    .line 3535
    move-result v5

    .line 3536
    add-int/2addr v5, v2

    .line 3537
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 3538
    .line 3539
    .line 3540
    :try_start_1d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3541
    .line 3542
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3543
    .line 3544
    .line 3545
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3546
    .line 3547
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3548
    .line 3549
    .line 3550
    move-result v5

    .line 3551
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3552
    .line 3553
    .line 3554
    const-string v5, " "

    .line 3555
    .line 3556
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3557
    .line 3558
    .line 3559
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3560
    .line 3561
    const-string v6, "%.2f"

    .line 3562
    .line 3563
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3564
    .line 3565
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 3566
    .line 3567
    .line 3568
    move-result v7

    .line 3569
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3570
    .line 3571
    .line 3572
    move-result-object v7

    .line 3573
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3574
    .line 3575
    .line 3576
    move-result-object v7

    .line 3577
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3578
    .line 3579
    .line 3580
    move-result-object v5

    .line 3581
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3582
    .line 3583
    .line 3584
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3585
    .line 3586
    .line 3587
    move-result-object v3

    .line 3588
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3589
    .line 3590
    const-string v6, "/efs/afc/apply_count"

    .line 3591
    .line 3592
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    .line 3594
    .line 3595
    const-string v5, "AfterimageCompensationService"

    .line 3596
    .line 3597
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3598
    .line 3599
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3600
    .line 3601
    .line 3602
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 3603
    .line 3604
    .line 3605
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3606
    .line 3607
    .line 3608
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3609
    .line 3610
    .line 3611
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3612
    .line 3613
    .line 3614
    move-result-object v3

    .line 3615
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 3616
    .line 3617
    .line 3618
    goto :goto_10

    .line 3619
    :catch_d
    move-exception v0

    .line 3620
    move-object v3, v0

    .line 3621
    :try_start_1e
    const-string v5, "AfterimageCompensationService"

    .line 3622
    .line 3623
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3624
    .line 3625
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3626
    .line 3627
    .line 3628
    const-string v7, "NumberFormatException : "

    .line 3629
    .line 3630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3631
    .line 3632
    .line 3633
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3634
    .line 3635
    .line 3636
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3637
    .line 3638
    .line 3639
    move-result-object v3

    .line 3640
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    .line 3642
    .line 3643
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3644
    .line 3645
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 3646
    .line 3647
    .line 3648
    :cond_24
    :goto_10
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3649
    .line 3650
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 3651
    .line 3652
    .line 3653
    goto/16 :goto_14

    .line 3654
    .line 3655
    :cond_25
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3656
    .line 3657
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3658
    .line 3659
    .line 3660
    move-result v3

    .line 3661
    const/16 v5, 0xc

    .line 3662
    .line 3663
    if-ne v3, v5, :cond_29

    .line 3664
    .line 3665
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3666
    .line 3667
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3668
    .line 3669
    .line 3670
    move-result v3

    .line 3671
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 3672
    .line 3673
    .line 3674
    move-result v3

    .line 3675
    if-nez v3, :cond_29

    .line 3676
    .line 3677
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3678
    .line 3679
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 3680
    .line 3681
    .line 3682
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3683
    .line 3684
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 3685
    .line 3686
    .line 3687
    move-result-wide v5

    .line 3688
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3689
    .line 3690
    .line 3691
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3692
    .line 3693
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 3694
    .line 3695
    .line 3696
    move-result-wide v5

    .line 3697
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3698
    .line 3699
    .line 3700
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3701
    .line 3702
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 3703
    .line 3704
    .line 3705
    move-result-wide v5

    .line 3706
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3707
    .line 3708
    .line 3709
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3710
    .line 3711
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 3712
    .line 3713
    .line 3714
    move-result-wide v5

    .line 3715
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3716
    .line 3717
    .line 3718
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3719
    .line 3720
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 3721
    .line 3722
    .line 3723
    move-result-wide v5

    .line 3724
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3725
    .line 3726
    .line 3727
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3728
    .line 3729
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 3730
    .line 3731
    .line 3732
    move-result-wide v5

    .line 3733
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3734
    .line 3735
    .line 3736
    const-string v3, "AfterimageCompensationService"

    .line 3737
    .line 3738
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3739
    .line 3740
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3741
    .line 3742
    .line 3743
    const-string v6, "mAvgLum : "

    .line 3744
    .line 3745
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3746
    .line 3747
    .line 3748
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3749
    .line 3750
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3751
    .line 3752
    .line 3753
    move-result-wide v6

    .line 3754
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3755
    .line 3756
    .line 3757
    const-string v6, ", mMaxBDI : "

    .line 3758
    .line 3759
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3760
    .line 3761
    .line 3762
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3763
    .line 3764
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3765
    .line 3766
    .line 3767
    move-result-wide v6

    .line 3768
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3769
    .line 3770
    .line 3771
    const-string v6, ", mNBDI : "

    .line 3772
    .line 3773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3774
    .line 3775
    .line 3776
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3777
    .line 3778
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3779
    .line 3780
    .line 3781
    move-result-wide v6

    .line 3782
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3783
    .line 3784
    .line 3785
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3786
    .line 3787
    .line 3788
    move-result-object v5

    .line 3789
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    .line 3791
    .line 3792
    const-string v3, "AfterimageCompensationService"

    .line 3793
    .line 3794
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3795
    .line 3796
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3797
    .line 3798
    .line 3799
    const-string v6, "mEffAvgLum : "

    .line 3800
    .line 3801
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3802
    .line 3803
    .line 3804
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3805
    .line 3806
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3807
    .line 3808
    .line 3809
    move-result-wide v6

    .line 3810
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3811
    .line 3812
    .line 3813
    const-string v6, ", mEffMaxBDI : "

    .line 3814
    .line 3815
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    .line 3817
    .line 3818
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3819
    .line 3820
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3821
    .line 3822
    .line 3823
    move-result-wide v6

    .line 3824
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3825
    .line 3826
    .line 3827
    const-string v6, ", mEffNBDI : "

    .line 3828
    .line 3829
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3830
    .line 3831
    .line 3832
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3833
    .line 3834
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3835
    .line 3836
    .line 3837
    move-result-wide v6

    .line 3838
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3839
    .line 3840
    .line 3841
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3842
    .line 3843
    .line 3844
    move-result-object v5

    .line 3845
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    .line 3847
    .line 3848
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3849
    .line 3850
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3851
    .line 3852
    .line 3853
    move-result v3

    .line 3854
    const/16 v5, 0x64

    .line 3855
    .line 3856
    if-ge v3, v5, :cond_26

    .line 3857
    .line 3858
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3859
    .line 3860
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3861
    .line 3862
    .line 3863
    move-result-wide v5

    .line 3864
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 3865
    .line 3866
    cmpl-double v3, v5, v7

    .line 3867
    .line 3868
    if-ltz v3, :cond_26

    .line 3869
    .line 3870
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3871
    .line 3872
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3873
    .line 3874
    .line 3875
    move-result-wide v5

    .line 3876
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3877
    .line 3878
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V9(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 3879
    .line 3880
    .line 3881
    move-result-object v3

    .line 3882
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3883
    .line 3884
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3885
    .line 3886
    .line 3887
    move-result v7

    .line 3888
    aget v3, v3, v7

    .line 3889
    .line 3890
    float-to-double v7, v3

    .line 3891
    cmpl-double v3, v5, v7

    .line 3892
    .line 3893
    if-ltz v3, :cond_26

    .line 3894
    .line 3895
    const-string v3, "AfterimageCompensationService"

    .line 3896
    .line 3897
    const-string/jumbo v5, "nativeDataUpdate"

    .line 3898
    .line 3899
    .line 3900
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    .line 3902
    .line 3903
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3904
    .line 3905
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3906
    .line 3907
    .line 3908
    move-result v3

    .line 3909
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 3910
    .line 3911
    .line 3912
    move-result v3

    .line 3913
    if-nez v3, :cond_26

    .line 3914
    .line 3915
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3916
    .line 3917
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3918
    .line 3919
    .line 3920
    move-result v5

    .line 3921
    add-int/2addr v5, v2

    .line 3922
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 3923
    .line 3924
    .line 3925
    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3926
    .line 3927
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3928
    .line 3929
    .line 3930
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3931
    .line 3932
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3933
    .line 3934
    .line 3935
    move-result v5

    .line 3936
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3937
    .line 3938
    .line 3939
    const-string v5, " "

    .line 3940
    .line 3941
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3942
    .line 3943
    .line 3944
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3945
    .line 3946
    const-string v6, "%.2f"

    .line 3947
    .line 3948
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3949
    .line 3950
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 3951
    .line 3952
    .line 3953
    move-result v7

    .line 3954
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3955
    .line 3956
    .line 3957
    move-result-object v7

    .line 3958
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3959
    .line 3960
    .line 3961
    move-result-object v7

    .line 3962
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3963
    .line 3964
    .line 3965
    move-result-object v5

    .line 3966
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    .line 3968
    .line 3969
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3970
    .line 3971
    .line 3972
    move-result-object v3

    .line 3973
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3974
    .line 3975
    const-string v6, "/efs/afc/apply_count"

    .line 3976
    .line 3977
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    .line 3979
    .line 3980
    const-string v5, "AfterimageCompensationService"

    .line 3981
    .line 3982
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3983
    .line 3984
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3985
    .line 3986
    .line 3987
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 3988
    .line 3989
    .line 3990
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    .line 3992
    .line 3993
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3994
    .line 3995
    .line 3996
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3997
    .line 3998
    .line 3999
    move-result-object v3

    .line 4000
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 4001
    .line 4002
    .line 4003
    goto :goto_11

    .line 4004
    :catch_e
    move-exception v0

    .line 4005
    move-object v3, v0

    .line 4006
    :try_start_20
    const-string v5, "AfterimageCompensationService"

    .line 4007
    .line 4008
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4009
    .line 4010
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4011
    .line 4012
    .line 4013
    const-string v7, "NumberFormatException : "

    .line 4014
    .line 4015
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    .line 4017
    .line 4018
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4019
    .line 4020
    .line 4021
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4022
    .line 4023
    .line 4024
    move-result-object v3

    .line 4025
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    .line 4027
    .line 4028
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4029
    .line 4030
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 4031
    .line 4032
    .line 4033
    :cond_26
    :goto_11
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4034
    .line 4035
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4036
    .line 4037
    .line 4038
    goto/16 :goto_14

    .line 4039
    .line 4040
    :cond_27
    :goto_12
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4041
    .line 4042
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4043
    .line 4044
    .line 4045
    move-result v3

    .line 4046
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 4047
    .line 4048
    .line 4049
    move-result v3

    .line 4050
    if-nez v3, :cond_29

    .line 4051
    .line 4052
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4053
    .line 4054
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 4055
    .line 4056
    .line 4057
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4058
    .line 4059
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 4060
    .line 4061
    .line 4062
    move-result-wide v5

    .line 4063
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4064
    .line 4065
    .line 4066
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4067
    .line 4068
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 4069
    .line 4070
    .line 4071
    move-result-wide v5

    .line 4072
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4073
    .line 4074
    .line 4075
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4076
    .line 4077
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 4078
    .line 4079
    .line 4080
    move-result-wide v5

    .line 4081
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4082
    .line 4083
    .line 4084
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4085
    .line 4086
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 4087
    .line 4088
    .line 4089
    move-result-wide v5

    .line 4090
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4091
    .line 4092
    .line 4093
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4094
    .line 4095
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 4096
    .line 4097
    .line 4098
    move-result-wide v5

    .line 4099
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4100
    .line 4101
    .line 4102
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4103
    .line 4104
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 4105
    .line 4106
    .line 4107
    move-result-wide v5

    .line 4108
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4109
    .line 4110
    .line 4111
    const-string v3, "AfterimageCompensationService"

    .line 4112
    .line 4113
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4114
    .line 4115
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4116
    .line 4117
    .line 4118
    const-string v6, "mAvgLum : "

    .line 4119
    .line 4120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4121
    .line 4122
    .line 4123
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4124
    .line 4125
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4126
    .line 4127
    .line 4128
    move-result-wide v6

    .line 4129
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4130
    .line 4131
    .line 4132
    const-string v6, ", mMaxBDI : "

    .line 4133
    .line 4134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4135
    .line 4136
    .line 4137
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4138
    .line 4139
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4140
    .line 4141
    .line 4142
    move-result-wide v6

    .line 4143
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4144
    .line 4145
    .line 4146
    const-string v6, ", mNBDI : "

    .line 4147
    .line 4148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4149
    .line 4150
    .line 4151
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4152
    .line 4153
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4154
    .line 4155
    .line 4156
    move-result-wide v6

    .line 4157
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4158
    .line 4159
    .line 4160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4161
    .line 4162
    .line 4163
    move-result-object v5

    .line 4164
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    .line 4166
    .line 4167
    const-string v3, "AfterimageCompensationService"

    .line 4168
    .line 4169
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4170
    .line 4171
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4172
    .line 4173
    .line 4174
    const-string v6, "mEffAvgLum : "

    .line 4175
    .line 4176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4177
    .line 4178
    .line 4179
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4180
    .line 4181
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4182
    .line 4183
    .line 4184
    move-result-wide v6

    .line 4185
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4186
    .line 4187
    .line 4188
    const-string v6, ", mEffMaxBDI : "

    .line 4189
    .line 4190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4191
    .line 4192
    .line 4193
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4194
    .line 4195
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4196
    .line 4197
    .line 4198
    move-result-wide v6

    .line 4199
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4200
    .line 4201
    .line 4202
    const-string v6, ", mEffNBDI : "

    .line 4203
    .line 4204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4205
    .line 4206
    .line 4207
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4208
    .line 4209
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4210
    .line 4211
    .line 4212
    move-result-wide v6

    .line 4213
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4214
    .line 4215
    .line 4216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4217
    .line 4218
    .line 4219
    move-result-object v5

    .line 4220
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    .line 4222
    .line 4223
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4224
    .line 4225
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4226
    .line 4227
    .line 4228
    move-result v3

    .line 4229
    const/16 v5, 0x64

    .line 4230
    .line 4231
    if-ge v3, v5, :cond_28

    .line 4232
    .line 4233
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4234
    .line 4235
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4236
    .line 4237
    .line 4238
    move-result-wide v5

    .line 4239
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 4240
    .line 4241
    cmpl-double v3, v5, v7

    .line 4242
    .line 4243
    if-ltz v3, :cond_28

    .line 4244
    .line 4245
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4246
    .line 4247
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4248
    .line 4249
    .line 4250
    move-result-wide v5

    .line 4251
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4252
    .line 4253
    iget-object v7, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    .line 4254
    .line 4255
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4256
    .line 4257
    .line 4258
    move-result v3

    .line 4259
    aget v3, v7, v3

    .line 4260
    .line 4261
    float-to-double v7, v3

    .line 4262
    cmpl-double v3, v5, v7

    .line 4263
    .line 4264
    if-ltz v3, :cond_28

    .line 4265
    .line 4266
    const-string v3, "AfterimageCompensationService"

    .line 4267
    .line 4268
    const-string/jumbo v5, "nativeDataUpdate"

    .line 4269
    .line 4270
    .line 4271
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    .line 4273
    .line 4274
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4275
    .line 4276
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4277
    .line 4278
    .line 4279
    move-result v3

    .line 4280
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 4281
    .line 4282
    .line 4283
    move-result v3

    .line 4284
    if-nez v3, :cond_28

    .line 4285
    .line 4286
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4287
    .line 4288
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4289
    .line 4290
    .line 4291
    move-result v5

    .line 4292
    add-int/2addr v5, v2

    .line 4293
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 4294
    .line 4295
    .line 4296
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 4297
    .line 4298
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4299
    .line 4300
    .line 4301
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4302
    .line 4303
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4304
    .line 4305
    .line 4306
    move-result v5

    .line 4307
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4308
    .line 4309
    .line 4310
    const-string v5, " "

    .line 4311
    .line 4312
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4313
    .line 4314
    .line 4315
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4316
    .line 4317
    const-string v6, "%.2f"

    .line 4318
    .line 4319
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4320
    .line 4321
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 4322
    .line 4323
    .line 4324
    move-result v7

    .line 4325
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4326
    .line 4327
    .line 4328
    move-result-object v7

    .line 4329
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 4330
    .line 4331
    .line 4332
    move-result-object v7

    .line 4333
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4334
    .line 4335
    .line 4336
    move-result-object v5

    .line 4337
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4338
    .line 4339
    .line 4340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4341
    .line 4342
    .line 4343
    move-result-object v3

    .line 4344
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4345
    .line 4346
    const-string v6, "/efs/afc/apply_count"

    .line 4347
    .line 4348
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4349
    .line 4350
    .line 4351
    const-string v5, "AfterimageCompensationService"

    .line 4352
    .line 4353
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4354
    .line 4355
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4356
    .line 4357
    .line 4358
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 4359
    .line 4360
    .line 4361
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4362
    .line 4363
    .line 4364
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4365
    .line 4366
    .line 4367
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4368
    .line 4369
    .line 4370
    move-result-object v3

    .line 4371
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 4372
    .line 4373
    .line 4374
    goto :goto_13

    .line 4375
    :catch_f
    move-exception v0

    .line 4376
    move-object v3, v0

    .line 4377
    :try_start_22
    const-string v5, "AfterimageCompensationService"

    .line 4378
    .line 4379
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4380
    .line 4381
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4382
    .line 4383
    .line 4384
    const-string v7, "NumberFormatException : "

    .line 4385
    .line 4386
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4387
    .line 4388
    .line 4389
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4390
    .line 4391
    .line 4392
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4393
    .line 4394
    .line 4395
    move-result-object v3

    .line 4396
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    .line 4398
    .line 4399
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4400
    .line 4401
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 4402
    .line 4403
    .line 4404
    :cond_28
    :goto_13
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4405
    .line 4406
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4407
    .line 4408
    .line 4409
    :cond_29
    :goto_14
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4410
    .line 4411
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4412
    .line 4413
    .line 4414
    move-result v3

    .line 4415
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4416
    .line 4417
    iget v6, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 4418
    .line 4419
    if-lt v3, v6, :cond_2c

    .line 4420
    .line 4421
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4422
    .line 4423
    .line 4424
    move-result v3

    .line 4425
    const/16 v5, 0x9

    .line 4426
    .line 4427
    if-eq v3, v5, :cond_2a

    .line 4428
    .line 4429
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4430
    .line 4431
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4432
    .line 4433
    .line 4434
    move-result v3

    .line 4435
    const/16 v5, 0xb

    .line 4436
    .line 4437
    if-ne v3, v5, :cond_2c

    .line 4438
    .line 4439
    :cond_2a
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4440
    .line 4441
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4442
    .line 4443
    .line 4444
    move-result v3

    .line 4445
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSaveSub(I)I

    .line 4446
    .line 4447
    .line 4448
    move-result v3

    .line 4449
    if-nez v3, :cond_2c

    .line 4450
    .line 4451
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4452
    .line 4453
    iput v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 4454
    .line 4455
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLumSub()D

    .line 4456
    .line 4457
    .line 4458
    move-result-wide v5

    .line 4459
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4460
    .line 4461
    .line 4462
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4463
    .line 4464
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDISub()D

    .line 4465
    .line 4466
    .line 4467
    move-result-wide v5

    .line 4468
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4469
    .line 4470
    .line 4471
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4472
    .line 4473
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDISub()D

    .line 4474
    .line 4475
    .line 4476
    move-result-wide v5

    .line 4477
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4478
    .line 4479
    .line 4480
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4481
    .line 4482
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLumSub()D

    .line 4483
    .line 4484
    .line 4485
    move-result-wide v5

    .line 4486
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4487
    .line 4488
    .line 4489
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4490
    .line 4491
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDISub()D

    .line 4492
    .line 4493
    .line 4494
    move-result-wide v5

    .line 4495
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4496
    .line 4497
    .line 4498
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4499
    .line 4500
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDISub()D

    .line 4501
    .line 4502
    .line 4503
    move-result-wide v5

    .line 4504
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4505
    .line 4506
    .line 4507
    const-string v3, "AfterimageCompensationService"

    .line 4508
    .line 4509
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4510
    .line 4511
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4512
    .line 4513
    .line 4514
    const-string v6, "mAvgLum_sub : "

    .line 4515
    .line 4516
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4517
    .line 4518
    .line 4519
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4520
    .line 4521
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4522
    .line 4523
    .line 4524
    move-result-wide v6

    .line 4525
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4526
    .line 4527
    .line 4528
    const-string v6, ", mMaxBDI_sub : "

    .line 4529
    .line 4530
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4531
    .line 4532
    .line 4533
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4534
    .line 4535
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4536
    .line 4537
    .line 4538
    move-result-wide v6

    .line 4539
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4540
    .line 4541
    .line 4542
    const-string v6, ", mNBDI_sub : "

    .line 4543
    .line 4544
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4545
    .line 4546
    .line 4547
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4548
    .line 4549
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4550
    .line 4551
    .line 4552
    move-result-wide v6

    .line 4553
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4554
    .line 4555
    .line 4556
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4557
    .line 4558
    .line 4559
    move-result-object v5

    .line 4560
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    .line 4562
    .line 4563
    const-string v3, "AfterimageCompensationService"

    .line 4564
    .line 4565
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4566
    .line 4567
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4568
    .line 4569
    .line 4570
    const-string v6, "mEffAvgLum_sub : "

    .line 4571
    .line 4572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4573
    .line 4574
    .line 4575
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4576
    .line 4577
    iget-wide v6, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 4578
    .line 4579
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4580
    .line 4581
    .line 4582
    const-string v6, ", mEffMaxBDI_sub : "

    .line 4583
    .line 4584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    .line 4586
    .line 4587
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4588
    .line 4589
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4590
    .line 4591
    .line 4592
    move-result-wide v6

    .line 4593
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4594
    .line 4595
    .line 4596
    const-string v6, ", mEffNBDI_sub : "

    .line 4597
    .line 4598
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4599
    .line 4600
    .line 4601
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4602
    .line 4603
    iget-wide v6, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    .line 4604
    .line 4605
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4606
    .line 4607
    .line 4608
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4609
    .line 4610
    .line 4611
    move-result-object v5

    .line 4612
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    .line 4614
    .line 4615
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4616
    .line 4617
    iget v5, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 4618
    .line 4619
    const/16 v6, 0x64

    .line 4620
    .line 4621
    if-ge v5, v6, :cond_2b

    .line 4622
    .line 4623
    iget-wide v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 4624
    .line 4625
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    .line 4626
    .line 4627
    cmpl-double v6, v6, v8

    .line 4628
    .line 4629
    if-ltz v6, :cond_2b

    .line 4630
    .line 4631
    iget-wide v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    .line 4632
    .line 4633
    iget-object v3, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    .line 4634
    .line 4635
    aget v3, v3, v5

    .line 4636
    .line 4637
    float-to-double v8, v3

    .line 4638
    cmpl-double v3, v6, v8

    .line 4639
    .line 4640
    if-ltz v3, :cond_2b

    .line 4641
    .line 4642
    const-string v3, "AfterimageCompensationService"

    .line 4643
    .line 4644
    const-string/jumbo v5, "nativeDataUpdateSub"

    .line 4645
    .line 4646
    .line 4647
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4648
    .line 4649
    .line 4650
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4651
    .line 4652
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4653
    .line 4654
    .line 4655
    move-result v3

    .line 4656
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdateSub(I)I

    .line 4657
    .line 4658
    .line 4659
    move-result v3

    .line 4660
    if-nez v3, :cond_2b

    .line 4661
    .line 4662
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4663
    .line 4664
    iget v5, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 4665
    .line 4666
    add-int/2addr v5, v2

    .line 4667
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 4668
    .line 4669
    .line 4670
    :try_start_23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 4671
    .line 4672
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4673
    .line 4674
    .line 4675
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4676
    .line 4677
    iget v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 4678
    .line 4679
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4680
    .line 4681
    .line 4682
    const-string v5, " "

    .line 4683
    .line 4684
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4685
    .line 4686
    .line 4687
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4688
    .line 4689
    const-string v6, "%.2f"

    .line 4690
    .line 4691
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4692
    .line 4693
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 4694
    .line 4695
    .line 4696
    move-result v7

    .line 4697
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4698
    .line 4699
    .line 4700
    move-result-object v7

    .line 4701
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 4702
    .line 4703
    .line 4704
    move-result-object v7

    .line 4705
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4706
    .line 4707
    .line 4708
    move-result-object v5

    .line 4709
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4710
    .line 4711
    .line 4712
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4713
    .line 4714
    .line 4715
    move-result-object v3

    .line 4716
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4717
    .line 4718
    const-string v6, "/efs/afc1/apply_count"

    .line 4719
    .line 4720
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4721
    .line 4722
    .line 4723
    const-string v5, "AfterimageCompensationService"

    .line 4724
    .line 4725
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4726
    .line 4727
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4728
    .line 4729
    .line 4730
    const-string/jumbo v7, "nativeDataUpdateSub - str : "

    .line 4731
    .line 4732
    .line 4733
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4734
    .line 4735
    .line 4736
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4737
    .line 4738
    .line 4739
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4740
    .line 4741
    .line 4742
    move-result-object v3

    .line 4743
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_10
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 4744
    .line 4745
    .line 4746
    goto :goto_15

    .line 4747
    :catch_10
    move-exception v0

    .line 4748
    move-object v3, v0

    .line 4749
    :try_start_24
    const-string v5, "AfterimageCompensationService"

    .line 4750
    .line 4751
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4752
    .line 4753
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4754
    .line 4755
    .line 4756
    const-string v7, "NumberFormatException : "

    .line 4757
    .line 4758
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4759
    .line 4760
    .line 4761
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4762
    .line 4763
    .line 4764
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4765
    .line 4766
    .line 4767
    move-result-object v3

    .line 4768
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    .line 4770
    .line 4771
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4772
    .line 4773
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4774
    .line 4775
    .line 4776
    :cond_2b
    :goto_15
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4777
    .line 4778
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4779
    .line 4780
    .line 4781
    :cond_2c
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4782
    .line 4783
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 4784
    .line 4785
    .line 4786
    move-result v3

    .line 4787
    if-nez v3, :cond_0

    .line 4788
    .line 4789
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4790
    .line 4791
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 4792
    .line 4793
    .line 4794
    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 4795
    if-eqz v3, :cond_0

    .line 4796
    .line 4797
    :try_start_25
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4798
    .line 4799
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 4800
    .line 4801
    .line 4802
    move-result-object v3

    .line 4803
    monitor-enter v3
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_11
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 4804
    :try_start_26
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4805
    .line 4806
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 4807
    .line 4808
    .line 4809
    move-result-object v5

    .line 4810
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 4811
    .line 4812
    .line 4813
    monitor-exit v3

    .line 4814
    goto/16 :goto_0

    .line 4815
    .line 4816
    :catchall_3
    move-exception v0

    .line 4817
    move-object v5, v0

    .line 4818
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 4819
    :try_start_27
    throw v5
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_11
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 4820
    :catch_11
    :try_start_28
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 4821
    .line 4822
    goto/16 :goto_0

    .line 4823
    .line 4824
    :cond_2d
    const-string v4, "AfterimageCompensationService"

    .line 4825
    .line 4826
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4827
    .line 4828
    .line 4829
    const-string v3, "AfcThread is Terminated - 0"

    .line 4830
    .line 4831
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    .line 4833
    .line 4834
    :goto_16
    iget-object v1, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4835
    .line 4836
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    .line 4837
    .line 4838
    goto :goto_18

    .line 4839
    :goto_17
    :try_start_29
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4840
    .line 4841
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 4842
    .line 4843
    .line 4844
    move-result v4

    .line 4845
    if-eqz v4, :cond_2e

    .line 4846
    .line 4847
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 4848
    .line 4849
    .line 4850
    :cond_2e
    const-string v3, "AfterimageCompensationService"

    .line 4851
    .line 4852
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4853
    .line 4854
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4855
    .line 4856
    .line 4857
    const-string v4, "AfcThread is Terminated - 0"

    .line 4858
    .line 4859
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4860
    .line 4861
    .line 4862
    goto :goto_16

    .line 4863
    :goto_18
    return-void

    .line 4864
    :goto_19
    const-string v4, "AfterimageCompensationService"

    .line 4865
    .line 4866
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4867
    .line 4868
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4869
    .line 4870
    .line 4871
    const-string v5, "AfcThread is Terminated - 0"

    .line 4872
    .line 4873
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    .line 4875
    .line 4876
    iget-object v1, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4877
    .line 4878
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    .line 4879
    .line 4880
    throw v3
.end method
