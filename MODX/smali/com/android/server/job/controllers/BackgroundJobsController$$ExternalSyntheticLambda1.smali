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

    .line 3
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 5
    iput-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 8
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    .line 12
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-wide v1, 0x20b00000002L

    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 25
    move-result-wide v1

    .line 26
    const-wide v3, 0x10b00000001L

    .line 31
    invoke-virtual {p1, p0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 34
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 36
    const-wide v4, 0x10500000002L

    .line 41
    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 46
    const-wide v5, 0x10900000003L

    .line 51
    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 54
    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 56
    invoke-virtual {v0, v3}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 59
    move-result v5

    .line 60
    const-wide v6, 0x10800000004L

    .line 65
    invoke-virtual {p0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 68
    iget-object v5, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 70
    monitor-enter v5

    .line 71
    :try_start_0
    iget-object v6, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 73
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 76
    move-result v7

    .line 77
    invoke-static {v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

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

    .line 86
    iget-object v6, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 88
    monitor-enter v6

    .line 89
    :try_start_1
    iget-object v8, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 91
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 94
    move-result v9

    .line 95
    invoke-static {v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 98
    move-result v8

    .line 99
    monitor-exit v6

    .line 100
    if-eqz v8, :cond_0

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

    .line 114
    invoke-virtual {p0, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 117
    const-wide v8, 0x10800000006L

    .line 122
    invoke-virtual {v0, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    .line 125
    move-result v0

    .line 126
    invoke-virtual {p0, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 129
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 131
    const/high16 v0, 0x400000

    .line 133
    and-int/2addr p1, v0

    .line 134
    if-eqz p1, :cond_2

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    move v5, v7

    .line 138
    :goto_2
    const-wide v3, 0x10800000007L

    .line 143
    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 146
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

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

    .line 155
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 157
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 159
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 166
    const-string v2, "#"

    .line 168
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 174
    const-string v2, " from "

    .line 176
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 179
    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 182
    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_3

    .line 190
    const-string v2, " active"

    .line 192
    goto :goto_3

    .line 193
    :cond_3
    const-string v2, " idle"

    .line 195
    :goto_3
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 198
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 200
    monitor-enter v2

    .line 201
    :try_start_3
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 203
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 206
    move-result v4

    .line 207
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 210
    move-result v3

    .line 211
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 212
    if-nez v3, :cond_4

    .line 214
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 216
    monitor-enter v2

    .line 217
    :try_start_4
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 219
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 222
    move-result v4

    .line 223
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 226
    move-result v3

    .line 227
    monitor-exit v2

    .line 228
    if-eqz v3, :cond_5

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

    .line 236
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 239
    :cond_5
    const-string v2, ": "

    .line 241
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 249
    const-string v3, " [RUN_ANY_IN_BACKGROUND "

    .line 251
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_6

    .line 260
    const-string v0, "allowed]"

    .line 262
    goto :goto_5

    .line 263
    :cond_6
    const-string/jumbo v0, "disallowed]"

    .line 266
    :goto_5
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 271
    const/high16 v0, 0x400000

    .line 273
    and-int/2addr p1, v0

    .line 274
    if-eqz p1, :cond_7

    .line 276
    const-string p1, " RUNNABLE"

    .line 278
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 281
    goto :goto_6

    .line 282
    :cond_7
    const-string p1, " WAITING"

    .line 284
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

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
