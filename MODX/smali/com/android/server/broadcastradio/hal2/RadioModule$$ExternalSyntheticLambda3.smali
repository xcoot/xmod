.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method private final run$com$android$server$broadcastradio$hal2$RadioModule$1$$ExternalSyntheticLambda2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 5
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    .line 15
    move-result-object p0

    .line 16
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 18
    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 20
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 27
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v3, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 14
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 16
    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 18
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 23
    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 25
    iget-object v2, v2, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 27
    const/16 v3, 0x1f4

    .line 29
    const/16 v4, 0x64

    .line 31
    invoke-virtual {v2, p0, v4, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;II)Ljava/util/List;

    .line 34
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 38
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 40
    check-cast v0, Landroid/util/ArraySet;

    .line 42
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 58
    iget-object v5, v2, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 60
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    iget-object v6, v2, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 63
    if-nez v6, :cond_0

    .line 65
    monitor-exit v5

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v6, p0, v4, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;II)Ljava/util/List;

    .line 72
    move-result-object v6

    .line 73
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    goto :goto_0

    .line 78
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    throw p0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    monitor-exit v1

    .line 83
    return-void

    .line 84
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    throw p0

    .line 86
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->run$com$android$server$broadcastradio$hal2$RadioModule$1$$ExternalSyntheticLambda2()V

    .line 89
    return-void

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 92
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 94
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 96
    check-cast p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 98
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 100
    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 102
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 104
    monitor-enter v1

    .line 105
    :try_start_5
    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 107
    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 109
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 112
    move-result-object p0

    .line 113
    iput-object p0, v2, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 115
    iget-object p0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 117
    check-cast p0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 119
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 121
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;

    .line 123
    const/4 v3, 0x2

    .line 124
    invoke-direct {v2, v3, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 132
    :catchall_2
    move-exception p0

    .line 133
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 134
    throw p0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 137
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 139
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 141
    check-cast p0, Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 143
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 145
    monitor-enter v1

    .line 146
    :try_start_6
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 151
    :catchall_3
    move-exception p0

    .line 152
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 153
    throw p0

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
