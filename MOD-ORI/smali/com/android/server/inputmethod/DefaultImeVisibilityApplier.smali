.class public final Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/inputmethod/ImeVisibilityApplier;


# instance fields
.field public final mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 15
    .line 16
    const-class p1, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V
    .locals 9

    .line 1
    const-string v0, "InputMethodManagerService"

    .line 2
    .line 3
    const-string v1, "applyImeVisibility state="

    .line 4
    .line 5
    invoke-static {p3, v1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 9
    .line 10
    invoke-virtual {v0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 11
    .line 12
    .line 13
    move-result-object p5

    .line 14
    iget p5, p5, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    .line 15
    .line 16
    const/16 v0, 0x11

    .line 17
    .line 18
    if-eqz p3, :cond_7

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq p3, v1, :cond_6

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    packed-switch p3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p1, "Invalid IME visibility state: "

    .line 31
    .line 32
    invoke-static {p3, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    .line 41
    .line 42
    const-string p2, "Invalid displayId:"

    .line 43
    .line 44
    iget-object p3, p1, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 49
    .line 50
    .line 51
    monitor-enter p3

    .line 52
    :try_start_0
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 55
    .line 56
    invoke-virtual {p1, p5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    const-string p0, "WindowManager"

    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p2, ", fail to remove ime screenshot"

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 93
    .line 94
    .line 95
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 104
    .line 105
    const/16 p2, 0x23

    .line 106
    .line 107
    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :goto_0
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :pswitch_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_1

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->setImeVisibilityOnFocusedWindowClient(Z)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 129
    .line 130
    const/4 v7, 0x0

    .line 131
    const/4 v5, 0x1

    .line 132
    const/4 v6, 0x0

    .line 133
    move-object v3, p1

    .line 134
    move-object v4, p2

    .line 135
    move v8, p4

    .line 136
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z

    .line 137
    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :pswitch_2
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    if-eqz p3, :cond_2

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->setImeVisibilityOnFocusedWindowClient(Z)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 153
    .line 154
    const/4 v6, 0x2

    .line 155
    const/4 v7, 0x0

    .line 156
    move-object v4, p1

    .line 157
    move-object v5, p2

    .line 158
    move v8, p4

    .line 159
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 160
    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :pswitch_3
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    if-eqz p3, :cond_3

    .line 169
    .line 170
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->setImeVisibilityOnFocusedWindowClient(Z)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :cond_3
    iget-object v3, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 176
    .line 177
    const/4 v6, 0x0

    .line 178
    const/4 v7, 0x0

    .line 179
    move-object v4, p1

    .line 180
    move-object v5, p2

    .line 181
    move v8, p4

    .line 182
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 183
    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :pswitch_4
    iget-object p2, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    .line 188
    .line 189
    const-string p3, "Invalid displayId:"

    .line 190
    .line 191
    iget-object p4, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 192
    .line 193
    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 194
    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 196
    .line 197
    .line 198
    monitor-enter p4

    .line 199
    :try_start_3
    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 200
    .line 201
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 208
    .line 209
    if-nez v1, :cond_4

    .line 210
    .line 211
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :catchall_1
    move-exception p0

    .line 218
    goto :goto_1

    .line 219
    :cond_4
    :try_start_4
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 220
    .line 221
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 222
    .line 223
    invoke-virtual {p2, p5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    if-nez p2, :cond_5

    .line 228
    .line 229
    const-string p0, "WindowManager"

    .line 230
    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string p2, ", fail to show ime screenshot"

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 252
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_5
    :try_start_5
    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot(Lcom/android/server/wm/WindowState;)V

    .line 257
    .line 258
    .line 259
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 264
    .line 265
    const/16 p2, 0x22

    .line 266
    .line 267
    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :goto_1
    :try_start_6
    monitor-exit p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 272
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 273
    .line 274
    .line 275
    throw p0

    .line 276
    :cond_6
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 277
    .line 278
    .line 279
    move-result p3

    .line 280
    if-nez p3, :cond_9

    .line 281
    .line 282
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    invoke-interface {p3, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 290
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->showImePostLayout(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 296
    .line 297
    .line 298
    move-result p3

    .line 299
    if-nez p3, :cond_9

    .line 300
    .line 301
    iget-object p3, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 302
    .line 303
    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 304
    .line 305
    if-eqz p3, :cond_8

    .line 306
    .line 307
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    invoke-interface {p3, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 312
    .line 313
    .line 314
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 315
    .line 316
    invoke-virtual {p0, p1, p5, p2}, Lcom/android/server/wm/WindowManagerInternal;->hideIme(Landroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_8
    const-string p0, "InputMethodManagerService"

    .line 321
    .line 322
    const-string p1, "applyImeVisibility: client is null."

    .line 323
    .line 324
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-interface {p0, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 332
    .line 333
    .line 334
    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setImeVisibilityOnFocusedWindowClient(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
