.class public final Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    goto/16 :goto_3

    .line 8
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 10
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 15
    if-nez v0, :cond_0

    .line 17
    monitor-exit p1

    .line 18
    goto/16 :goto_3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const-string/jumbo p1, "pushSessionDestroyed"

    .line 26
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter v0

    .line 37
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 42
    monitor-exit v0

    .line 43
    goto :goto_3

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    throw p0

    .line 47
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw p0

    .line 49
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 51
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 54
    goto :goto_3

    .line 55
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 64
    move-result-object p1

    .line 65
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 67
    monitor-enter v1

    .line 68
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 70
    if-eqz v2, :cond_1

    .line 72
    monitor-exit v1

    .line 73
    goto :goto_3

    .line 74
    :catchall_2
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 77
    const-string/jumbo v1, "pushEvent"

    .line 80
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;

    .line 82
    invoke-direct {v2, p1, v0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 88
    goto :goto_3

    .line 89
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 90
    throw p0

    .line 91
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 93
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 95
    monitor-enter p1

    .line 96
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 98
    if-eqz v0, :cond_2

    .line 100
    monitor-exit p1

    .line 101
    goto :goto_3

    .line 102
    :catchall_3
    move-exception p0

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    .line 106
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 107
    const-string/jumbo p1, "pushExtrasUpdate"

    .line 110
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    .line 112
    invoke-direct {v1, v0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 118
    goto :goto_3

    .line 119
    :goto_2
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 120
    throw p0

    .line 121
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 123
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushQueueTitleUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    .line 126
    goto :goto_3

    .line 127
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 129
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushQueueUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    .line 132
    goto :goto_3

    .line 133
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 135
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushPlaybackStateUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    .line 138
    goto :goto_3

    .line 139
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 141
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushMetadataUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    .line 144
    :goto_3
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final post(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    return-void
.end method
