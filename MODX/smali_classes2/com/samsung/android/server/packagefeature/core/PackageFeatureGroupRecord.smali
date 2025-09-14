.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Ljava/util/Map;

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

.field public mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

.field public mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public final mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;

.field public final mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->NULL:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;

    .line 20
    .line 21
    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final executeDebugMode([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;-><init>(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 13
    .line 14
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string p0, "Can not execute, There is no registered callback."

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const-string p0, "All package features disabled."

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    array-length v2, p1

    .line 43
    :goto_1
    if-ge v1, v2, :cond_3

    .line 44
    .line 45
    aget-object v3, p1, v1

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v4, v5, v3, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->DEBUG_MODE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 61
    .line 62
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    .line 65
    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p2, "Packages="

    .line 70
    .line 71
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    array-length p1, p1

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ", Extra="

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public final getCurrentVersion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getVersion()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getPackageFeatureData(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;-><init>()V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public initialize$1()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "initialize: GroupName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->INITIALIZE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 27
    .line 28
    iput-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string v1, "loadFromCacheFile"

    .line 38
    .line 39
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    sget-object v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->DIR_PATH:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Ljava/io/File;

    .line 47
    .line 48
    iget-object v5, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mCacheFilePathName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 67
    .line 68
    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->loadFromFileInputStream(Ljava/io/FileInputStream;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    instance-of v5, v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logSucceeded(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :catchall_0
    move-exception v2

    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception v4

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    :try_start_3
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_2
    move-exception v2

    .line 104
    :try_start_6
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_3
    move-object v4, v3

    .line 112
    :goto_4
    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->CACHE_FILE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 113
    .line 114
    if-nez v4, :cond_3

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_3
    iput-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 120
    .line 121
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const-string v2, "loadFromRawResource"

    .line 126
    .line 127
    iget-object v4, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 128
    .line 129
    iget v5, v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    .line 130
    .line 131
    if-nez v5, :cond_4

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_4
    :try_start_7
    new-instance v5, Ljava/io/InputStreamReader;

    .line 135
    .line 136
    iget-object v6, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iget v4, v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    .line 143
    .line 144
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 149
    .line 150
    .line 151
    const/4 v4, 0x1

    .line 152
    :try_start_8
    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->loadFromReader(ILjava/io/Reader;Ljava/lang/String;Z)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 153
    .line 154
    .line 155
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 156
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 157
    .line 158
    .line 159
    move-object v3, v1

    .line 160
    goto :goto_8

    .line 161
    :catchall_3
    move-exception v1

    .line 162
    goto :goto_7

    .line 163
    :catchall_4
    move-exception v1

    .line 164
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 165
    .line 166
    .line 167
    goto :goto_6

    .line 168
    :catchall_5
    move-exception v4

    .line 169
    :try_start_b
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    :goto_6
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 173
    :goto_7
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_8
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->RAW_RESOURCE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 177
    .line 178
    if-nez v3, :cond_5

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_5
    iput-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 184
    .line 185
    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p5

    .line 7
    move v4, p4

    .line 8
    move-object v5, p6

    .line 9
    move-object v6, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    invoke-direct {p3, p0, v7, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public propagateToCallbacks()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->POLICY_DISABLED:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Start to propagate to callbacks("

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 48
    .line 49
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, ") for "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 66
    .line 67
    const-string v3, ", reason="

    .line 68
    .line 69
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 75
    .line 76
    const/4 v4, 0x3

    .line 77
    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 81
    .line 82
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    move-object v9, v2

    .line 109
    check-cast v9, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getPackageFeatureData(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    move-object v11, v1

    .line 120
    check-cast v11, Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    const/4 v1, 0x0

    .line 127
    :goto_1
    if-ge v1, v12, :cond_2

    .line 128
    .line 129
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object v3, v2

    .line 134
    check-cast v3, Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    .line 135
    .line 136
    add-int/lit8 v13, v1, 0x1

    .line 137
    .line 138
    move-object v1, p0

    .line 139
    move-object v2, v9

    .line 140
    move-object v4, v10

    .line 141
    move v5, v13

    .line 142
    move v6, v12

    .line 143
    move-object v7, v0

    .line 144
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    move v1, v13

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    :goto_2
    return-void
.end method

.method public final registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "PackageFeature("

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ") is not enabled."

    .line 15
    .line 16
    invoke-static {p2, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v2, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getPackageFeatureData(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v6, 0x1

    .line 58
    const-string/jumbo v7, "registerCallback"

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    move-object v1, p0

    .line 63
    move-object v3, p2

    .line 64
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public updateGroupDataFromScpm(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/io/FileDescriptor;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_3

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-nez v1, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const-string v2, "loadFromScpm"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->loadFromReader(ILjava/io/Reader;Ljava/lang/String;Z)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->SCPM:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->saveToCacheFile(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    .line 58
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_2
    move-exception v0

    .line 68
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :goto_3
    const-string v0, "Failed to newFileReader"

    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_4
    return-void
.end method
