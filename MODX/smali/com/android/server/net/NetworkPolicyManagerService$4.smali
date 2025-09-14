.class public final Lcom/android/server/net/NetworkPolicyManagerService$4;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 16
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 18
    const/16 p2, 0x65

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 16
    const-wide/16 v2, -0x1

    .line 18
    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v4, 0x14

    .line 27
    iput v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 29
    iput-wide v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 31
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 33
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_7

    .line 42
    :cond_0
    :goto_0
    iget-wide v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 44
    cmp-long v2, v4, v2

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v6, 0x1

    .line 48
    if-nez v2, :cond_1

    .line 50
    goto :goto_5

    .line 51
    :cond_1
    cmp-long v2, p3, v4

    .line 53
    if-gtz v2, :cond_2

    .line 55
    goto :goto_6

    .line 56
    :cond_2
    iget v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 58
    const/4 v4, 0x3

    .line 59
    if-le v2, v4, :cond_a

    .line 61
    if-gt p2, v4, :cond_3

    .line 63
    goto :goto_5

    .line 64
    :cond_3
    const/4 v4, 0x5

    .line 65
    if-gt v2, v4, :cond_4

    .line 67
    move v5, v6

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move v5, v3

    .line 70
    :goto_1
    if-gt p2, v4, :cond_5

    .line 72
    move v4, v6

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move v4, v3

    .line 75
    :goto_2
    if-eq v5, v4, :cond_6

    .line 77
    goto :goto_5

    .line 78
    :cond_6
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 80
    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 82
    if-eqz v4, :cond_9

    .line 84
    const/16 v4, 0xc

    .line 86
    if-lt v2, v4, :cond_7

    .line 88
    move v2, v6

    .line 89
    goto :goto_3

    .line 90
    :cond_7
    move v2, v3

    .line 91
    :goto_3
    if-lt p2, v4, :cond_8

    .line 93
    move v4, v6

    .line 94
    goto :goto_4

    .line 95
    :cond_8
    move v4, v3

    .line 96
    :goto_4
    if-eq v2, v4, :cond_9

    .line 98
    goto :goto_5

    .line 99
    :cond_9
    iget v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    .line 101
    and-int/lit8 v2, v2, 0x28

    .line 103
    and-int/lit8 v4, p5, 0x28

    .line 105
    if-eq v2, v4, :cond_b

    .line 107
    :cond_a
    :goto_5
    iput p1, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->uid:I

    .line 109
    iput p2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 111
    iput-wide p3, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 113
    iput p5, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    .line 115
    iget-boolean p2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 117
    if-nez p2, :cond_b

    .line 119
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 121
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 123
    const/16 p2, 0x64

    .line 125
    invoke-virtual {p0, p2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    iput-boolean v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 134
    :cond_b
    :goto_6
    monitor-exit v0

    .line 135
    return-void

    .line 136
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw p0
.end method
