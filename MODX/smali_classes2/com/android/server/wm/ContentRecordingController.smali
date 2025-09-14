.class public final Lcom/android/server/wm/ContentRecordingController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mSession:Landroid/view/ContentRecordingSession;


# virtual methods
.method public getContentRecordingSessionLocked()Landroid/view/ContentRecordingSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->isValid(Landroid/view/ContentRecordingSession;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 33
    .line 34
    invoke-static {v2, p1}, Landroid/view/ContentRecordingSession;->isProjectionOnSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    aget-boolean v2, v3, v1

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-long v4, v2

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 64
    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    const-wide v7, -0x3207f3dbe3cca3eL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const/4 v9, 0x1

    .line 79
    const-string v10, "Content Recording: Accept session updating same display %d with granted consent, with an existing session %s"

    .line 80
    .line 81
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    aget-boolean p2, v3, v1

    .line 86
    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    int-to-long p1, p1

    .line 94
    iget-object p0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 105
    .line 106
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const-wide v1, -0x5301ed13bcaec53cL    # -5.767018449237889E-92

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    const-string v4, "Content Recording: Ignoring session on same display %d, with an existing session %s"

    .line 121
    .line 122
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void

    .line 126
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    aget-boolean v4, v3, v1

    .line 130
    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    int-to-long v4, v4

    .line 138
    iget-object v6, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 139
    .line 140
    if-nez v6, :cond_5

    .line 141
    .line 142
    move-object v6, v2

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {v6}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 157
    .line 158
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    const-wide v8, 0x3aa84b38be7a3ef3L    # 3.924880660545818E-26

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    const/4 v10, 0x1

    .line 172
    const-string v11, "Content Recording: Handle incoming session on display %d, with a pre-existing session %s"

    .line 173
    .line 174
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-virtual {p2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    if-nez p2, :cond_8

    .line 188
    .line 189
    aget-boolean p0, v3, v1

    .line 190
    .line 191
    if-eqz p0, :cond_7

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    int-to-long p0, p0

    .line 198
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 199
    .line 200
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const-wide v1, -0x13a6217f275ccb4fL    # -8.708816849011871E213

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    const/4 v3, 0x1

    .line 214
    const-string v4, "Content Recording: Incoming session on display %d can\'t be set since it is already null; the corresponding VirtualDisplay must have already been removed."

    .line 215
    .line 216
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    return-void

    .line 220
    :cond_8
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_9
    move-object p2, v2

    .line 228
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 229
    .line 230
    if-eqz v4, :cond_b

    .line 231
    .line 232
    if-nez v0, :cond_b

    .line 233
    .line 234
    aget-boolean v0, v3, v1

    .line 235
    .line 236
    if-eqz v0, :cond_a

    .line 237
    .line 238
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 239
    .line 240
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 241
    .line 242
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 247
    .line 248
    const-string v7, "Content Recording: Pause the recording session on display %s"

    .line 249
    .line 250
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    const-wide v4, -0x4fccee3fe19cca6bL    # -1.6468601503212928E-76

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    const/4 v6, 0x0

    .line 260
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->pauseRecording()V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 271
    .line 272
    .line 273
    :cond_b
    iput-object p2, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 274
    .line 275
    iput-object p1, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 276
    .line 277
    return-void
.end method
