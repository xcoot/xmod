.class public final Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static DATA_READ_ERROR:I = -0x3

.field public static FILE_MISSING_CANNOT_CREATE:I = -0x2

.field public static final KGTA_POLICY_PATH:Ljava/lang/String; = "/efs/kgtapolicy"

.field public static PARSING_ERROR:I = -0x4

.field public static STORAGE_ERROR:I = -0x1

.field public static SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KGTAPolicy"

.field public static final USE_TA_STORAGE:Z = true

.field public static instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;


# instance fields
.field public ans_policy:Ljava/lang/String;

.field public ans_signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method


# virtual methods
.method public final declared-synchronized clean()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public final cleanState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final constructTheSavingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object p1, p0

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    move-object p2, p0

    .line 9
    :cond_1
    const-string/jumbo p0, "||"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final createPolicyFile()V
    .locals 1

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    const-string v0, "/efs/kgtapolicy"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-string p0, "KGTAPolicy"

    .line 13
    .line 14
    const-string v0, "create new policy file failed, error or already created"

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final declared-synchronized getPolicyRes()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final isFileExists()Z
    .locals 0

    .line 1
    const-string p0, "/efs/kgtapolicy"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final parseDataString(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "\\|\\|"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    aget-object v1, p1, v0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aget-object p1, p1, v2

    .line 20
    .line 21
    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const-string p0, "KGTAPolicy"

    .line 27
    .line 28
    const-string/jumbo p1, "parsing data issue occurred"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->PARSING_ERROR:I

    .line 35
    .line 36
    return p0
.end method

.method public final declared-synchronized readData()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    .line 3
    .line 4
    .line 5
    const-string v0, "KGTAPolicy"

    .line 6
    .line 7
    const-string/jumbo v1, "use TA to store policy, skipping the EFS..."

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const-string v0, " "

    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 20
    .line 21
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final declared-synchronized saveData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    .line 3
    .line 4
    .line 5
    const-string p1, "KGTAPolicy"

    .line 6
    .line 7
    const-string/jumbo p2, "use TA to store policy, skipping the EFS..."

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public final savetoFileExternal(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 3
    .line 4
    new-instance v1, Ljava/io/FileWriter;

    .line 5
    .line 6
    const-string v2, "/efs/kgtapolicy"

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :catch_1
    move-object p0, v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    move-object v0, p0

    .line 31
    move-object p0, p1

    .line 32
    goto :goto_2

    .line 33
    :catch_2
    :goto_0
    :try_start_3
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 38
    .line 39
    .line 40
    :cond_0
    move p0, p1

    .line 41
    :goto_1
    return p0

    .line 42
    :goto_2
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 45
    .line 46
    .line 47
    :catch_3
    :cond_1
    throw p0
.end method

.method public final storeDataReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method
