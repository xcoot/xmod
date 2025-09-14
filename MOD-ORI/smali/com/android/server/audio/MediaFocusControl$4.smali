.class public final Lcom/android/server/audio/MediaFocusControl$4;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

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
    .locals 6

    .line 1
    const-string/jumbo v0, "handleMessage: MSG_DELAY_GAIN_AUDIO_FOCUS clientId = "

    .line 2
    .line 3
    .line 4
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, -0x1

    .line 9
    if-eq v1, v2, :cond_6

    .line 10
    .line 11
    if-eq v1, v3, :cond_5

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const-string v2, "MediaFocusControl"

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lcom/android/server/audio/FocusRequester;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->handleFocusGain()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    monitor-exit v1

    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_2
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v0

    .line 99
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_4

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 122
    .line 123
    iget-object v2, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_4

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 150
    .line 151
    iget-object v2, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_3

    .line 158
    .line 159
    const-string v2, "MediaFocusControl"

    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v5, "handleMessage: MSG_DELAY_LOSS_AUDIO_FOCUS clientId = "

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v5, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 185
    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    const/4 v3, 0x0

    .line 189
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    goto :goto_3

    .line 198
    :cond_4
    monitor-exit v0

    .line 199
    goto :goto_5

    .line 200
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    throw p0

    .line 202
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 205
    .line 206
    iget p1, p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    .line 207
    .line 208
    const-string v0, "MediaFocusControl"

    .line 209
    .line 210
    const-string v1, "MSL_L_FORGET_UID uid="

    .line 211
    .line 212
    invoke-static {p1, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 218
    .line 219
    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_6
    const-string v0, "MediaFocusControl"

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v2, "MSG_L_FOCUS_LOSS_AFTER_FADE loser="

    .line 228
    .line 229
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 235
    .line 236
    iget-object v2, v2, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 242
    .line 243
    monitor-enter v0

    .line 244
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 247
    .line 248
    iget-boolean v1, p1, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 249
    .line 250
    if-eqz v1, :cond_7

    .line 251
    .line 252
    invoke-virtual {p1, v4}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$4;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 259
    .line 260
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 261
    .line 262
    new-instance v2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 263
    .line 264
    iget v4, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 265
    .line 266
    invoke-direct {v2, v4}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    iget-object p1, p1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 274
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J

    .line 276
    .line 277
    .line 278
    move-result-wide p0

    .line 279
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :catchall_2
    move-exception p0

    .line 284
    goto :goto_6

    .line 285
    :cond_7
    :goto_4
    monitor-exit v0

    .line 286
    :goto_5
    return-void

    .line 287
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 288
    throw p0
.end method
