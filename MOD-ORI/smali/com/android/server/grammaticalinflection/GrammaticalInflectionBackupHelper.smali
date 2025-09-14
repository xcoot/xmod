.class public final Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;


# instance fields
.field public final mCache:Landroid/util/SparseArray;

.field public final mCacheLock:Ljava/lang/Object;

.field public final mClock:Ljava/time/Clock;

.field public final mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Landroid/content/pm/PackageManager;)V
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
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCacheLock:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mClock:Ljava/time/Clock;

    .line 27
    .line 28
    return-void
.end method

.method public static readFromByteArray([B)Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    .line 15
    .line 16
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    .line 22
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_4

    .line 29
    :catch_0
    move-exception p0

    .line 30
    move-object v0, v2

    .line 31
    goto :goto_3

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    move-object v0, v2

    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception v2

    .line 36
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_2
    move-exception p0

    .line 41
    :try_start_6
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 45
    :catchall_3
    move-exception p0

    .line 46
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_4
    move-exception v1

    .line 51
    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    .line 55
    :catch_1
    move-exception p0

    .line 56
    :goto_3
    const-string v1, "GrammaticalInflectionBackupHelper"

    .line 57
    .line 58
    const-string/jumbo v2, "cannot convert payload to HashMap."

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    move-object v2, v0

    .line 68
    :goto_4
    return-object v2
.end method


# virtual methods
.method public final cleanStagedDataForOldEntries()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;

    .line 23
    .line 24
    iget-wide v1, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mCreationTimeMillis:J

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mClock:Ljava/time/Clock;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    sget-object v5, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/time/Duration;->toMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    sub-long/2addr v3, v5

    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-gez v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    .line 44
    .line 45
    add-int/lit8 v2, v0, -0x1

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 48
    .line 49
    .line 50
    move v0, v2

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method
