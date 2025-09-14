.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method private final run$com$android$server$broadcastradio$aidl$RadioModule$1$$ExternalSyntheticLambda1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 5
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    check-cast p0, Landroid/hardware/broadcastradio/ProgramInfo;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 15
    move-result-object p0

    .line 16
    const-string v1, "Program info from AIDL HAL is invalid"

    .line 18
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 23
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 28
    iput-object p0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 30
    new-instance v2, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v3, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 14
    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 16
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    .line 22
    move-result-object p0

    .line 23
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 25
    new-instance v2, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v2, v3, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->run$com$android$server$broadcastradio$aidl$RadioModule$1$$ExternalSyntheticLambda1()V

    .line 42
    return-void

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 45
    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 47
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 49
    check-cast p0, Landroid/hardware/broadcastradio/ProgramListChunk;

    .line 51
    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 53
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 55
    monitor-enter v1

    .line 56
    :try_start_1
    iget-object v2, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 58
    iget-object v2, v2, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 60
    const/16 v3, 0x1f4

    .line 62
    const/16 v4, 0x64

    .line 64
    invoke-virtual {v2, p0, v4, v3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/ProgramListChunk;II)Ljava/util/List;

    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_0
    iget-object v5, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 70
    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 72
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 75
    move-result v5

    .line 76
    if-ge v2, v5, :cond_1

    .line 78
    iget-object v5, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 80
    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 82
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 88
    iget-object v6, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 90
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :try_start_2
    iget-object v7, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 93
    if-nez v7, :cond_0

    .line 95
    monitor-exit v6

    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_0
    invoke-virtual {v7, p0, v4, v3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/ProgramListChunk;II)Ljava/util/List;

    .line 102
    move-result-object v7

    .line 103
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :try_start_3
    invoke-virtual {v5, v7}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_0

    .line 110
    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :try_start_5
    throw p0

    .line 112
    :catchall_2
    move-exception p0

    .line 113
    goto :goto_3

    .line 114
    :cond_1
    monitor-exit v1

    .line 115
    return-void

    .line 116
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 117
    throw p0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 120
    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 122
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 124
    check-cast p0, Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;

    .line 126
    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 128
    monitor-enter v1

    .line 129
    :try_start_6
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 134
    :catchall_3
    move-exception p0

    .line 135
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 136
    throw p0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
