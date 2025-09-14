.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 13
    goto/16 :goto_6

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20
    monitor-enter v0

    .line 21
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/server/am/BroadcastRecord;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    goto/16 :goto_6

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    throw p0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 58
    monitor-enter v0

    .line 59
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    check-cast v1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 63
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 65
    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 67
    if-eqz v3, :cond_1

    .line 69
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 73
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 75
    iget-object v4, v4, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 77
    invoke-virtual {v4, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    .line 80
    move-result-wide v3

    .line 81
    iget-wide v5, v1, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    .line 83
    sub-long v7, v3, v5

    .line 85
    const-wide/16 v9, 0x0

    .line 87
    int-to-long v11, p1

    .line 88
    invoke-static/range {v7 .. v12}, Landroid/util/MathUtils;->constrain(JJJ)J

    .line 91
    move-result-wide v3

    .line 92
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;

    .line 94
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/utils/AnrTimer;->start(JLjava/lang/Object;)V

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const-string/jumbo p1, "deliveryTimeoutLocked"

    .line 101
    const/4 v3, 0x3

    .line 102
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 108
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    :goto_2
    move v1, v2

    .line 113
    goto/16 :goto_6

    .line 115
    :catchall_1
    move-exception p0

    .line 116
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    throw p0

    .line 121
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    check-cast v0, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v0

    .line 129
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 131
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 133
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 136
    monitor-enter v1

    .line 137
    const/4 v3, 0x2

    .line 138
    if-ne p1, v3, :cond_2

    .line 140
    :try_start_4
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 142
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 145
    goto :goto_3

    .line 146
    :catchall_2
    move-exception p0

    .line 147
    goto :goto_5

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 150
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 153
    :goto_3
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 161
    :goto_4
    if-eqz p1, :cond_3

    .line 163
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 168
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 170
    goto :goto_4

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 174
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 175
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 178
    goto :goto_2

    .line 179
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 180
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 183
    throw p0

    .line 184
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V

    .line 191
    goto :goto_2

    .line 192
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 197
    monitor-enter p1

    .line 198
    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mCheckPendingColdStartQueued:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkPendingColdStartValidityLocked()V

    .line 203
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 204
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 207
    goto :goto_2

    .line 208
    :catchall_3
    move-exception p0

    .line 209
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 210
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 213
    throw p0

    .line 214
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkHealth()V

    .line 217
    goto :goto_2

    .line 218
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 220
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 223
    monitor-enter v0

    .line 224
    :try_start_8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 228
    iget-object p1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 230
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 232
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 234
    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 239
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 242
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 243
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 246
    goto/16 :goto_2

    .line 248
    :catchall_4
    move-exception p0

    .line 249
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 250
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 253
    throw p0

    .line 254
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 261
    goto/16 :goto_2

    .line 263
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunningList()V

    .line 266
    goto/16 :goto_2

    .line 268
    :goto_6
    return v1

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
