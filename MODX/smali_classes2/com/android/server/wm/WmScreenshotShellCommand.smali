.class public final Lcom/android/server/wm/WmScreenshotShellCommand;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mController:Lcom/android/server/wm/WmScreenshotController;

.field public mDisplayId:I

.field public mIgnorePolicy:Z

.field public mScreenshotRotationLayer:Z

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mWindowType:I


# direct methods
.method public static printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "-------------------"

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "Reason : "

    .line 12
    .line 13
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "Unknown Command: "

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string p1, "Screenshot Commands:"

    .line 13
    .line 14
    const-string v0, "  fullscreen"

    .line 15
    .line 16
    const-string v1, "    Return take screenshot current window of full screen."

    .line 17
    .line 18
    const-string v2, "  window_type"

    .line 19
    .line 20
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "    Return the current window type."

    .line 24
    .line 25
    const-string v0, "  target_window [WindowType] [DisplayId]"

    .line 26
    .line 27
    const-string v1, "    Return take screenshot of target window and save screenshot."

    .line 28
    .line 29
    const-string v2, "  focused_task"

    .line 30
    .line 31
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "    Return take screenshot of top focused task and save screenshot."

    .line 35
    .line 36
    const-string v0, "  rotation"

    .line 37
    .line 38
    const-string v1, "    Turn on the option, take screenshot of rotation layer and save screenshot."

    .line 39
    .line 40
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final exec(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v7, 0x0

    .line 8
    aget-object v4, p2, v7

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v1, v0}, Lcom/android/server/wm/WmScreenshotShellCommand;->runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mController:Lcom/android/server/wm/WmScreenshotController;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    const-string v8, "Failed to screenshot"

    .line 22
    .line 23
    const-string v9, "Error : display is null"

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    const-string v11, "Error"

    .line 27
    .line 28
    const/4 v12, -0x1

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    sparse-switch v13, :sswitch_data_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_0
    const-string/jumbo v13, "window_type"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    if-nez v13, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v12, 0x4

    .line 48
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v13, "focused_task"

    .line 50
    .line 51
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    if-nez v13, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v12, v2

    .line 59
    goto :goto_0

    .line 60
    :sswitch_2
    const-string v13, "fullscreen"

    .line 61
    .line 62
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-nez v13, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move v12, v3

    .line 70
    goto :goto_0

    .line 71
    :sswitch_3
    const-string/jumbo v13, "rotation"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    if-nez v13, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v12, 0x1

    .line 82
    goto :goto_0

    .line 83
    :sswitch_4
    const-string/jumbo v13, "target_window"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-nez v13, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 v12, 0x0

    .line 94
    :goto_0
    packed-switch v12, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v4}, Lcom/android/server/wm/WmScreenshotShellCommand;->runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_a

    .line 101
    .line 102
    :pswitch_0
    const-string/jumbo v0, "windowType:"

    .line 103
    .line 104
    .line 105
    const-string v2, "focusedWindow:"

    .line 106
    .line 107
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 136
    .line 137
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto/16 :goto_a

    .line 150
    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_a

    .line 156
    .line 157
    :pswitch_1
    const-string v0, "Success screenshot, focused task="

    .line 158
    .line 159
    :try_start_1
    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-nez v2, :cond_6

    .line 166
    .line 167
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_a

    .line 171
    .line 172
    :catch_1
    move-exception v0

    .line 173
    goto :goto_2

    .line 174
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-eqz v3, :cond_9

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_7

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    if-eqz v6, :cond_8

    .line 192
    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, v5, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    .line 209
    .line 210
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 211
    .line 212
    invoke-virtual {v0, v4, v6, v1, v2}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_a

    .line 216
    .line 217
    :cond_8
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_a

    .line 221
    .line 222
    :cond_9
    :goto_1
    const-string v0, "Error : focused task is null or invisible"

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    .line 226
    .line 227
    goto/16 :goto_a

    .line 228
    .line 229
    :goto_2
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_a

    .line 233
    .line 234
    :pswitch_2
    const/4 v6, 0x1

    .line 235
    const/4 v8, 0x1

    .line 236
    const/4 v9, 0x0

    .line 237
    move-object v4, v5

    .line 238
    move v5, v10

    .line 239
    :try_start_2
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    .line 241
    .line 242
    goto/16 :goto_a

    .line 243
    .line 244
    :catch_2
    move-exception v0

    .line 245
    move-object v2, v0

    .line 246
    invoke-static {v1, v2, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_a

    .line 250
    .line 251
    :pswitch_3
    :try_start_3
    iget-boolean v2, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    .line 252
    .line 253
    if-eqz v2, :cond_a

    .line 254
    .line 255
    iput-boolean v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    .line 256
    .line 257
    const-string v0, "Turn off the screenshot rotation layer"

    .line 258
    .line 259
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_a

    .line 263
    .line 264
    :catch_3
    move-exception v0

    .line 265
    goto :goto_3

    .line 266
    :cond_a
    iput-boolean v10, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    .line 267
    .line 268
    const-string v0, "Turn on the screenshot rotation layer"

    .line 269
    .line 270
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    .line 272
    .line 273
    goto/16 :goto_a

    .line 274
    .line 275
    :goto_3
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_a

    .line 279
    .line 280
    :pswitch_4
    const-string v12, "Window_Name:"

    .line 281
    .line 282
    const-string v13, "FailedReason:"

    .line 283
    .line 284
    iput v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    .line 285
    .line 286
    const/16 v14, 0x7df

    .line 287
    .line 288
    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I

    .line 289
    .line 290
    iput-boolean v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mIgnorePolicy:Z

    .line 291
    .line 292
    aget-object v14, p2, v10

    .line 293
    .line 294
    const-string v15, "Number_Format_Error"

    .line 295
    .line 296
    if-eqz v14, :cond_b

    .line 297
    .line 298
    :try_start_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :catch_4
    move-exception v0

    .line 306
    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_a

    .line 310
    .line 311
    :cond_b
    :goto_4
    aget-object v14, p2, v3

    .line 312
    .line 313
    if-eqz v14, :cond_c

    .line 314
    .line 315
    :try_start_5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :catch_5
    move-exception v0

    .line 323
    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_a

    .line 327
    .line 328
    :cond_c
    :goto_5
    aget-object v2, p2, v2

    .line 329
    .line 330
    if-eqz v2, :cond_d

    .line 331
    .line 332
    :try_start_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-ne v2, v10, :cond_d

    .line 337
    .line 338
    iput-boolean v10, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mIgnorePolicy:Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :catch_6
    move-exception v0

    .line 342
    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_a

    .line 346
    .line 347
    :cond_d
    :goto_6
    :try_start_7
    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 348
    .line 349
    iget v6, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    .line 350
    .line 351
    invoke-virtual {v2, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    if-nez v2, :cond_e

    .line 356
    .line 357
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_a

    .line 361
    .line 362
    :catch_7
    move-exception v0

    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :cond_e
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 366
    .line 367
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 368
    .line 369
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 370
    .line 371
    iget-object v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mController:Lcom/android/server/wm/WmScreenshotController;

    .line 372
    .line 373
    iget v15, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    .line 374
    .line 375
    iget v9, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I

    .line 376
    .line 377
    new-instance v10, Landroid/graphics/Rect;

    .line 378
    .line 379
    invoke-direct {v10, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 380
    .line 381
    .line 382
    iget-boolean v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mIgnorePolicy:Z

    .line 383
    .line 384
    const/16 v21, 0x1

    .line 385
    .line 386
    const/16 v23, 0x0

    .line 387
    .line 388
    const/16 v17, 0x1

    .line 389
    .line 390
    move/from16 v16, v9

    .line 391
    .line 392
    move-object/from16 v18, v10

    .line 393
    .line 394
    move/from16 v19, v6

    .line 395
    .line 396
    move/from16 v20, v2

    .line 397
    .line 398
    move/from16 v22, v7

    .line 399
    .line 400
    invoke-virtual/range {v14 .. v23}, Lcom/android/server/wm/WmScreenshotController;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZZ)Lcom/samsung/android/view/ScreenshotResult;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Lcom/samsung/android/view/ScreenshotResult;->getFailedReason()I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    invoke-virtual {v2}, Lcom/samsung/android/view/ScreenshotResult;->getTargetWindowName()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    if-eqz v6, :cond_10

    .line 413
    .line 414
    and-int/lit8 v9, v6, 0x2

    .line 415
    .line 416
    if-eqz v9, :cond_f

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_f
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_10
    :goto_7
    and-int/2addr v3, v6

    .line 443
    if-eqz v3, :cond_11

    .line 444
    .line 445
    const-string v3, "Target window type was not found"

    .line 446
    .line 447
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    const-string v3, "Success screenshot full screen"

    .line 451
    .line 452
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    goto :goto_8

    .line 456
    :cond_11
    const-string v3, "Success screenshot"

    .line 457
    .line 458
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    :goto_8
    iget-object v3, v5, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    .line 477
    .line 478
    invoke-virtual {v2}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    iget v0, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    .line 483
    .line 484
    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 485
    .line 486
    .line 487
    goto :goto_a

    .line 488
    :goto_9
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :goto_a
    return-void

    .line 492
    nop

    .line 493
    :sswitch_data_0
    .sparse-switch
        -0x67694da2 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        0x68f7bbb -> :sswitch_2
        0x14b0f54d -> :sswitch_1
        0x72216229 -> :sswitch_0
    .end sparse-switch

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
