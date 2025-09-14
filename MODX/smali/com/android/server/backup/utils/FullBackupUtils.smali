.class public abstract Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    new-instance p0, Ljava/io/DataInputStream;

    .line 12
    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const/high16 v0, 0x10000

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v0, 0x8000

    .line 27
    :goto_0
    new-array v1, v0, [B

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 32
    move-result v2

    .line 33
    if-lez v2, :cond_4

    .line 35
    :goto_1
    if-lez v2, :cond_1

    .line 37
    if-le v2, v0, :cond_2

    .line 39
    move v3, v0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v3, v2

    .line 42
    :goto_2
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0, v1, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 46
    move-result v3

    .line 47
    if-ltz v3, :cond_3

    .line 49
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    sub-int/2addr v2, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const-string p0, "BackupManagerService"

    .line 56
    const-string p1, "Unexpectedly reached end of file while reading data"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance p0, Ljava/io/EOFException;

    .line 63
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 66
    throw p0

    .line 67
    :cond_4
    return-void
.end method
