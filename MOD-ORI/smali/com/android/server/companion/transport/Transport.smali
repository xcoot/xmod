.class public abstract Lcom/android/server/companion/transport/Transport;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAssociationId:I

.field public final mListeners:Ljava/util/Map;

.field public final mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mOnTransportClosed:Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

.field public final mPendingRequests:Landroid/util/SparseArray;

.field public final mRemoteIn:Ljava/io/InputStream;

.field public final mRemoteOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 19
    .line 20
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 26
    .line 27
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 28
    .line 29
    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 33
    .line 34
    new-instance p1, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Ljava/util/Map;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final callback(I[B)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 2
    .line 3
    const-string v1, "Message 0x"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Ljava/util/Map;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast p0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/companion/IOnMessageReceivedListener;

    .line 32
    .line 33
    invoke-interface {p0, v0, p2}, Landroid/companion/IOnMessageReceivedListener;->onMessageReceived(I[B)V

    .line 34
    .line 35
    .line 36
    const-string p0, "CDM_CompanionTransport"

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " is received from associationId "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, ", sending data length "

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    array-length p1, p2

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " to the listener."

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    :cond_0
    return-void
.end method

.method public final handleMessage(II[B)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "CDM_CompanionTransport"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Received message 0x"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " sequence "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " length "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    array-length v2, p3

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " from association "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/high16 v0, -0x1000000

    .line 49
    .line 50
    and-int/2addr v0, p1

    .line 51
    const/high16 v1, 0x43000000    # 128.0f

    .line 52
    .line 53
    if-ne v0, v1, :cond_2

    .line 54
    .line 55
    const p2, 0x43708287

    .line 56
    .line 57
    .line 58
    if-eq p1, p2, :cond_1

    .line 59
    .line 60
    const p2, 0x43807378

    .line 61
    .line 62
    .line 63
    if-eq p1, p2, :cond_1

    .line 64
    .line 65
    const p2, 0x43847987

    .line 66
    .line 67
    .line 68
    if-eq p1, p2, :cond_1

    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p2, "Ignoring unknown message 0x"

    .line 73
    .line 74
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "CDM_CompanionTransport"

    .line 89
    .line 90
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_2
    const/high16 v1, 0x63000000

    .line 101
    .line 102
    if-ne v0, v1, :cond_3

    .line 103
    .line 104
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processRequest(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :catch_0
    move-exception p0

    .line 110
    const-string p2, "CDM_CompanionTransport"

    .line 111
    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v0, "Failed to respond to 0x"

    .line 115
    .line 116
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const/high16 v1, 0x33000000

    .line 135
    .line 136
    if-ne v0, v1, :cond_7

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    .line 139
    .line 140
    monitor-enter v0

    .line 141
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    .line 142
    .line 143
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 148
    .line 149
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-nez p0, :cond_4

    .line 151
    .line 152
    const-string p0, "CDM_CompanionTransport"

    .line 153
    .line 154
    const-string p1, "Ignoring unknown sequence "

    .line 155
    .line 156
    invoke-static {p2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_4
    const p2, 0x33706573

    .line 161
    .line 162
    .line 163
    if-eq p1, p2, :cond_6

    .line 164
    .line 165
    const p2, 0x33838567

    .line 166
    .line 167
    .line 168
    if-eq p1, p2, :cond_5

    .line 169
    .line 170
    const-string p0, "CDM_CompanionTransport"

    .line 171
    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string p3, "Ignoring unknown response 0x"

    .line 175
    .line 176
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {p0, p3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 199
    .line 200
    const-string p2, "Remote failure"

    .line 201
    .line 202
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    throw p0

    .line 212
    :cond_7
    const-string p0, "CDM_CompanionTransport"

    .line 213
    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string p3, "Unknown message 0x"

    .line 217
    .line 218
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :goto_0
    return-void
.end method

.method public final processRequest(II[B)V
    .locals 3

    .line 1
    const v0, 0x33706573

    .line 2
    .line 3
    .line 4
    const-string v1, "CDM_CompanionTransport"

    .line 5
    .line 6
    const v2, 0x33838567

    .line 7
    .line 8
    .line 9
    sparse-switch p1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Unknown request 0x"

    .line 15
    .line 16
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 34
    .line 35
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :sswitch_0
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 43
    .line 44
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    const-string p1, "Failed to restore permissions"

    .line 49
    .line 50
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 54
    .line 55
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :sswitch_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 67
    .line 68
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    nop

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x63678883 -> :sswitch_2
        0x63807378 -> :sswitch_1
        0x63826983 -> :sswitch_0
        0x63827765 -> :sswitch_2
    .end sparse-switch
.end method

.method public final sendMessage(I[B)Ljava/util/concurrent/Future;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    const/high16 v2, 0x43000000    # 128.0f

    if-ne v1, v2, :cond_1

    .line 2
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Sending a one-way message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/4 v1, -0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0

    :cond_1
    const/high16 v2, 0x63000000

    if-ne v1, v2, :cond_3

    .line 7
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Requesting for response"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 9
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v2

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 14
    iget-object p2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter p2

    .line 15
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 16
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_1
    return-object v1

    :catchall_0
    move-exception p0

    .line 18
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 19
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 20
    :cond_3
    const-string p0, "CDM_CompanionTransport"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send message 0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The message being sent must be either a one-way or a request."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public abstract sendMessage(II[B)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
