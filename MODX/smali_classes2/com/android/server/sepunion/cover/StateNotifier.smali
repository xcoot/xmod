.class public final Lcom/android/server/sepunion/cover/StateNotifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBootComplete:Z

.field public final mContext:Landroid/content/Context;

.field public mCoverOpen:Z

.field public mCoverType:I

.field public mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

.field public final mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

.field public final mHighPriorityListeners:Ljava/util/ArrayList;

.field public final mLcdOffDisableListeners:Ljava/util/ArrayList;

.field public mLcdOffDisabledByApp:Z

.field public mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-string/jumbo v1, "power"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/os/PowerManager;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    .line 49
    new-instance v1, Lcom/android/server/sepunion/cover/StateNotifier$H;

    .line 50
    .line 51
    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier$H;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    const-string v1, "CoverSwitchState"

    .line 58
    .line 59
    invoke-virtual {p2, p1, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 66
    .line 67
    .line 68
    const-string v1, "CoverAttachState"

    .line 69
    .line 70
    invoke-virtual {p2, p1, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V
    .locals 8

    .line 1
    check-cast p4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string p0, "CoverManager_StateNotifier"

    .line 30
    .line 31
    const-string p1, "addListenerToListLocked : duplicated listener handle"

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance v7, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    move-object v0, v7

    .line 48
    move-object v1, p0

    .line 49
    move-object v2, p1

    .line 50
    move-object v3, p2

    .line 51
    move v6, p3

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    :try_start_0
    invoke-interface {p1, v7, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  Live listeners ("

    .line 2
    .line 3
    const-string v1, " Current StateNotifier state:"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "):"

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "    "

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v4, v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, " (pid="

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v4, v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, " uid="

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v2, v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, ")"

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_1
    const-string v0, "  "

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 115
    .line 116
    monitor-enter v0

    .line 117
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v2, "  Live high priority listeners ("

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, "):"

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_3

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 165
    .line 166
    if-eqz v2, :cond_2

    .line 167
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v4, "    "

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v4, v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, " (pid="

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v4, v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v4, " uid="

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v2, v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v2, ")"

    .line 204
    .line 205
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catchall_1
    move-exception p0

    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :cond_3
    const-string v1, "  "

    .line 220
    .line 221
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 226
    .line 227
    monitor-enter v1

    .line 228
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v2, " LCD Off disabled by app: "

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v2, " LCD Off listeners ("

    .line 256
    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v2, "):"

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_5

    .line 292
    .line 293
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 298
    .line 299
    if-eqz v0, :cond_4

    .line 300
    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v3, "    "

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    iget-object v3, v0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v3, " (pid="

    .line 317
    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget v3, v0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    .line 322
    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v3, " uid="

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget v0, v0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    .line 332
    .line 333
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v0, ")"

    .line 337
    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_2

    .line 349
    :catchall_2
    move-exception p0

    .line 350
    goto :goto_3

    .line 351
    :cond_5
    const-string p0, "  "

    .line 352
    .line 353
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    monitor-exit v1

    .line 357
    return-void

    .line 358
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 359
    throw p0

    .line 360
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    throw p0

    .line 362
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    throw p0
.end method

.method public final enableLcdOffByCoverIfPossibleLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "CoverManager_"

    .line 21
    .line 22
    const-string v2, "goToSleep by cover close : enableLcdOff"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 v4, 0x14

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    .line 43
    .line 44
    const/4 v1, 0x7

    .line 45
    if-eq p0, v1, :cond_1

    .line 46
    .line 47
    const/16 v1, 0xb

    .line 48
    .line 49
    if-eq p0, v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0xe

    .line 52
    .line 53
    if-ne p0, v1, :cond_2

    .line 54
    .line 55
    :cond_1
    invoke-interface {v0}, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;->onLcdOffByCoverEnabled()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final updateCoverAttachState(IZZ)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    .line 4
    .line 5
    iget-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p3}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-boolean p3, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    const/4 v3, 0x7

    .line 21
    if-nez p3, :cond_5

    .line 22
    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    const/16 p3, 0xb

    .line 26
    .line 27
    if-eq p1, p3, :cond_3

    .line 28
    .line 29
    if-eq p1, v3, :cond_2

    .line 30
    .line 31
    if-eq p1, v2, :cond_1

    .line 32
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :cond_0
    move p1, v1

    .line 37
    goto :goto_0

    .line 38
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 108
    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 112
    .line 113
    if-eqz p1, :cond_0

    .line 114
    .line 115
    move p1, v0

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 139
    .line 140
    :goto_0
    if-eqz p1, :cond_a

    .line 141
    .line 142
    :cond_5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_6

    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    .line 154
    .line 155
    :cond_6
    sget-boolean p1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge:Z

    .line 156
    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    iget p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    .line 160
    .line 161
    if-eq p1, v3, :cond_7

    .line 162
    .line 163
    if-eq p1, v2, :cond_7

    .line 164
    .line 165
    const/16 p3, 0xe

    .line 166
    .line 167
    if-eq p1, p3, :cond_7

    .line 168
    .line 169
    const/16 p3, 0xf

    .line 170
    .line 171
    if-eq p1, p3, :cond_7

    .line 172
    .line 173
    const/16 p3, 0x10

    .line 174
    .line 175
    if-eq p1, p3, :cond_7

    .line 176
    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    const/16 p3, 0x11

    .line 180
    .line 181
    if-ne p1, p3, :cond_8

    .line 182
    .line 183
    :cond_7
    if-eqz p2, :cond_8

    .line 184
    .line 185
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(I)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_8
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(I)V

    .line 190
    .line 191
    .line 192
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    .line 193
    .line 194
    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    .line 200
    .line 201
    :cond_a
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final updatePowerState(IZ)V
    .locals 4

    .line 1
    const-string v0, "CoverManager_StateNotifier"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "updatePowerState : isOpen="

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ", type="

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    .line 31
    xor-int/lit8 v1, p2, 0x1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x67

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_6

    .line 40
    .line 41
    const/16 v2, 0xb

    .line 42
    .line 43
    if-eq p1, v2, :cond_5

    .line 44
    .line 45
    const/16 v2, 0x64

    .line 46
    .line 47
    if-eq p1, v2, :cond_6

    .line 48
    .line 49
    const/4 v2, 0x7

    .line 50
    if-eq p1, v2, :cond_1

    .line 51
    .line 52
    const/16 p2, 0x8

    .line 53
    .line 54
    if-eq p1, p2, :cond_0

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 68
    .line 69
    if-eqz p1, :cond_e

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_e

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 80
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 100
    .line 101
    if-eqz p1, :cond_e

    .line 102
    .line 103
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 104
    .line 105
    if-eqz p1, :cond_e

    .line 106
    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide p1

    .line 123
    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 129
    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide p1

    .line 134
    const-string/jumbo v1, "updatePowerState"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_5

    .line 141
    .line 142
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 143
    .line 144
    if-eqz p1, :cond_e

    .line 145
    .line 146
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 147
    .line 148
    monitor-enter p1

    .line 149
    :try_start_0
    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_4

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    goto :goto_1

    .line 163
    :cond_4
    :goto_0
    monitor-exit p1

    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p0

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 178
    .line 179
    if-eqz p1, :cond_e

    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_e

    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 190
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide p1

    .line 195
    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_5

    .line 199
    .line 200
    :cond_6
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 210
    .line 211
    if-eqz p1, :cond_e

    .line 212
    .line 213
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_e

    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    invoke-static {p1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_e

    .line 226
    .line 227
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_7

    .line 232
    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_7
    if-eqz p2, :cond_9

    .line 236
    .line 237
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_8

    .line 244
    .line 245
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 246
    .line 247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 248
    .line 249
    .line 250
    move-result-wide v2

    .line 251
    invoke-virtual {p1, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_8
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 256
    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v1

    .line 261
    const-string/jumbo p2, "updatePowerState"

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :goto_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    .line 268
    .line 269
    if-eqz p1, :cond_e

    .line 270
    .line 271
    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    .line 273
    .line 274
    goto/16 :goto_5

    .line 275
    .line 276
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 277
    .line 278
    const/16 p2, 0x14

    .line 279
    .line 280
    if-eqz p1, :cond_c

    .line 281
    .line 282
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 283
    .line 284
    monitor-enter p1

    .line 285
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_a

    .line 292
    .line 293
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_b

    .line 304
    .line 305
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    check-cast p2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 310
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v1, "cover close: goToSleep disabled by: PID:"

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget v1, p2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, " UID:"

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget p2, p2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    .line 332
    .line 333
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    const-string v0, "CoverManager_StateNotifier"

    .line 341
    .line 342
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    goto :goto_3

    .line 346
    :catchall_1
    move-exception p0

    .line 347
    goto :goto_4

    .line 348
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 349
    .line 350
    const-string v0, "CoverManager_"

    .line 351
    .line 352
    const-string v2, "goToSleep by cover close : mLcdOffDisableListeners is empty"

    .line 353
    .line 354
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 358
    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 360
    .line 361
    .line 362
    move-result-wide v2

    .line 363
    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 364
    .line 365
    .line 366
    :cond_b
    monitor-exit p1

    .line 367
    goto :goto_5

    .line 368
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    throw p0

    .line 370
    :cond_c
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    .line 371
    .line 372
    if-eqz p1, :cond_d

    .line 373
    .line 374
    const-string p1, "CoverManager_"

    .line 375
    .line 376
    const-string v0, "goToSleep by cover close : mLcdOffDisabledByApp is false"

    .line 377
    .line 378
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 382
    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 384
    .line 385
    .line 386
    move-result-wide v2

    .line 387
    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_d
    new-instance p1, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    .line 392
    .line 393
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;)V

    .line 394
    .line 395
    .line 396
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    .line 397
    .line 398
    :cond_e
    :goto_5
    return-void
.end method
