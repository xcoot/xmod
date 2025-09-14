.class public final Lcom/android/server/print/UserState$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

.field public mIsDestroyed:Z

.field public final mPrinters:Landroid/util/ArrayMap;

.field public final mStartedPrinterDiscoveryTokens:Ljava/util/List;

.field public final mStateTrackedPrinters:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/print/UserState;

.field public final synthetic this$0$1:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;-><init>(Lcom/android/server/print/UserState$1;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final destroyLocked()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string v0, "Not destroying - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    :goto_0
    iget-object v3, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 27
    .line 28
    if-ge v2, v0, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 31
    .line 32
    check-cast v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/print/PrinterId;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 47
    .line 48
    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_1
    if-ge v1, v0, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 57
    .line 58
    check-cast v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/os/IBinder;

    .line 65
    .line 66
    invoke-static {v2}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/server/print/UserState$1;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    const/4 v2, 0x7

    .line 83
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Ljava/util/ArrayList;

    .line 87
    .line 88
    iget-object v3, v3, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 4
    .line 5
    const-string v2, "is_destroyed"

    .line 6
    .line 7
    const-wide v3, 0x10800000001L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 16
    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    xor-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    const-string v2, "is_printer_discovery_in_progress"

    .line 26
    .line 27
    const-wide v3, 0x10800000002L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :goto_0
    if-ge v4, v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/print/IPrinterDiscoveryObserver;

    .line 50
    .line 51
    invoke-interface {v5}, Landroid/print/IPrinterDiscoveryObserver;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string/jumbo v6, "printer_discovery_observers"

    .line 56
    .line 57
    .line 58
    const-wide v7, 0x20900000003L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v6, v7, v8, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 73
    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    move v2, v3

    .line 81
    :goto_1
    if-ge v2, v1, :cond_1

    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 84
    .line 85
    check-cast v4, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroid/os/IBinder;

    .line 92
    .line 93
    invoke-interface {v4}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "discovery_requests"

    .line 98
    .line 99
    const-wide v6, 0x20900000004L

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v5, v6, v7, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 111
    .line 112
    check-cast v1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    move v2, v3

    .line 119
    :goto_2
    if-ge v2, v1, :cond_2

    .line 120
    .line 121
    iget-object v4, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 122
    .line 123
    check-cast v4, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Landroid/print/PrinterId;

    .line 130
    .line 131
    const-string/jumbo v5, "tracked_printer_requests"

    .line 132
    .line 133
    .line 134
    const-wide v6, 0x20b00000005L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    invoke-static {p1, v5, v6, v7, v4}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    :goto_3
    if-ge v3, v1, :cond_3

    .line 152
    .line 153
    iget-object v2, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object v9, v2

    .line 160
    check-cast v9, Landroid/print/PrinterInfo;

    .line 161
    .line 162
    iget-object v4, v0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    const-string/jumbo v6, "printer"

    .line 165
    .line 166
    .line 167
    const-wide v7, 0x20b00000006L

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    move-object v5, p1

    .line 173
    invoke-static/range {v4 .. v9}, Lcom/android/internal/print/DumpUtils;->writePrinterInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterInfo;)V

    .line 174
    .line 175
    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_3
    return-void
.end method

.method public final handleDispatchPrintersAdded(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 15
    .line 16
    :try_start_0
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 17
    .line 18
    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, v3}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception v2

    .line 26
    const-string v3, "UserState"

    .line 27
    .line 28
    const-string v4, "Error sending added printers"

    .line 29
    .line 30
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not updating printer - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/print/PrinterInfo;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v1, Landroid/print/PrinterInfo$Builder;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroid/print/PrinterInfo$Builder;-><init>(Landroid/print/PrinterInfo;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/print/PrinterInfo$Builder;->incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/print/PrinterInfo$Builder;->build()Landroid/print/PrinterInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public final onPrintersAddedLocked(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not adding printers - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_4

    .line 20
    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/print/PrinterInfo;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/print/PrinterInfo;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    :cond_1
    if-nez v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    const/4 v2, 0x4

    .line 69
    invoke-direct {v0, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    .line 78
    .line 79
    :cond_5
    return-void
.end method

.method public final onPrintersRemovedLocked(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not removing printers - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_3

    .line 20
    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/print/PrinterId;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    const/16 v2, 0x9

    .line 57
    .line 58
    invoke-direct {v0, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not starting dicovery - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    xor-int/2addr v0, v1

    .line 23
    iget-object v2, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 51
    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-le v0, v1, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1, p0, v2, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not starting printer state tracking - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 33
    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    .line 64
    .line 65
    const/4 v3, 0x5

    .line 66
    invoke-direct {v2, v3}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not stopping dicovery - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 29
    .line 30
    check-cast p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not stopping printer state tracking - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    invoke-direct {v2, v3}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final validatePrintersLocked(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "UserState"

    .line 6
    .line 7
    const-string p1, "Not validating pritners - session destroyed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_5

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/print/PrinterId;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 91
    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    new-instance v3, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    invoke-direct {v3, v4}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v3, p0, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    return-void
.end method
