.class public final Lcom/android/server/devicepolicy/ReserveAtomicHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field public failFlag:Z

.field public final mReserveFile:Ljava/io/File;

.field public final orignalFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    iput-object p1, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->orignalFile:Ljava/io/File;

    .line 16
    const-string v2, ".reservecopy"

    .line 18
    invoke-static {v1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "ReserveAtomic.owners"

    .line 24
    iput-object v2, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->LOG_TAG:Ljava/lang/String;

    .line 26
    new-instance v3, Ljava/io/File;

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object v3, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->writeReserve()Z

    .line 52
    move-result p1

    .line 53
    const-string/jumbo v1, "reserve not exists copying orignal to reserve. status : "

    .line 56
    invoke-static {v1, v2, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 61
    return-void
.end method


# virtual methods
.method public final writeReserve()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 4
    iget-object v1, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 19
    iget-object v2, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->orignalFile:Ljava/io/File;

    .line 21
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 26
    iget-object v3, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 28
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 34
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception v3

    .line 54
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 57
    goto :goto_0

    .line 58
    :catchall_2
    move-exception v2

    .line 59
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 63
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 66
    goto :goto_2

    .line 67
    :catchall_3
    move-exception v1

    .line 68
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 72
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "Failed to write reserve copy: "

    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->LOG_TAG:Ljava/lang/String;

    .line 90
    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    iget-object v1, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 101
    iget-object p0, p0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 106
    :cond_1
    return v0
.end method
