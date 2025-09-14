.class public final Lcom/android/server/am/PendingIntentController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mH:Landroid/os/Handler;

.field public final mIntentSenderRecords:Ljava/util/HashMap;

.field public final mIntentsPerUid:Landroid/util/SparseIntArray;

.field public final mLock:Ljava/lang/Object;

.field public final mRecentIntentsPerUid:Landroid/util/SparseArray;

.field public final mUserController:Lcom/android/server/am/UserController;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 38
    .line 39
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;I)V

    .line 5
    .line 6
    .line 7
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 10
    .line 11
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    new-instance p3, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-static {p3, p0, p2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 3

    .line 1
    iget p1, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 20
    .line 21
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 22
    .line 23
    add-int/lit8 v2, v2, -0xa

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final dumpPendingIntents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-lez v1, :cond_9

    .line 17
    .line 18
    new-instance v1, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_4

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_0
    const/4 v6, 0x0

    .line 63
    :goto_1
    if-nez v6, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    if-eqz p2, :cond_2

    .line 70
    .line 71
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 83
    .line 84
    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ljava/util/ArrayList;

    .line 91
    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    new-instance v5, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 100
    .line 101
    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    move p2, v2

    .line 111
    move v4, p2

    .line 112
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    const/4 v6, 0x1

    .line 117
    if-ge p2, v5, :cond_7

    .line 118
    .line 119
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Ljava/util/ArrayList;

    .line 124
    .line 125
    const-string v5, "  * "

    .line 126
    .line 127
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v5, ": "

    .line 140
    .line 141
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 149
    .line 150
    .line 151
    const-string v5, " items"

    .line 152
    .line 153
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move v5, v2

    .line 157
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-ge v5, v7, :cond_6

    .line 162
    .line 163
    const-string v7, "    #"

    .line 164
    .line 165
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 169
    .line 170
    .line 171
    const-string v7, ": "

    .line 172
    .line 173
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    if-eqz p3, :cond_5

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    .line 190
    .line 191
    const-string v8, "      "

    .line 192
    .line 193
    invoke-virtual {v7, p1, v8}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 200
    .line 201
    move v4, v6

    .line 202
    goto :goto_2

    .line 203
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-lez p2, :cond_a

    .line 208
    .line 209
    const-string p2, "  * WEAK REFS:"

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    move p2, v2

    .line 215
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result p3

    .line 219
    if-ge p2, p3, :cond_8

    .line 220
    .line 221
    const-string p3, "    #"

    .line 222
    .line 223
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 227
    .line 228
    .line 229
    const-string p3, ": "

    .line 230
    .line 231
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    add-int/lit8 p2, p2, 0x1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_8
    move v4, v6

    .line 245
    goto :goto_5

    .line 246
    :cond_9
    move v4, v2

    .line 247
    :cond_a
    :goto_5
    iget-object p2, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    if-lez p2, :cond_b

    .line 254
    .line 255
    :goto_6
    if-ge v2, p2, :cond_b

    .line 256
    .line 257
    const-string p3, "  * UID: "

    .line 258
    .line 259
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 263
    .line 264
    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 265
    .line 266
    .line 267
    move-result p3

    .line 268
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 269
    .line 270
    .line 271
    const-string p3, " total: "

    .line 272
    .line 273
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 277
    .line 278
    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 279
    .line 280
    .line 281
    move-result p3

    .line 282
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 v2, v2, 0x1

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    if-nez v4, :cond_c

    .line 289
    .line 290
    const-string p0, "  (nothing)"

    .line 291
    .line 292
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_c
    monitor-exit v0

    .line 296
    return-void

    .line 297
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    throw p0
.end method

.method public final getIntentSender(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v4, p8

    .line 6
    .line 7
    move-object/from16 v14, p11

    .line 8
    .line 9
    iget-object v15, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v15

    .line 12
    const/4 v13, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v14, :cond_0

    .line 15
    .line 16
    move v3, v2

    .line 17
    :goto_0
    :try_start_0
    array-length v5, v14

    .line 18
    if-ge v3, v5, :cond_0

    .line 19
    .line 20
    aget-object v5, v14, v3

    .line 21
    .line 22
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setDefusable(Z)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_0
    move-object/from16 v3, p6

    .line 32
    .line 33
    invoke-static {v3, v13}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    invoke-static/range {p6 .. p6}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-wide/32 v5, 0x131cf49a

    .line 41
    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_2

    .line 50
    .line 51
    const-string v7, "ActivityManager"

    .line 52
    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v9, "Resetting option setPendingIntentBackgroundActivityStartMode("

    .line 59
    .line 60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v9, ") to SYSTEM_DEFINED from the options provided by the pending intent creator ("

    .line 71
    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v9, ") because this option is meant for the pending intent sender"

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v6, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_1

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string/jumbo v1, "pendingIntentBackgroundActivityStartMode must not be set when creating a PendingIntent"

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->isPendingIntentBackgroundActivityLaunchAllowedByPermission()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    const-string v7, "ActivityManager"

    .line 118
    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v9, "Resetting option pendingIntentBackgroundActivityLaunchAllowedByPermission which is set by the pending intent creator ("

    .line 125
    .line 126
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v9, ") because this option is meant for the pending intent sender"

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    invoke-static {v5, v6, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_3

    .line 149
    .line 150
    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    const-string/jumbo v1, "pendingIntentBackgroundActivityLaunchAllowedByPermission can not be set by creator of a PendingIntent"

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_4
    :goto_2
    const/high16 v5, 0x20000000

    .line 164
    .line 165
    and-int v5, p5, v5

    .line 166
    .line 167
    if-eqz v5, :cond_5

    .line 168
    .line 169
    move/from16 v16, v13

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    move/from16 v16, v2

    .line 173
    .line 174
    :goto_3
    const/high16 v5, 0x10000000

    .line 175
    .line 176
    and-int v5, p5, v5

    .line 177
    .line 178
    if-eqz v5, :cond_6

    .line 179
    .line 180
    move/from16 v17, v13

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    move/from16 v17, v2

    .line 184
    .line 185
    :goto_4
    const/high16 v5, 0x8000000

    .line 186
    .line 187
    and-int v5, p5, v5

    .line 188
    .line 189
    if-eqz v5, :cond_7

    .line 190
    .line 191
    move/from16 v18, v13

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    move/from16 v18, v2

    .line 195
    .line 196
    :goto_5
    const v2, -0x38000001

    .line 197
    .line 198
    .line 199
    and-int v11, p5, v2

    .line 200
    .line 201
    new-instance v12, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 202
    .line 203
    new-instance v10, Lcom/android/server/wm/SafeActivityOptions;

    .line 204
    .line 205
    invoke-direct {v10, v3}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 206
    .line 207
    .line 208
    move-object v2, v12

    .line 209
    move/from16 v3, p1

    .line 210
    .line 211
    move-object/from16 v4, p8

    .line 212
    .line 213
    move-object/from16 v5, p9

    .line 214
    .line 215
    move-object/from16 v6, p7

    .line 216
    .line 217
    move-object/from16 v7, p10

    .line 218
    .line 219
    move/from16 v8, p4

    .line 220
    .line 221
    move-object/from16 v9, p11

    .line 222
    .line 223
    move-object/from16 v19, v10

    .line 224
    .line 225
    move-object/from16 v10, p12

    .line 226
    .line 227
    move-object v1, v12

    .line 228
    move-object/from16 v12, v19

    .line 229
    .line 230
    move/from16 v19, v13

    .line 231
    .line 232
    move/from16 v13, p3

    .line 233
    .line 234
    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    .line 235
    .line 236
    .line 237
    iget-object v2, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 238
    .line 239
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 244
    .line 245
    const/4 v3, 0x0

    .line 246
    if-eqz v2, :cond_8

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_8
    move-object v2, v3

    .line 256
    :goto_6
    if-eqz v2, :cond_e

    .line 257
    .line 258
    if-nez v17, :cond_d

    .line 259
    .line 260
    if-eqz v18, :cond_c

    .line 261
    .line 262
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 265
    .line 266
    if-eqz v0, :cond_a

    .line 267
    .line 268
    if-eqz v14, :cond_9

    .line 269
    .line 270
    array-length v1, v14

    .line 271
    add-int/lit8 v1, v1, -0x1

    .line 272
    .line 273
    aget-object v1, v14, v1

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_9
    move-object v1, v3

    .line 277
    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    :cond_a
    if-eqz v14, :cond_b

    .line 281
    .line 282
    array-length v0, v14

    .line 283
    add-int/lit8 v0, v0, -0x1

    .line 284
    .line 285
    iget-object v1, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 286
    .line 287
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 288
    .line 289
    aput-object v3, v14, v0

    .line 290
    .line 291
    iput-object v14, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 292
    .line 293
    move-object/from16 v0, p12

    .line 294
    .line 295
    iput-object v0, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_b
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 299
    .line 300
    iput-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 301
    .line 302
    iput-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 303
    .line 304
    :cond_c
    :goto_8
    monitor-exit v15

    .line 305
    return-object v2

    .line 306
    :cond_d
    const/16 v3, 0x20

    .line 307
    .line 308
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;I)V

    .line 309
    .line 310
    .line 311
    iget-object v3, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 312
    .line 313
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v2}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 317
    .line 318
    .line 319
    :cond_e
    if-eqz v16, :cond_f

    .line 320
    .line 321
    monitor-exit v15

    .line 322
    return-object v2

    .line 323
    :cond_f
    new-instance v2, Lcom/android/server/am/PendingIntentRecord;

    .line 324
    .line 325
    move-object v3, v1

    .line 326
    move/from16 v1, p2

    .line 327
    .line 328
    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 332
    .line 333
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 334
    .line 335
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v2}, Lcom/android/server/am/PendingIntentController;->incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 339
    .line 340
    .line 341
    monitor-exit v15

    .line 342
    return-object v2

    .line 343
    :goto_9
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    throw v0
.end method

