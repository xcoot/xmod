.class public final Lcom/android/server/storage/AppCollector$BackgroundHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field public final mUm:Landroid/os/UserManager;

.field public final mVolume:Landroid/os/storage/VolumeInfo;

.field public final synthetic this$0:Lcom/android/server/storage/AppCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/usage/StorageStatsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 35
    .line 36
    const/16 v7, 0x200

    .line 37
    .line 38
    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    move v7, v2

    .line 47
    :goto_1
    if-ge v7, v6, :cond_2

    .line 48
    .line 49
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v10, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 58
    .line 59
    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 71
    .line 72
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 73
    .line 74
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-virtual {v9, v10, v11, v12}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    new-instance v10, Landroid/content/pm/PackageStats;

    .line 85
    .line 86
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    .line 89
    .line 90
    invoke-direct {v10, v8, v11}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    .line 94
    .line 95
    .line 96
    move-result-wide v11

    .line 97
    iput-wide v11, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 98
    .line 99
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getAppBytes()J

    .line 100
    .line 101
    .line 102
    move-result-wide v11

    .line 103
    iput-wide v11, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 104
    .line 105
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getDataBytes()J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    iput-wide v8, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 110
    .line 111
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_0
    move-exception v8

    .line 116
    const-string v9, "AppCollector"

    .line 117
    .line 118
    const-string v10, "An exception occurred while fetching app size"

    .line 119
    .line 120
    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    iget-object p0, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :goto_3
    return-void
.end method
