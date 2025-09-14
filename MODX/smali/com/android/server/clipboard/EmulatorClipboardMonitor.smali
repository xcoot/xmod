.class public final Lcom/android/server/clipboard/EmulatorClipboardMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final LOG_CLIBOARD_ACCESS:Z


# instance fields
.field public mPipe:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.boot.qemu.log_clipboard_access"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    .line 11
    return-void
.end method

.method public static openPipe()Ljava/io/FileDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-nez v0, :cond_0

    .line 7
    const-wide/16 v0, 0x64

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 12
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0
.end method

.method public static openPipeImpl()Ljava/io/FileDescriptor;
    .locals 5

    .line 1
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_VSOCK:I

    .line 3
    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 9
    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    new-instance v1, Landroid/system/VmSocketAddress;

    .line 12
    sget v3, Landroid/system/OsConstants;->VMADDR_CID_HOST:I

    .line 14
    const/16 v4, 0x1388

    .line 16
    invoke-direct {v1, v4, v3}, Landroid/system/VmSocketAddress;-><init>(II)V

    .line 19
    invoke-static {v0, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 22
    const-string/jumbo v1, "pipe:clipboard"

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 28
    move-result-object v1

    .line 29
    const/16 v3, 0xf

    .line 31
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 34
    move-result-object v1

    .line 35
    const/16 v3, 0xe

    .line 37
    aput-byte v2, v1, v3

    .line 39
    array-length v2, v1

    .line 40
    invoke-static {v0, v1, v2}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BI)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    return-object v0

    .line 44
    :catch_0
    :try_start_2
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    :catch_1
    const/4 v0, 0x0

    .line 48
    return-object v0
.end method

.method public static receiveMessage(Ljava/io/FileDescriptor;)[B
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-lez v0, :cond_1

    .line 8
    invoke-static {p0, v1, v3, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 11
    move-result v4

    .line 12
    if-lez v4, :cond_0

    .line 14
    add-int/2addr v3, v4

    .line 15
    sub-int/2addr v0, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 19
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 22
    throw p0

    .line 23
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 35
    move-result v0

    .line 36
    if-ltz v0, :cond_4

    .line 38
    const/high16 v1, 0x8000000

    .line 40
    if-gt v0, v1, :cond_4

    .line 42
    new-array v1, v0, [B

    .line 44
    :goto_1
    if-lez v0, :cond_3

    .line 46
    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 49
    move-result v3

    .line 50
    if-lez v3, :cond_2

    .line 52
    add-int/2addr v2, v3

    .line 53
    sub-int/2addr v0, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 57
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 60
    throw p0

    .line 61
    :cond_3
    return-object v1

    .line 62
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    .line 64
    const-string v1, "Clipboard message length: "

    .line 66
    const-string v2, " out of bounds."

    .line 68
    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[B)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 7
    move-result-object v2

    .line 8
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    array-length v3, p1

    .line 14
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 17
    invoke-static {p0, v1, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BI)V

    .line 20
    array-length v0, p1

    .line 21
    invoke-static {p0, p1, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BI)V

    .line 24
    return-void
.end method

.method public static writeFully(Ljava/io/FileDescriptor;[BI)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-lez p2, :cond_1

    .line 4
    invoke-static {p0, p1, v0, p2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 10
    add-int/2addr v0, v1

    .line 11
    sub-int/2addr p2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Landroid/system/ErrnoException;

    .line 15
    const-string/jumbo p1, "write"

    .line 18
    sget p2, Landroid/system/OsConstants;->EIO:I

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 23
    throw p0

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/content/ClipData;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    if-eqz v0, :cond_3

    .line 9
    const-string p0, ""

    .line 11
    if-nez p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    .line 39
    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 51
    :cond_3
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    .line 54
    throw p1
.end method
