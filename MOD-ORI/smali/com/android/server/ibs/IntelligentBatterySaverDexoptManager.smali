.class public final Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mArtManagerLocal:Lcom/android/server/art/ArtManagerLocal;

.field public mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;


# virtual methods
.method public final dexoptPackages(Ljava/util/List;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    new-instance v9, Lcom/android/server/pm/dex/DexoptOptions;

    .line 29
    .line 30
    const-string/jumbo v7, "speed-profile"

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/16 v5, 0x605

    .line 35
    .line 36
    const/16 v4, 0x19

    .line 37
    .line 38
    move-object v3, v9

    .line 39
    move-object v6, v2

    .line 40
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v9, v3}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v5, p0, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->mArtManagerLocal:Lcom/android/server/art/ArtManagerLocal;

    .line 49
    .line 50
    invoke-virtual {v5, v1, v2, v4}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/16 v4, 0x14

    .line 59
    .line 60
    if-eq v2, v4, :cond_1

    .line 61
    .line 62
    const/16 v4, 0xa

    .line 63
    .line 64
    if-ne v2, v4, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    if-eqz v1, :cond_4

    .line 87
    .line 88
    :try_start_2
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :catch_0
    move-exception p0

    .line 93
    goto :goto_4

    .line 94
    :goto_2
    if-eqz v1, :cond_3

    .line 95
    .line 96
    :try_start_3
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 105
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_5
    return-object v0
.end method
