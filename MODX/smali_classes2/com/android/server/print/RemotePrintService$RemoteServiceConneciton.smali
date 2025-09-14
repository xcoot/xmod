.class public final Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 15
    .line 16
    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p1, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 21
    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 23
    .line 24
    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 37
    .line 38
    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 50
    .line 51
    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget-object p2, p1, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    :try_start_2
    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 68
    .line 69
    iget-boolean v1, p2, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object p2, p2, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    check-cast p2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    move v1, v0

    .line 84
    :goto_0
    if-ge v1, p2, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 87
    .line 88
    iget-object v3, v2, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 89
    .line 90
    check-cast v3, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/print/PrinterId;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 110
    .line 111
    check-cast p1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 122
    .line 123
    check-cast p1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Ljava/lang/Runnable;

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 136
    .line 137
    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 138
    .line 139
    if-nez p2, :cond_5

    .line 140
    .line 141
    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 142
    .line 143
    if-nez p2, :cond_5

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 149
    .line 150
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 151
    .line 152
    return-void

    .line 153
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    throw p0

    .line 155
    :catch_0
    move-exception p1

    .line 156
    const-string v0, "RemotePrintService"

    .line 157
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v2, "Error setting client for: "

    .line 161
    .line 162
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :catch_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_6
    :goto_3
    iget-object p0, p1, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 5
    .line 6
    return-void
.end method
