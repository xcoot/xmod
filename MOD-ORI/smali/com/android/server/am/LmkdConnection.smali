.class public final Lcom/android/server/am/LmkdConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInputBuf:Ljava/nio/ByteBuffer;

.field public final mInputData:Ljava/io/DataInputStream;

.field public final mListener:Lcom/android/server/am/ProcessList$1;

.field public mLmkdInputStream:Ljava/io/InputStream;

.field public mLmkdOutputStream:Ljava/io/OutputStream;

.field public mLmkdSocket:Landroid/net/LocalSocket;

.field public final mLmkdSocketLock:Ljava/lang/Object;

.field public final mMsgQueue:Landroid/os/MessageQueue;

.field public mReplyBuf:Ljava/nio/ByteBuffer;

.field public final mReplyBufLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/MessageQueue;Lcom/android/server/am/ProcessList$1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 17
    .line 18
    const/16 v1, 0xde

    .line 19
    .line 20
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    new-instance v2, Ljava/io/DataInputStream;

    .line 27
    .line 28
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    .line 54
    .line 55
    return-void
.end method

.method public static openSocket()Landroid/net/LocalSocket;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/net/LocalSocketAddress;

    .line 8
    .line 9
    const-string/jumbo v2, "lmkd"

    .line 10
    .line 11
    .line 12
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Connection failed: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "ActivityManager"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method


# virtual methods
.method public final write(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    monitor-exit v0

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    monitor-exit v0

    .line 24
    return v1

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method
