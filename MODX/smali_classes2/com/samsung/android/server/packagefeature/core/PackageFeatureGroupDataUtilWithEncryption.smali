.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DIR_PATH:Ljava/lang/String;

.field public static final LEGACY_DIR_PATH:Ljava/lang/String;


# instance fields
.field public final mCacheFilePathName:Ljava/lang/String;

.field public mConsumerForFailed:Ljava/util/function/BiConsumer;

.field public final mContext:Landroid/content/Context;

.field public final mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public mRetryByFailed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "/system/packageconfiguration/"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->LEGACY_DIR_PATH:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "/system/packagefeature_cache/"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->DIR_PATH:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mRetryByFailed:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->DIR_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "/"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p3, p3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mCacheFilePathName:Ljava/lang/String;

    .line 38
    .line 39
    sget-object p2, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Lcom/samsung/android/server/util/CoreEncryptor;

    .line 46
    .line 47
    if-nez p3, :cond_0

    .line 48
    .line 49
    new-instance p3, Lcom/samsung/android/server/util/CoreEncryptor;

    .line 50
    .line 51
    invoke-direct {p3, p1}, Lcom/samsung/android/server/util/CoreEncryptor;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;

    .line 58
    .line 59
    return-void
.end method

.method public static deleteCacheFiles(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "directory does not exist"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    array-length v1, p0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_1
    array-length v0, p0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v0, :cond_3

    .line 34
    .line 35
    aget-object v3, p0, v2

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const-string v3, "(succeeded) "

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-object v0, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    const-string v3, "(failed) "

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_4
    :goto_2
    :try_start_2
    const-string p0, "files does not exist"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    return-object p0

    .line 74
    :catchall_1
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "deleteCacheFiles: Error!!! "

    .line 77
    .line 78
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    const-string p0, ""

    .line 96
    .line 97
    :goto_4
    return-object p0
.end method


# virtual methods
.method public final loadFromFileInputStream(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "decrypt"

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;

    .line 9
    .line 10
    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/server/util/CoreEncryptor;->decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    new-instance p1, Ljava/io/ObjectInputStream;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    .line 36
    .line 37
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_3

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :catchall_2
    move-exception v0

    .line 49
    :try_start_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_3
    move-exception p1

    .line 54
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 58
    :goto_1
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_4
    move-exception p0

    .line 63
    :try_start_9
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 67
    :goto_3
    :try_start_a
    throw p0

    .line 68
    :catchall_5
    move-exception p0

    .line 69
    goto :goto_4

    .line 70
    :cond_0
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ljava/lang/Exception;

    .line 75
    .line 76
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 80
    :goto_4
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 81
    .line 82
    .line 83
    goto :goto_5

    .line 84
    :catchall_6
    move-exception p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_5
    throw p0
.end method

.method public final loadFromReader(ILjava/io/Reader;Ljava/lang/String;Z)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    .locals 9

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, "Failed groupName="

    .line 4
    .line 5
    const-string v2, "Skip "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;

    .line 9
    .line 10
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    iput v5, v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mLineCount:I

    .line 15
    .line 16
    new-instance v6, Ljava/io/BufferedReader;

    .line 17
    .line 18
    invoke-direct {v6, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 19
    .line 20
    .line 21
    iput-object v6, v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v4, p4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->open(Z)V

    .line 24
    .line 25
    .line 26
    iget p2, v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .line 28
    iget-object v6, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 29
    .line 30
    iget-object v7, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    if-nez p4, :cond_0

    .line 34
    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-lt p1, p2, :cond_1

    .line 39
    .line 40
    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", GroupName="

    .line 49
    .line 50
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, v7, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", currentVersion="

    .line 59
    .line 60
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, ", readerVersion="

    .line 67
    .line 68
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v6, v8, p1, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .line 80
    .line 81
    :try_start_3
    invoke-virtual {v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .line 83
    .line 84
    return-object v3

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :catchall_1
    move-exception p1

    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->getPackageFeatureGroupDataInner()Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 95
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p2, ","

    .line 110
    .line 111
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget p2, v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mLineCount:I

    .line 115
    .line 116
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p2, ")"

    .line 120
    .line 121
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const/4 v2, 0x0

    .line 129
    if-nez p1, :cond_3

    .line 130
    .line 131
    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mConsumerForFailed:Ljava/util/function/BiConsumer;

    .line 135
    .line 136
    if-eqz p2, :cond_4

    .line 137
    .line 138
    iget p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mRetryByFailed:I

    .line 139
    .line 140
    add-int/2addr p2, v5

    .line 141
    iput p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mRetryByFailed:I

    .line 142
    .line 143
    if-gt p2, v8, :cond_2

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    move v5, v2

    .line 147
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v7, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ", retry="

    .line 158
    .line 159
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mRetryByFailed:I

    .line 169
    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, "), fromRawResource="

    .line 174
    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {v6, v8, p2, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    if-eqz v5, :cond_4

    .line 189
    .line 190
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mConsumerForFailed:Ljava/util/function/BiConsumer;

    .line 191
    .line 192
    iget-object p4, v7, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 193
    .line 194
    const-wide/32 v0, 0xa4cb80

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {p2, p4, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_3
    iput v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mRetryByFailed:I

    .line 206
    .line 207
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logSucceeded(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    .line 209
    .line 210
    :cond_4
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    .line 212
    .line 213
    return-object p1

    .line 214
    :catchall_2
    move-exception p1

    .line 215
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string p4, "get: "

    .line 218
    .line 219
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    const/4 p4, 0x6

    .line 230
    invoke-virtual {v4, p4, p2, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->log(ILjava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 234
    :goto_3
    :try_start_8
    invoke-virtual {v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catchall_3
    move-exception p2

    .line 239
    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 240
    .line 241
    .line 242
    :goto_4
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 243
    :goto_5
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    return-object v3
.end method

.method public final logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x5

    .line 6
    :goto_0
    const-string v1, "Failed to "

    .line 7
    .line 8
    const-string v2, ", GroupName="

    .line 9
    .line 10
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final logSucceeded(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Succeeded to "

    .line 2
    .line 3
    const-string v1, ", GroupName="

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final saveToCacheFile(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "saveToCacheFile"

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    sget-object v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->DIR_PATH:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x6

    .line 24
    const-string v0, "Failed to create directory."

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mCacheFilePathName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->saveToFileOutputStream(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Ljava/io/FileOutputStream;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logSucceeded(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_2
    move-exception v1

    .line 58
    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    return-void
.end method

.method public final saveToFileOutputStream(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Ljava/io/FileOutputStream;)V
    .locals 4

    .line 1
    const-string v0, "encrypt"

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 17
    .line 18
    .line 19
    :try_start_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;

    .line 29
    .line 30
    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/server/util/CoreEncryptor;->encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 31
    .line 32
    .line 33
    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    .line 38
    .line 39
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 p2, 0x0

    .line 51
    :try_start_6
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Ljava/lang/Exception;

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 60
    :catchall_2
    move-exception p0

    .line 61
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_3
    move-exception p1

    .line 66
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 70
    :goto_1
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 71
    :catchall_4
    move-exception p0

    .line 72
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_5
    move-exception p1

    .line 77
    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 81
    :goto_3
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :catchall_6
    move-exception p1

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_4
    throw p0
.end method
