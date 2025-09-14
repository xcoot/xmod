.class public final Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mAddPipInputConsumerHandle:Z

.field public mAddRecentsAnimationInputConsumerHandle:Z

.field public mAddWallpaperInputConsumerHandle:Z

.field public mInDrag:Z

.field public mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public static -$$Nest$mupdateInputWindows(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "updateInputWindows"

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x20

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 13
    .line 14
    const-string/jumbo v3, "pip_input_consumer"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 24
    .line 25
    const-string/jumbo v3, "wallpaper_input_consumer"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 35
    .line 36
    const-string/jumbo v3, "recents_animation_input_consumer"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    move v3, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v3, v5

    .line 54
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    move v3, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v3, v5

    .line 63
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    move v3, v4

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v3, v5

    .line 70
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    iput-boolean v4, v0, Lcom/android/server/wm/InputConsumerImpl;->mNeedOneHandOpSpec:Z

    .line 75
    .line 76
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    sub-int/2addr v3, v4

    .line 89
    :goto_3
    if-ltz v3, :cond_4

    .line 90
    .line 91
    iget-object v6, p1, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lcom/android/server/wm/InputConsumerImpl;

    .line 98
    .line 99
    iget-object v6, v6, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 100
    .line 101
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    .line 103
    .line 104
    add-int/lit8 v3, v3, -0x1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    move-object p1, v0

    .line 120
    :goto_4
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 121
    .line 122
    iget-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 123
    .line 124
    if-eqz v3, :cond_9

    .line 125
    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 129
    .line 130
    if-eqz v3, :cond_9

    .line 131
    .line 132
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 135
    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    goto :goto_5

    .line 143
    :cond_6
    move-object v3, v0

    .line 144
    :goto_5
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 145
    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_7
    move-object v3, p1

    .line 150
    :goto_6
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_9

    .line 155
    .line 156
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    iget-object v6, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mTmpRect:Landroid/graphics/Rect;

    .line 163
    .line 164
    invoke-virtual {p1, v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 168
    .line 169
    iget-object p1, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 170
    .line 171
    iget-object p1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 172
    .line 173
    iget-object v6, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mTmpRect:Landroid/graphics/Rect;

    .line 174
    .line 175
    invoke-virtual {p1, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 176
    .line 177
    .line 178
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 179
    .line 180
    iget-object v6, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 181
    .line 182
    iget-object v6, v6, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 183
    .line 184
    iget-object v7, p1, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 185
    .line 186
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 187
    .line 188
    .line 189
    iget-object v7, p1, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 190
    .line 191
    iget-object v8, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 192
    .line 193
    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 194
    .line 195
    .line 196
    iget-object p1, p1, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    add-int/2addr v3, v4

    .line 207
    invoke-virtual {v6, p1, v7, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 208
    .line 209
    .line 210
    iput-boolean v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 211
    .line 212
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 213
    .line 214
    iget-object p1, p1, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 215
    .line 216
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 220
    .line 221
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 222
    .line 223
    iget-object v5, p1, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 224
    .line 225
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 226
    .line 227
    if-eqz v3, :cond_11

    .line 228
    .line 229
    if-eqz v6, :cond_11

    .line 230
    .line 231
    iget-object v7, p1, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 232
    .line 233
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 234
    .line 235
    if-eqz v7, :cond_a

    .line 236
    .line 237
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 238
    .line 239
    invoke-virtual {v7, v8}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-nez v7, :cond_c

    .line 244
    .line 245
    :cond_a
    iget-object v7, p1, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 246
    .line 247
    if-eqz v7, :cond_b

    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    goto :goto_7

    .line 254
    :cond_b
    move-object v7, v0

    .line 255
    :goto_7
    if-eqz v7, :cond_11

    .line 256
    .line 257
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_11

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_11

    .line 268
    .line 269
    :cond_c
    iget-object v6, p1, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 270
    .line 271
    iget-object v7, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 272
    .line 273
    iget-object v7, v7, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 274
    .line 275
    if-eq v6, v7, :cond_d

    .line 276
    .line 277
    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p1, v7, v3}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_d
    iget-object p1, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 283
    .line 284
    if-eqz p1, :cond_19

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_19

    .line 291
    .line 292
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_e

    .line 297
    .line 298
    iget-object p1, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    .line 299
    .line 300
    if-eqz p1, :cond_e

    .line 301
    .line 302
    iget-object v3, v5, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 303
    .line 304
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 305
    .line 306
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 307
    .line 308
    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_e

    .line 313
    .line 314
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_9

    .line 322
    .line 323
    :cond_e
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 324
    .line 325
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 330
    .line 331
    if-eqz p1, :cond_f

    .line 332
    .line 333
    const/16 v3, 0x13

    .line 334
    .line 335
    invoke-virtual {p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideAllInputMethods(I)V

    .line 336
    .line 337
    .line 338
    :cond_f
    iget-object p1, v5, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 339
    .line 340
    if-eqz p1, :cond_10

    .line 341
    .line 342
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :cond_10
    if-eqz v0, :cond_19

    .line 347
    .line 348
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 349
    .line 350
    .line 351
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 352
    .line 353
    if-eqz p1, :cond_19

    .line 354
    .line 355
    iget-object v0, v5, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 356
    .line 357
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 358
    .line 359
    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    .line 360
    .line 361
    .line 362
    goto/16 :goto_9

    .line 363
    .line 364
    :cond_11
    if-eqz v6, :cond_12

    .line 365
    .line 366
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_12
    move-object v7, v0

    .line 370
    :goto_8
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 371
    .line 372
    if-nez v7, :cond_16

    .line 373
    .line 374
    if-eqz v3, :cond_13

    .line 375
    .line 376
    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 377
    .line 378
    if-eqz v3, :cond_13

    .line 379
    .line 380
    iget-object v6, p1, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 381
    .line 382
    iget-object v3, v3, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 383
    .line 384
    if-ne v6, v3, :cond_13

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_13
    iget-object v3, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 388
    .line 389
    if-eqz v3, :cond_15

    .line 390
    .line 391
    iget-object v5, p1, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 392
    .line 393
    if-eqz v5, :cond_15

    .line 394
    .line 395
    aget-boolean v4, v8, v4

    .line 396
    .line 397
    if-eqz v4, :cond_14

    .line 398
    .line 399
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 408
    .line 409
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    const-wide v5, 0x37e4813fbe14341eL    # 1.8830757259071388E-39

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    const/4 v7, 0x0

    .line 419
    const/4 v8, 0x0

    .line 420
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_14
    const-string v3, "Requesting to set focus to null window"

    .line 424
    .line 425
    const-string/jumbo v4, "reason=UpdateInputWindows"

    .line 426
    .line 427
    .line 428
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    const v4, 0xf231

    .line 433
    .line 434
    .line 435
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 436
    .line 437
    .line 438
    iget-object v3, p1, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 439
    .line 440
    iget v4, p1, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 441
    .line 442
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;

    .line 443
    .line 444
    .line 445
    :cond_15
    iput-object v0, p1, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_16
    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 449
    .line 450
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eqz v3, :cond_17

    .line 455
    .line 456
    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 457
    .line 458
    iget-object v3, v3, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 459
    .line 460
    iget v3, v3, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 461
    .line 462
    and-int/lit8 v3, v3, 0x4

    .line 463
    .line 464
    if-nez v3, :cond_17

    .line 465
    .line 466
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {p1, v7, v0}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_17
    aget-boolean v3, v8, v4

    .line 475
    .line 476
    if-eqz v3, :cond_18

    .line 477
    .line 478
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 483
    .line 484
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    const-wide v5, -0x767cbea62543cee4L    # -7.64369891452098E-263

    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    const/4 v7, 0x0

    .line 494
    const/4 v8, 0x0

    .line 495
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    :cond_18
    iput-object v0, p1, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 499
    .line 500
    :cond_19
    :goto_9
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 501
    .line 502
    iget-boolean v0, p1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 503
    .line 504
    if-nez v0, :cond_1a

    .line 505
    .line 506
    iget-object p1, p1, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 513
    .line 514
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 515
    .line 516
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 517
    .line 518
    .line 519
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 520
    .line 521
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 522
    .line 523
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 524
    .line 525
    .line 526
    :cond_1a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 527
    .line 528
    .line 529
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mTmpRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 12
    .line 13
    if-nez v0, :cond_c

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    move v3, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v3, v1

    .line 42
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 52
    .line 53
    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    move-object v4, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    :goto_1
    if-eqz v4, :cond_4

    .line 64
    .line 65
    iget-object v7, v0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-virtual {v4, v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v3, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 71
    .line 72
    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    move-object v0, v5

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_2
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 90
    .line 91
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 92
    .line 93
    iget-object v4, v4, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 107
    .line 108
    iget-object v3, v3, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 109
    .line 110
    iget-object v4, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 113
    .line 114
    .line 115
    iget-object v4, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 116
    .line 117
    iget-object v7, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 118
    .line 119
    invoke-virtual {v3, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 120
    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    const v4, 0x7ffffffd

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 128
    .line 129
    .line 130
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 131
    .line 132
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 151
    .line 152
    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 153
    .line 154
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_5

    .line 164
    .line 165
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 166
    .line 167
    iget-object v7, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 168
    .line 169
    iget-object v7, v7, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v4, v7, v0}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 179
    .line 180
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 181
    .line 182
    iget-object v4, v4, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v4, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 194
    .line 195
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 196
    .line 197
    iget-object v3, v3, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 198
    .line 199
    iget-object v4, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 202
    .line 203
    .line 204
    iget-object v4, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 205
    .line 206
    iget-object v7, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 207
    .line 208
    invoke-virtual {v3, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 209
    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 212
    .line 213
    const v4, 0x7ffffffe

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 217
    .line 218
    .line 219
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 220
    .line 221
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 222
    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 226
    .line 227
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 228
    .line 229
    const/16 v3, 0x7dd

    .line 230
    .line 231
    if-ne v0, v3, :cond_6

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 240
    .line 241
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 242
    .line 243
    invoke-virtual {v0, v5}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 247
    .line 248
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 249
    .line 250
    iget-object v3, v3, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 251
    .line 252
    iget-object v4, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 253
    .line 254
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 255
    .line 256
    .line 257
    iget-object v4, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 258
    .line 259
    iget-object v5, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 260
    .line 261
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 262
    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    add-int/2addr v5, v2

    .line 275
    invoke-virtual {v3, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 276
    .line 277
    .line 278
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 279
    .line 280
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    .line 281
    .line 282
    if-eqz v0, :cond_9

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_9

    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 295
    .line 296
    if-nez v0, :cond_7

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 300
    .line 301
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 302
    .line 303
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 304
    .line 305
    iget-object v0, v0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 306
    .line 307
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 308
    .line 309
    if-eqz v1, :cond_9

    .line 310
    .line 311
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_8

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_8
    iget v2, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 319
    .line 320
    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 321
    .line 322
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 323
    .line 324
    invoke-static {v1}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    const/4 v5, 0x1

    .line 329
    move-object v1, p1

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V

    .line 331
    .line 332
    .line 333
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 334
    .line 335
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    .line 338
    .line 339
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 340
    .line 341
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 342
    .line 343
    if-eqz v2, :cond_a

    .line 344
    .line 345
    iget v3, v2, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    .line 346
    .line 347
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 348
    .line 349
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 350
    .line 351
    if-ne v3, v5, :cond_a

    .line 352
    .line 353
    iget v3, v2, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 354
    .line 355
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 356
    .line 357
    if-ne v3, v4, :cond_a

    .line 358
    .line 359
    iget-object v2, v2, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    if-ne v2, v3, :cond_a

    .line 366
    .line 367
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 368
    .line 369
    iget v2, v2, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 370
    .line 371
    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 372
    .line 373
    if-eq v2, v3, :cond_b

    .line 374
    .line 375
    :cond_a
    new-instance v2, Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 376
    .line 377
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 378
    .line 379
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 380
    .line 381
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 382
    .line 383
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    iget v7, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 392
    .line 393
    invoke-direct {v2, v4, v3, v5, v7}, Lcom/android/internal/policy/KeyInterceptionInfo;-><init>(IILjava/lang/String;I)V

    .line 394
    .line 395
    .line 396
    iput-object v2, p1, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 397
    .line 398
    :cond_b
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 399
    .line 400
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_11

    .line 410
    .line 411
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 412
    .line 413
    invoke-virtual {v0, v6, p1}, Lcom/android/server/wm/InputMonitor;->populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V

    .line 414
    .line 415
    .line 416
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 417
    .line 418
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 419
    .line 420
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 421
    .line 422
    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 423
    .line 424
    iget-object p1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 425
    .line 426
    invoke-static {p0, p1, v6}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 427
    .line 428
    .line 429
    goto :goto_8

    .line 430
    :cond_c
    :goto_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_11

    .line 437
    .line 438
    invoke-static {v6}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 439
    .line 440
    .line 441
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 442
    .line 443
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 444
    .line 445
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_e

    .line 450
    .line 451
    :cond_d
    :goto_5
    move v1, v2

    .line 452
    goto :goto_6

    .line 453
    :cond_e
    const/4 v0, 0x3

    .line 454
    const/4 v3, -0x1

    .line 455
    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_d

    .line 460
    .line 461
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_f

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :cond_f
    :goto_6
    iget-object v0, v6, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 469
    .line 470
    iget v3, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 471
    .line 472
    if-ne v3, v1, :cond_10

    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_10
    iput v1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 476
    .line 477
    iput-boolean v2, v6, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 478
    .line 479
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 480
    .line 481
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 482
    .line 483
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 484
    .line 485
    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 486
    .line 487
    iget-object p1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 488
    .line 489
    invoke-static {p0, p1, v6}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 490
    .line 491
    .line 492
    :cond_11
    :goto_8
    return-void
.end method
