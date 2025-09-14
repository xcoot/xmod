.class public final Lcom/android/server/pm/Installer$Batch;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mArgs:Ljava/util/List;

.field public mExecuted:Z

.field public final mFutures:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final declared-synchronized createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 12
    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    .line 19
    .line 20
    check-cast p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final declared-synchronized execute(Lcom/android/server/pm/Installer;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 3
    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    if-ge v2, v0, :cond_5

    .line 20
    .line 21
    sub-int v3, v0, v2

    .line 22
    .line 23
    const/16 v4, 0x100

    .line 24
    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    new-array v4, v3, [Landroid/os/CreateAppDataArgs;

    .line 30
    .line 31
    move v5, v1

    .line 32
    :goto_1
    if-ge v5, v3, :cond_0

    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 35
    .line 36
    add-int v7, v2, v5

    .line 37
    .line 38
    check-cast v6, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroid/os/CreateAppDataArgs;

    .line 45
    .line 46
    aput-object v6, v4, v5

    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_6

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x0

    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    new-array v3, v3, [Landroid/os/CreateAppDataResult;

    .line 61
    .line 62
    new-instance v4, Landroid/os/CreateAppDataResult;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/os/CreateAppDataResult;-><init>()V

    .line 65
    .line 66
    .line 67
    const-wide/16 v7, -0x1

    .line 68
    .line 69
    iput-wide v7, v4, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 70
    .line 71
    iput-wide v7, v4, Landroid/os/CreateAppDataResult;->deDataInode:J

    .line 72
    .line 73
    iput v1, v4, Landroid/os/CreateAppDataResult;->exceptionCode:I

    .line 74
    .line 75
    iput-object v6, v4, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_1
    move v5, v1

    .line 82
    :goto_2
    if-ge v5, v3, :cond_2

    .line 83
    .line 84
    aget-object v7, v4, v5

    .line 85
    .line 86
    iput v1, v7, Landroid/os/CreateAppDataArgs;->previousAppId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 92
    .line 93
    invoke-interface {v3, v4}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    .line 94
    .line 95
    .line 96
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_3
    move v4, v1

    .line 98
    :goto_4
    :try_start_2
    array-length v5, v3

    .line 99
    if-ge v4, v5, :cond_4

    .line 100
    .line 101
    aget-object v5, v3, v4

    .line 102
    .line 103
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    .line 104
    .line 105
    add-int v7, v2, v4

    .line 106
    .line 107
    check-cast v6, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Ljava/util/concurrent/CompletableFuture;

    .line 114
    .line 115
    iget v7, v5, Landroid/os/CreateAppDataResult;->exceptionCode:I

    .line 116
    .line 117
    if-nez v7, :cond_3

    .line 118
    .line 119
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_3
    new-instance v7, Lcom/android/server/pm/Installer$InstallerException;

    .line 124
    .line 125
    iget-object v5, v5, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v7, v5}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 131
    .line 132
    .line 133
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_4
    add-int/lit16 v2, v2, 0x100

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_5
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 149
    .line 150
    .line 151
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :goto_6
    monitor-exit p0

    .line 153
    throw p1
.end method