.method public final incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 8

    .line 1
    iget v0, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v2, v3

    .line 19
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/16 v1, 0xc8

    .line 31
    .line 32
    const-string v3, "Too many PendingIntent created for uid "

    .line 33
    .line 34
    const-string v4, "ActivityManager"

    .line 35
    .line 36
    if-le v2, v1, :cond_1

    .line 37
    .line 38
    rem-int/lit8 v1, v2, 0x64

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "->"

    .line 43
    .line 44
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    .line 49
    iget v5, v1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 50
    .line 51
    add-int/lit8 v6, v5, -0x9

    .line 52
    .line 53
    if-ne v2, v6, :cond_2

    .line 54
    .line 55
    new-instance v5, Lcom/android/internal/util/RingBuffer;

    .line 56
    .line 57
    const-class v6, Ljava/lang/String;

    .line 58
    .line 59
    const/16 v7, 0xa

    .line 60
    .line 61
    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 62
    .line 63
    .line 64
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v6, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    if-le v2, v6, :cond_3

    .line 71
    .line 72
    if-gt v2, v5, :cond_3

    .line 73
    .line 74
    iget-object v5, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lcom/android/internal/util/RingBuffer;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v5, 0x0

    .line 84
    :goto_1
    if-nez v5, :cond_4

    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    invoke-virtual {p1, v6}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v5, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget p1, v1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 98
    .line 99
    if-ne v2, p1, :cond_5

    .line 100
    .line 101
    const-string p1, ", recent 10: "

    .line 102
    .line 103
    invoke-static {v0, v3, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v4, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 128
    .line 129
    .line 130
    :cond_5
    return-void
.end method

.method public final makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 15
    .line 16
    iput p2, p1, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    .line 17
    .line 18
    iget-object p2, p1, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda2;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    const-class p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 46
    .line 47
    new-instance p2, Landroid/app/PendingIntent;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 55
    .line 56
    const/4 p1, 0x7

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
