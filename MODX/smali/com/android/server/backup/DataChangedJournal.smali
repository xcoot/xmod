.class public final Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Ljava/io/File;

    .line 10
    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/backup/DataChangedJournal;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/server/backup/DataChangedJournal;

    .line 7
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 9
    iget-object p1, p1, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 11
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final forEach(Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 5
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    new-instance p0, Ljava/io/BufferedInputStream;

    .line 10
    const/16 v1, 0x2000

    .line 12
    invoke-direct {p0, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 15
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    .line 17
    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    goto :goto_1

    .line 33
    :catchall_1
    move-exception v1

    .line 34
    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    :goto_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 38
    :catchall_2
    move-exception p1

    .line 39
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 42
    goto :goto_2

    .line 43
    :catchall_3
    move-exception p0

    .line 44
    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    :goto_2
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 48
    :catchall_4
    move-exception p0

    .line 49
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 52
    goto :goto_3

    .line 53
    :catchall_5
    move-exception p1

    .line 54
    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    :goto_3
    throw p0
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_0

    .line 58
    :catch_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
