.class public final Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string v0, "app_gender"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mUserId:I

    .line 13
    const-class p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 15
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 21
    iput-object p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 23
    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 6

    .line 1
    const-string v0, "app_gender"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 11
    if-eqz p1, :cond_7

    .line 13
    iget p0, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mUserId:I

    .line 15
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 17
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 19
    iget-object v0, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCacheLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->cleanStagedDataForOldEntries()V

    .line 25
    invoke-static {p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->readFromByteArray([B)Ljava/util/HashMap;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    monitor-exit v0

    .line 36
    goto/16 :goto_4

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_3

    .line 41
    :cond_0
    new-instance v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;

    .line 43
    iget-object v2, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mClock:Ljava/time/Clock;

    .line 45
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    .line 48
    move-result-wide v2

    .line 49
    invoke-direct {v1, v2, v3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;-><init>(J)V

    .line 52
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p2

    .line 60
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_6

    .line 66
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const/4 v4, 0x0

    .line 79
    :try_start_1
    iget-object v5, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    invoke-virtual {v5, v3, v4, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 84
    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    const/4 v3, 0x0

    .line 87
    :goto_1
    if-eqz v3, :cond_5

    .line 89
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/lang/String;

    .line 95
    iget-object v5, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 97
    iget-object v5, v5, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 99
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 101
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 103
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 105
    invoke-virtual {v5, p0, v3}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_3

    .line 111
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mGrammaticalGender:Ljava/lang/Integer;

    .line 113
    if-nez v3, :cond_2

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 119
    move-result v4

    .line 120
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object v3, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 125
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/String;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/Integer;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 140
    move-result v2

    .line 141
    invoke-virtual {v3, v4, p0, v2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V

    .line 144
    goto :goto_0

    .line 145
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/lang/Integer;

    .line 151
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_1

    .line 157
    iget-object v3, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ljava/lang/String;

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Ljava/lang/Integer;

    .line 171
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    goto :goto_0

    .line 175
    :cond_6
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    .line 177
    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 180
    monitor-exit v0

    .line 181
    goto :goto_4

    .line 182
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    throw p0

    .line 184
    :cond_7
    :goto_4
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 6

    .line 1
    const-string v0, "app_gender"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 12
    if-eqz p1, :cond_4

    .line 14
    iget p0, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mUserId:I

    .line 16
    iget-object v1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 18
    invoke-static {v1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    .line 21
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 23
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 25
    iget-object v1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCacheLock:Ljava/lang/Object;

    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->cleanStagedDataForOldEntries()V

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    iget-object v2, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    const-wide/16 v3, 0x0

    .line 41
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3, p0}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v2

    .line 53
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 65
    iget-object v4, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 67
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 69
    iget-object v4, v4, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 71
    check-cast v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 73
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 75
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 77
    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_2

    .line 83
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mGrammaticalGender:Ljava/lang/Integer;

    .line 85
    if-nez v4, :cond_1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v4

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 94
    :goto_2
    if-eqz v4, :cond_0

    .line 96
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_4

    .line 112
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 114
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :try_start_2
    new-instance p1, Ljava/io/ObjectOutputStream;

    .line 119
    invoke-direct {p1, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 128
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 135
    move-object v0, v1

    .line 136
    goto :goto_7

    .line 137
    :catch_0
    move-exception p0

    .line 138
    goto :goto_6

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    goto :goto_4

    .line 141
    :catchall_1
    move-exception v1

    .line 142
    :try_start_6
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 145
    goto :goto_3

    .line 146
    :catchall_2
    move-exception p1

    .line 147
    :try_start_7
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    :goto_3
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 151
    :goto_4
    :try_start_8
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 154
    goto :goto_5

    .line 155
    :catchall_3
    move-exception p0

    .line 156
    :try_start_9
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 159
    :goto_5
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 160
    :goto_6
    const-string p1, "GrammaticalInflectionBackupHelper"

    .line 162
    const-string/jumbo v1, "cannot convert payload to byte array."

    .line 165
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    goto :goto_7

    .line 169
    :catchall_4
    move-exception p0

    .line 170
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 171
    throw p0

    .line 172
    :cond_4
    :goto_7
    return-object v0
.end method

.method public final performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/app/backup/BackupDataOutput;->getTransportFlags()I

    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BlobBackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 13
    return-void
.end method
