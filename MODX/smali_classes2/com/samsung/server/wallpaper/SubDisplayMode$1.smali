.class public final Lcom/samsung/server/wallpaper/SubDisplayMode$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3f2

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 12
    .line 13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 53
    .line 54
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    .line 55
    .line 56
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v7, 0x0

    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    const/16 v4, -0x2710

    .line 64
    .line 65
    if-ne v5, v4, :cond_1

    .line 66
    .line 67
    move v4, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v4, v5

    .line 70
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 71
    .line 72
    invoke-virtual {v5, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 77
    .line 78
    const/4 v8, 0x2

    .line 79
    invoke-virtual {v6, v8}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const-string/jumbo v9, "switchWallpaperByDisplayChanged   prevFolderState : "

    .line 84
    .line 85
    .line 86
    const-string v10, " curFolderState : "

    .line 87
    .line 88
    const-string v11, " oldMode : "

    .line 89
    .line 90
    invoke-static {v0, p1, v9, v10, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v9, " newMode : "

    .line 95
    .line 96
    const-string v10, " mCurrentUserId : "

    .line 97
    .line 98
    invoke-static {v2, v3, v9, v10, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 99
    .line 100
    .line 101
    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 102
    .line 103
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v9, " mOldUserId : "

    .line 107
    .line 108
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 112
    .line 113
    iget v9, v9, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    .line 114
    .line 115
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v9, " userId : "

    .line 119
    .line 120
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v9, "WallpaperManagerService"

    .line 131
    .line 132
    invoke-static {v9, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    or-int/lit8 v0, v2, 0x1

    .line 136
    .line 137
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    if-eqz v10, :cond_3

    .line 142
    .line 143
    invoke-static {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mcheckSameComponentSetOtherDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    if-lez v10, :cond_4

    .line 148
    .line 149
    invoke-virtual {p0, v10, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->forceRebindWallpaper(II)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move v10, v7

    .line 154
    :cond_4
    :goto_1
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-nez v11, :cond_5

    .line 159
    .line 160
    or-int/lit8 v11, v2, 0x2

    .line 161
    .line 162
    invoke-virtual {p0, v4, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    if-eqz v11, :cond_5

    .line 167
    .line 168
    invoke-static {p0, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mcheckSameComponentSetOtherDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-lez v11, :cond_6

    .line 173
    .line 174
    invoke-virtual {p0, v11, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->forceRebindWallpaper(II)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    move v11, v7

    .line 179
    :cond_6
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string/jumbo v13, "switchWallpaperByDisplayChanged  sameWallpaperWithPrevSystem : "

    .line 182
    .line 183
    .line 184
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v10, " sameWallpaperWithPrevLock : "

    .line 191
    .line 192
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-static {v9, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 206
    .line 207
    invoke-virtual {p0, v9, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    iget-object v9, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 212
    .line 213
    iget-object v10, v9, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 214
    .line 215
    if-nez v10, :cond_7

    .line 216
    .line 217
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 218
    .line 219
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 220
    .line 221
    iget v9, v9, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 222
    .line 223
    invoke-virtual {v5, v9, v7}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_7
    invoke-virtual {p0, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 228
    .line 229
    .line 230
    :goto_3
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 231
    .line 232
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 237
    .line 238
    iget-object v9, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 239
    .line 240
    if-nez v9, :cond_8

    .line 241
    .line 242
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 243
    .line 244
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 245
    .line 246
    iget v6, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 247
    .line 248
    invoke-virtual {v5, v6, v7}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_8
    invoke-virtual {p0, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 253
    .line 254
    .line 255
    :goto_4
    new-instance v5, Landroid/os/Bundle;

    .line 256
    .line 257
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 258
    .line 259
    .line 260
    if-nez p1, :cond_9

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_9
    move v1, v7

    .line 264
    :goto_5
    const-string p1, "isFolded"

    .line 265
    .line 266
    invoke-virtual {v5, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    .line 268
    .line 269
    const-string/jumbo p1, "switch_display"

    .line 270
    .line 271
    .line 272
    if-eq v2, v3, :cond_a

    .line 273
    .line 274
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 278
    .line 279
    invoke-virtual {v0, v2, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isSystemAndLockPaired(II)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_a

    .line 284
    .line 285
    or-int/lit8 v0, v2, 0x2

    .line 286
    .line 287
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 288
    .line 289
    .line 290
    :cond_a
    or-int/lit8 v0, v3, 0x1

    .line 291
    .line 292
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 296
    .line 297
    invoke-virtual {v0, v3, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isSystemAndLockPaired(II)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_b

    .line 302
    .line 303
    or-int/lit8 v0, v3, 0x2

    .line 304
    .line 305
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 306
    .line 307
    .line 308
    :cond_b
    :goto_6
    return-void
.end method
