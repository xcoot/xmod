.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 7
    .line 8
    check-cast p2, Lcom/android/server/print/RemotePrintService;

    .line 9
    .line 10
    check-cast p3, Landroid/print/PrinterId;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    invoke-direct {p1, v0}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 37
    .line 38
    check-cast p2, Landroid/print/IPrinterDiscoveryObserver;

    .line 39
    .line 40
    check-cast p3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :try_start_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 46
    .line 47
    invoke-direct {p0, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string p1, "UserState"

    .line 56
    .line 57
    const-string p2, "Error sending added printers"

    .line 58
    .line 59
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :pswitch_1
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 64
    .line 65
    check-cast p2, Ljava/util/ArrayList;

    .line 66
    .line 67
    check-cast p3, Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/4 p1, 0x0

    .line 77
    :goto_1
    if-ge p1, p0, :cond_0

    .line 78
    .line 79
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    invoke-direct {v2, v3}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v0, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 p1, p1, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_0
    return-void

    .line 109
    :pswitch_2
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 110
    .line 111
    check-cast p2, Lcom/android/server/print/RemotePrintService;

    .line 112
    .line 113
    check-cast p3, Landroid/print/PrinterId;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    new-instance p1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 126
    .line 127
    const/4 v0, 0x5

    .line 128
    invoke-direct {p1, v0}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_3
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 140
    .line 141
    check-cast p2, Lcom/android/server/print/RemotePrintService;

    .line 142
    .line 143
    check-cast p3, Ljava/util/List;

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    new-instance p1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 156
    .line 157
    const/4 v0, 0x1

    .line 158
    invoke-direct {p1, v0}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_4
    check-cast p1, Lcom/android/server/print/UserState;

    .line 170
    .line 171
    check-cast p2, Landroid/print/PrintJobId;

    .line 172
    .line 173
    check-cast p3, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-interface {p3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    iget-object p3, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 183
    .line 184
    monitor-enter p3

    .line 185
    :try_start_1
    iget-object v0, p1, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 186
    .line 187
    if-nez v0, :cond_1

    .line 188
    .line 189
    monitor-exit p3

    .line 190
    goto :goto_4

    .line 191
    :catchall_0
    move-exception p0

    .line 192
    goto :goto_5

    .line 193
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 196
    .line 197
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .line 199
    .line 200
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    const/4 p3, 0x0

    .line 206
    :goto_2
    if-ge p3, p1, :cond_4

    .line 207
    .line 208
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lcom/android/server/print/UserState$2;

    .line 213
    .line 214
    iget v2, v1, Lcom/android/server/print/UserState$2;->appId:I

    .line 215
    .line 216
    const/4 v3, -0x2

    .line 217
    if-eq v2, v3, :cond_2

    .line 218
    .line 219
    if-ne v2, p0, :cond_3

    .line 220
    .line 221
    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/android/server/print/UserState$2;->listener:Landroid/print/IPrintJobStateChangeListener;

    .line 222
    .line 223
    invoke-interface {v1, p2}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :catch_1
    move-exception v1

    .line 228
    const-string v2, "UserState"

    .line 229
    .line 230
    const-string v3, "Error notifying for print job state change"

    .line 231
    .line 232
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .line 234
    .line 235
    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_4
    :goto_4
    return-void

    .line 239
    :goto_5
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    throw p0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
