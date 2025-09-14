.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final self:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "GMR"

    .line 7
    .line 8
    const-string v1, "bg : "

    .line 9
    .line 10
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " "

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 47
    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOut(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v1, "failed to handleMessage "

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p1, p1, Landroid/os/Message;->what:I

    .line 61
    .line 62
    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    const-string v0, "GMR"

    .line 67
    .line 68
    const-string/jumbo v1, "fg : "

    .line 69
    .line 70
    .line 71
    :try_start_1
    iget v2, p1, Landroid/os/Message;->what:I

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    if-ne v2, v3, :cond_1

    .line 75
    .line 76
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 77
    .line 78
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Ljava/lang/String;

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " "

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapInImpl(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v1, "failed to handleMessage "

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget p1, p1, Landroid/os/Message;->what:I

    .line 122
    .line 123
    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_1
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
