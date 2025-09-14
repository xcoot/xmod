.class public final Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final maxPossibleCount:I

.field public final processRecord:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->processRecord:Lcom/android/server/am/ProcessRecord;

    .line 6
    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->maxPossibleCount:I

    .line 9
    return-void
.end method

.method public static doForceReDexOpt(Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v6, p0, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->packageName:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/android/server/am/CrashDetectionAndOptimization;->dexOptimizedPackages:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x8

    .line 13
    const/4 v7, 0x0

    .line 14
    if-lt v1, v2, :cond_0

    .line 16
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string p1, "CRASH_DEXOPT"

    .line 24
    const-string/jumbo v8, "dexopt fail: "

    .line 27
    const-string v0, "Try to re-compile: "

    .line 29
    const-class v1, Lcom/android/server/pm/PackageManagerLocal;

    .line 31
    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/pm/PackageManagerLocal;

    .line 37
    :try_start_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 40
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v10, Lcom/android/server/pm/dex/DexoptOptions;

    .line 58
    const-string/jumbo v4, "speed-profile"

    .line 61
    const/16 v1, 0x18

    .line 63
    const/4 v5, 0x0

    .line 64
    const/16 v2, 0x407

    .line 66
    move-object v0, v10

    .line 67
    move-object v3, v6

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v10, v7}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v9, v6, v0}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 86
    move-result v0

    .line 87
    const/16 v1, 0x1e

    .line 89
    if-ne v0, v1, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    if-eqz v9, :cond_3

    .line 111
    :try_start_2
    invoke-interface {v9}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    goto :goto_4

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto :goto_3

    .line 117
    :goto_1
    if-eqz v9, :cond_2

    .line 119
    :try_start_3
    invoke-interface {v9}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    goto :goto_2

    .line 123
    :catchall_1
    move-exception v1

    .line 124
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    :cond_2
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    :goto_3
    const-string v1, "Assume processing was successful and ignore the package: "

    .line 130
    const-string v2, " ("

    .line 132
    invoke-static {v1, v6, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, ")"

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3
    :goto_4
    sget-object p1, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    .line 157
    check-cast p1, Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    .line 3
    if-nez v0, :cond_0

    .line 5
    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->processRecord:Lcom/android/server/am/ProcessRecord;

    .line 9
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 11
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 13
    sget-object v1, Lcom/android/server/am/CrashDetectionAndOptimization;->dexOptimizedPackages:Ljava/util/List;

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 39
    goto/16 :goto_1

    .line 41
    :cond_2
    sget-object v1, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    move-object v2, v1

    .line 45
    check-cast v2, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    move-result-wide v2

    .line 54
    move-object v4, v1

    .line 55
    check-cast v4, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v4

    .line 61
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x1

    .line 66
    if-eqz v5, :cond_6

    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;

    .line 74
    if-eqz v5, :cond_3

    .line 76
    iget-object v7, v5, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->packageName:Ljava/lang/String;

    .line 78
    if-eqz v7, :cond_3

    .line 80
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_3

    .line 86
    iget-wide v7, v5, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->mTimeStamp:J

    .line 88
    sub-long/2addr v2, v7

    .line 89
    const-wide/16 v7, 0x3e8

    .line 91
    div-long/2addr v2, v7

    .line 92
    const-wide/16 v7, 0xf0

    .line 94
    cmp-long v2, v2, v7

    .line 96
    if-ltz v2, :cond_4

    .line 98
    sget-object p0, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    .line 100
    check-cast p0, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget v2, v5, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    .line 108
    add-int/2addr v2, v6

    .line 109
    iput v2, v5, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    .line 111
    iget p0, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->maxPossibleCount:I

    .line 113
    if-ge v2, p0, :cond_5

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    invoke-static {v5, v0}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->doForceReDexOpt(Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;Ljava/lang/String;)V

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    sget-object p0, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    .line 124
    move-object v2, p0

    .line 125
    check-cast v2, Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 130
    move-result v2

    .line 131
    const/4 v3, 0x0

    .line 132
    const/16 v4, 0x8

    .line 134
    if-ne v2, v4, :cond_7

    .line 136
    check-cast p0, Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    goto :goto_0

    .line 142
    :cond_7
    move-object v2, p0

    .line 143
    check-cast v2, Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 148
    move-result v2

    .line 149
    if-ge v2, v4, :cond_8

    .line 151
    new-instance v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;

    .line 153
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 156
    const-wide/16 v4, -0x1

    .line 158
    iput-wide v4, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->mTimeStamp:J

    .line 160
    iput v3, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    move-result-wide v3

    .line 166
    iput-wide v3, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->mTimeStamp:J

    .line 168
    iput-object v0, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->packageName:Ljava/lang/String;

    .line 170
    iput v6, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    .line 172
    check-cast p0, Ljava/util/ArrayList;

    .line 174
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_8
    :goto_0
    monitor-exit v1

    .line 178
    :goto_1
    return-void

    .line 179
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    throw p0
.end method
