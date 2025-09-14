.class public final synthetic Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 17
    .line 18
    iget v1, p0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 19
    .line 20
    iget-byte p0, p0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p0, v2

    .line 28
    :goto_0
    const-string v3, "Received unexpected message transaction response (expected message sequence number = "

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v4, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    const-string p0, "ContextHubTransactionManager"

    .line 42
    .line 43
    const-string v1, "Received unexpected transaction response (no transaction pending)"

    .line 44
    .line 45
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    goto :goto_3

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_4

    .line 52
    :cond_1
    :try_start_1
    iget-object v5, v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:Ljava/lang/Integer;

    .line 53
    .line 54
    iget v6, v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    .line 55
    .line 56
    const/4 v7, 0x5

    .line 57
    if-ne v6, v7, :cond_4

    .line 58
    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eq v5, v1, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    if-eqz p0, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v2, v7

    .line 72
    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    :goto_2
    :try_start_2
    const-string p0, "ContextHubTransactionManager"

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, ", received messageSequenceNumber = "

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ")"

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    monitor-exit v0

    .line 113
    :goto_3
    return-void

    .line 114
    :goto_4
    monitor-exit v0

    .line 115
    throw p0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Ljava/util/List;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleNanoappInfo(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
