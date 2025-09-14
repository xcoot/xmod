.class public final synthetic Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteAnimationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$3:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$4:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteAnimationController;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$4:[Landroid/view/RemoteAnimationTarget;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 4
    .line 5
    iget v3, v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;->f$4:[Landroid/view/RemoteAnimationTarget;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    const/4 v10, 0x0

    .line 20
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v1, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, v1, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v9, v1, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 38
    .line 39
    :cond_0
    aget-boolean v0, v8, v10

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {v3}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    array-length v2, v4

    .line 52
    int-to-long v11, v2

    .line 53
    array-length v2, v5

    .line 54
    int-to-long v13, v2

    .line 55
    array-length v2, v6

    .line 56
    int-to-long v9, v2

    .line 57
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 58
    .line 59
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    filled-new-array {v0, v2, v7, v9}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v20

    .line 75
    const-wide v16, -0x230c69ce848aca99L    # -5.831215766918494E139

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    const/16 v18, 0x54

    .line 81
    .line 82
    const/16 v19, 0x0

    .line 83
    .line 84
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 91
    .line 92
    const/16 v0, 0x16

    .line 93
    .line 94
    const/16 v2, 0x17

    .line 95
    .line 96
    if-eq v3, v0, :cond_2

    .line 97
    .line 98
    const/16 v0, 0x21

    .line 99
    .line 100
    if-eq v3, v0, :cond_2

    .line 101
    .line 102
    if-ne v3, v2, :cond_4

    .line 103
    .line 104
    :cond_2
    if-ne v3, v2, :cond_3

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v0, 0x1

    .line 109
    :goto_1
    const-string/jumbo v2, "onAnimationStart"

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v7, 0x1

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    filled-new-array {v0, v9, v7, v2}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const/16 v2, 0x7920

    .line 130
    .line 131
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-object v7, v1, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 141
    .line 142
    invoke-interface/range {v2 .. v7}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_2
    const-string v2, "WindowManager"

    .line 147
    .line 148
    const-string v3, "Failed to start remote animation"

    .line 149
    .line 150
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 154
    .line 155
    .line 156
    :goto_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 157
    .line 158
    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 159
    .line 160
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_8

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    aget-boolean v2, v8, v2

    .line 168
    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    const-wide v10, -0xfef83a008f2c437L    # -6.398640949035435E231

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    const/4 v12, 0x0

    .line 177
    const/4 v13, 0x0

    .line 178
    const/4 v14, 0x0

    .line 179
    move-object v9, v0

    .line 180
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    const/4 v2, 0x2

    .line 184
    aget-boolean v3, v8, v2

    .line 185
    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    const/4 v13, 0x0

    .line 189
    const/4 v14, 0x0

    .line 190
    const-wide v10, -0x13c45fd873c1ccc2L    # -2.325030856308935E213

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    const/4 v12, 0x0

    .line 196
    move-object v9, v0

    .line 197
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_6
    new-instance v0, Ljava/io/StringWriter;

    .line 201
    .line 202
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    .line 206
    .line 207
    invoke-direct {v3, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 208
    .line 209
    .line 210
    iget-object v4, v1, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    const/4 v5, 0x1

    .line 217
    sub-int/2addr v4, v5

    .line 218
    :goto_4
    if-ltz v4, :cond_7

    .line 219
    .line 220
    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    check-cast v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 227
    .line 228
    iget-object v5, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 229
    .line 230
    const-string v6, ""

    .line 231
    .line 232
    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    add-int/lit8 v4, v4, -0x1

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 239
    .line 240
    .line 241
    aget-boolean v1, v8, v2

    .line 242
    .line 243
    if-eqz v1, :cond_8

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 254
    .line 255
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const-wide v2, -0x25258cdbf8becb6dL    # -4.58352947082445E129

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    const/4 v4, 0x0

    .line 265
    const/4 v5, 0x0

    .line 266
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_8
    return-void
.end method
