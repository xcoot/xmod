.class public final synthetic Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;->run()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onLongClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "RemoteInlineSuggestionUi"

    .line 25
    .line 26
    const-string v0, "RemoteException calling onLongClick"

    .line 27
    .line 28
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onClick()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_1
    const-string p0, "RemoteInlineSuggestionUi"

    .line 48
    .line 49
    const-string v0, "RemoteException calling onClick"

    .line 50
    .line 51
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    return-void

    .line 55
    :pswitch_2
    const-string v0, "RemoteInlineSuggestionUi"

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    :try_start_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    const-string/jumbo v1, "releasing the host"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    .line 73
    .line 74
    invoke-interface {v1}, Landroid/service/autofill/IInlineSuggestionUi;->releaseSurfaceControlViewHost()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_2
    const-string v1, "RemoteException calling releaseSurfaceControlViewHost"

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_2
    iput-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_3
    const/4 v0, -0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    .line 106
    .line 107
    const-string v2, "RemoteInlineSuggestionUi"

    .line 108
    .line 109
    if-nez v0, :cond_e

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 116
    .line 117
    if-eqz p0, :cond_f

    .line 118
    .line 119
    const-string p0, "Inline suggestion ui is not ready"

    .line 120
    .line 121
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 127
    .line 128
    iget-object v2, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-nez v2, :cond_6

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v2}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_a

    .line 154
    .line 155
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Landroid/app/slice/SliceItem;

    .line 160
    .line 161
    invoke-virtual {v5}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const-string/jumbo v7, "image"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-nez v6, :cond_8

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    invoke-virtual {v5}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    const/4 v7, 0x4

    .line 184
    if-eq v6, v7, :cond_9

    .line 185
    .line 186
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    const/4 v7, 0x6

    .line 191
    if-eq v6, v7, :cond_9

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v5, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eq v5, v3, :cond_7

    .line 203
    .line 204
    const-string/jumbo v2, "sanitizeSlice() user: "

    .line 205
    .line 206
    .line 207
    const-string v4, " cannot access icons in Slice"

    .line 208
    .line 209
    const-string v5, "AutofillHelper"

    .line 210
    .line 211
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_a
    move-object v1, v2

    .line 216
    :goto_4
    const-string v2, "RemoteInlineSuggestionViewConnector"

    .line 217
    .line 218
    if-nez v1, :cond_b

    .line 219
    .line 220
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 221
    .line 222
    if-eqz v0, :cond_d

    .line 223
    .line 224
    const-string v0, "Skipped rendering inline suggestion."

    .line 225
    .line 226
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_b
    iget-object v1, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 231
    .line 232
    if-eqz v1, :cond_d

    .line 233
    .line 234
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 235
    .line 236
    if-eqz v1, :cond_c

    .line 237
    .line 238
    const-string v1, "Request to recreate the UI"

    .line 239
    .line 240
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_c
    iget-object v5, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 244
    .line 245
    iget-object v8, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    .line 246
    .line 247
    iget v10, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    .line 248
    .line 249
    iget v11, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    .line 250
    .line 251
    iget-object v3, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 252
    .line 253
    iget-object v4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 254
    .line 255
    iget v6, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    .line 256
    .line 257
    iget v7, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    .line 258
    .line 259
    iget v9, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    .line 260
    .line 261
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    .line 262
    .line 263
    .line 264
    :cond_d
    :goto_5
    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_e
    :try_start_3
    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

    .line 269
    .line 270
    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v0, v1}, Landroid/service/autofill/IInlineSuggestionUi;->getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :catch_3
    const-string p0, "RemoteException calling getSurfacePackage."

    .line 278
    .line 279
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :cond_f
    :goto_6
    return-void

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
