.class Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final MSG_ON_METRIC_QUERIED:I = 0x1

.field public static final MSG_ON_METRIC_SOURCED:I = 0x2

.field public static final MSG_ON_PROFILE_CHANGED:I = 0x3

.field public static final MSG_ON_SERVICE_CHANGED:I = 0x4

.field public static final MSG_TIMED_OUT_WAITING_PACKAGE_FORCE_STOPPED:I = 0x5


# instance fields
.field final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$6faEnEW-hfsTC57GD_UOb_IXGfE(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->lambda$handleMessage$1(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$h0DRLcdImoy6g5mhgLctx79qlhA(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->lambda$handleMessage$2(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$xCOFNOtIOY_Ukjd_K9nO42-Arw0(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->lambda$handleMessage$0(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->reference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method private static synthetic lambda$handleMessage$0(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p2}, Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;->onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic lambda$handleMessage$1(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p2}, Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;->onMetricSourcing(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic lambda$handleMessage$2(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;->onServiceChange(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->reference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/att/iqi/lib/IQIManager;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v1, v0, :cond_9

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v1, v3, :cond_7

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v1, v3, :cond_5

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v1, v3, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_1
    const-string v1, "IQIManager"

    .line 33
    .line 34
    const-string v2, "Timed out waiting for package to be force stopped"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    instance-of v1, p1, Ljava/lang/Runnable;

    .line 42
    .line 43
    if-eqz v1, :cond_b

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Runnable;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 57
    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    move v2, v0

    .line 61
    :cond_3
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmServiceStateChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    monitor-enter p1

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmServiceStateChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    .line 85
    .line 86
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    new-instance v5, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;

    .line 91
    .line 92
    invoke-direct {v5, v3, v2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;-><init>(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    monitor-exit p1

    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p0

    .line 106
    :cond_5
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmProfileChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    monitor-enter v1

    .line 111
    :try_start_1
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmProfileChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    .line 130
    .line 131
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    new-instance v4, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;

    .line 139
    .line 140
    invoke-direct {v4, v2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;-><init>(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    monitor-exit v1

    .line 150
    goto :goto_6

    .line 151
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    throw p0

    .line 153
    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 154
    .line 155
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMetricSourcingListenerMap(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

    .line 164
    .line 165
    if-eqz v3, :cond_b

    .line 166
    .line 167
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    check-cast p1, [B

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_8
    new-array p1, v2, [B

    .line 175
    .line 176
    :goto_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    invoke-direct {v2, v3, v1, p1, v4}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILjava/nio/ByteBuffer;I)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 195
    .line 196
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMetricQueryCallbackMap(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;

    .line 205
    .line 206
    if-eqz v3, :cond_b

    .line 207
    .line 208
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    .line 210
    if-eqz p1, :cond_a

    .line 211
    .line 212
    check-cast p1, [B

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_a
    new-array p1, v2, [B

    .line 216
    .line 217
    :goto_5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;

    .line 226
    .line 227
    const/4 v4, 0x0

    .line 228
    invoke-direct {v2, v3, v1, p1, v4}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILjava/nio/ByteBuffer;I)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 232
    .line 233
    .line 234
    :cond_b
    :goto_6
    return v0
.end method
