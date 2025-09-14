.class public final Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSnapshotByUid:Landroid/util/SparseArray;

.field public final rootDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    .line 11
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 4

    .line 1
    const-string v0, "Error reading snapshot for "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/security/keystore/recovery/KeyChainSnapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v1, :cond_0

    .line 14
    monitor-exit p0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->readFromDisk(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 19
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    :try_start_2
    const-string v2, "RecoverySnapshotStorage"

    .line 27
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, " from disk"

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    monitor-exit p0

    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :goto_0
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final getSnapshotFile(I)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    .line 5
    const-string/jumbo v1, "recoverablekeystore/snapshots/"

    .line 8
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    const-string p0, ".xml"

    .line 18
    invoke-static {p1, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Ljava/io/File;

    .line 24
    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    return-object p1
.end method

.method public final readFromDisk(I)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 7
    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 13
    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    :try_start_3
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 25
    const-string v2, "Malformed KeyChainSnapshot XML"

    .line 27
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 40
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 43
    throw p1
.end method

.method public final writeToDisk(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    .line 7
    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-static {p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 32
    throw p1
.end method
