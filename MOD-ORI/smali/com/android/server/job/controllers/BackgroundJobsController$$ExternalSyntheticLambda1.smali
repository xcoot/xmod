.class public final synthetic Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-wide v1, 0x20b00000002L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide v3, 0x10b00000001L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 32
    .line 33
    .line 34
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 35
    .line 36
    const-wide v4, 0x10500000002L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 45
    .line 46
    const-wide v5, 0x10900000003L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-wide v6, 0x10800000004L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 66
    .line 67
    .line 68
    iget-object v5, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v5

    .line 71
    :try_start_0
    iget-object v6, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 72
    .line 73
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    const/4 v5, 0x1

    .line 83
    const/4 v7, 0x0

    .line 84
    if-nez v6, :cond_1

    .line 85
    .line 86
    iget-object v6, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v6

    .line 89
    :try_start_1
    iget-object v8, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 90
    .line 91
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-static {v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    monitor-exit v6

    .line 100
    if-eqz v8, :cond_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    move v6, v7

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_1
    :goto_0
    move v6, v5

    .line 109
    :goto_1
    const-wide v8, 0x10800000005L

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 115
    .line 116
    .line 117
    const-wide v8, 0x10800000006L

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p0, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 127
    .line 128
    .line 129
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 130
    .line 131
    const/high16 v0, 0x400000

    .line 132
    .line 133
    and-int/2addr p1, v0

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    move v5, v7

    .line 138
    :goto_2
    const-wide v3, 0x10800000007L

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    throw p0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 165
    .line 166
    const-string v2, "#"

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 172
    .line 173
    .line 174
    const-string v2, " from "

    .line 175
    .line 176
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 180
    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_3

    .line 189
    .line 190
    const-string v2, " active"

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_3
    const-string v2, " idle"

    .line 194
    .line 195
    :goto_3
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 199
    .line 200
    monitor-enter v2

    .line 201
    :try_start_3
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 202
    .line 203
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 212
    if-nez v3, :cond_4

    .line 213
    .line 214
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 215
    .line 216
    monitor-enter v2

    .line 217
    :try_start_4
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 218
    .line 219
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    monitor-exit v2

    .line 228
    if-eqz v3, :cond_5

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :catchall_2
    move-exception p0

    .line 232
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 233
    throw p0

    .line 234
    :cond_4
    :goto_4
    const-string v2, ", exempted"

    .line 235
    .line 236
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_5
    const-string v2, ": "

    .line 240
    .line 241
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v3, " [RUN_ANY_IN_BACKGROUND "

    .line 250
    .line 251
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_6

    .line 259
    .line 260
    const-string v0, "allowed]"

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_6
    const-string/jumbo v0, "disallowed]"

    .line 264
    .line 265
    .line 266
    :goto_5
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 270
    .line 271
    const/high16 v0, 0x400000

    .line 272
    .line 273
    and-int/2addr p1, v0

    .line 274
    if-eqz p1, :cond_7

    .line 275
    .line 276
    const-string p1, " RUNNABLE"

    .line 277
    .line 278
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_7
    const-string p1, " WAITING"

    .line 283
    .line 284
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :goto_6
    return-void

    .line 288
    :catchall_3
    move-exception p0

    .line 289
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 290
    throw p0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
