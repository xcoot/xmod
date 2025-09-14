.class public final Lcom/android/server/display/exynos/ExynosDisplayATC$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "ExynosDisplayATC"

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_1
    const/4 v1, 0x3

    .line 42
    if-ge p1, v1, :cond_5

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    aget-object v1, v1, p1

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 60
    .line 61
    if-eqz p0, :cond_10

    .line 62
    .line 63
    const-string/jumbo p0, "hsvlcg skip as same"

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_3
    sget-boolean v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    const-string/jumbo v1, "hsv lcg: "

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 82
    .line 83
    const-string/jumbo v2, "hsc48_idx"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    const-string/jumbo v2, "hsc48_lcg"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 108
    .line 109
    aput-object v0, v1, p1

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_5
    :goto_0
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 117
    .line 118
    if-eqz p0, :cond_10

    .line 119
    .line 120
    const-string/jumbo p0, "hsvlcg skip as invalid"

    .line 121
    .line 122
    .line 123
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 135
    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 141
    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 151
    .line 152
    if-eqz p0, :cond_10

    .line 153
    .line 154
    const-string/jumbo p0, "hsv skip as same"

    .line 155
    .line 156
    .line 157
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_7
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 163
    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    const-string/jumbo v0, "hsv: "

    .line 167
    .line 168
    .line 169
    invoke-static {v0, p1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 173
    .line 174
    const-string/jumbo v1, "hsc"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 198
    .line 199
    iget-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 200
    .line 201
    if-nez v3, :cond_9

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_9
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v3, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_a

    .line 214
    .line 215
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 216
    .line 217
    if-eqz p0, :cond_10

    .line 218
    .line 219
    const-string p0, "aps skip : "

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_a
    sget-boolean v3, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 230
    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    const-string v3, "aps: "

    .line 234
    .line 235
    invoke-static {v3, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_b
    const/4 v2, 0x1

    .line 239
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 243
    .line 244
    const-string v4, "aps"

    .line 245
    .line 246
    invoke-virtual {v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 257
    .line 258
    if-eqz p1, :cond_c

    .line 259
    .line 260
    move v1, v2

    .line 261
    :cond_c
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 268
    .line 269
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 270
    .line 271
    if-nez v0, :cond_d

    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_d
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 275
    .line 276
    if-nez v0, :cond_e

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_e
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    .line 280
    .line 281
    if-ne v0, p1, :cond_f

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_f
    const-string/jumbo v0, "lux: "

    .line 285
    .line 286
    .line 287
    invoke-static {p1, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 291
    .line 292
    const-string v1, "aps_lux"

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 307
    .line 308
    .line 309
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 313
    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->sendEmptyUpdate()V

    .line 318
    .line 319
    .line 320
    :cond_10
    :goto_1
    return-void

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
