.class public final Lcom/android/server/pm/DexOptHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final designatedPkgs:[Ljava/lang/String;

.field public static sArtManagerLocalIsInitialized:Z = false


# instance fields
.field public volatile mBootDexoptStartTime:J

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "com.sec.android.app.camera"

    .line 2
    .line 3
    const-string v1, "com.samsung.android.honeyboard"

    .line 4
    .line 5
    const-string v2, "com.samsung.android.dialer"

    .line 6
    .line 7
    const-string v3, "com.sec.android.app.myfiles"

    .line 8
    .line 9
    const-string v4, "com.sec.android.gallery3d"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/pm/DexOptHelper;->designatedPkgs:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    return-void
.end method

.method public static applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 3

    .line 1
    check-cast p3, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    move-object v2, p4

    .line 26
    check-cast v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p5, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 33
    .line 34
    iget-boolean p1, p1, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    new-instance p1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda13;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {p4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    check-cast p4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p5

    .line 60
    if-eqz p5, :cond_4

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p5

    .line 66
    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 67
    .line 68
    move-object v0, p2

    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, p5}, Lcom/android/server/pm/Computer;->findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p5

    .line 78
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    invoke-interface {p5, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static convertToDexOptResult(Lcom/android/server/art/model/DexoptResult;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/16 v1, 0x14

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/16 v1, 0x1e

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x28

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x2

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "DexoptResult for "

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, " has unsupported status "

    .line 51
    .line 52
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_1
    const/4 p0, -0x1

    .line 67
    return p0

    .line 68
    :cond_2
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_3
    return v2
.end method

.method public static getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/art/ArtManagerLocal;
    :try_end_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method public static getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/art/DexUseManagerLocal;
    :try_end_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v8, Ljava/util/ArrayList;

    .line 9
    .line 10
    move-object/from16 v0, p0

    .line 11
    .line 12
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_APEX_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 23
    .line 24
    .line 25
    new-instance v9, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {v1, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 42
    .line 43
    .line 44
    move-object v0, v10

    .line 45
    move-object v2, v7

    .line 46
    move-object v3, v8

    .line 47
    move-object v4, v9

    .line 48
    move-object/from16 v5, p1

    .line 49
    .line 50
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-direct {v1, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 57
    .line 58
    .line 59
    move-object v0, v10

    .line 60
    move-object v2, v7

    .line 61
    move-object v3, v8

    .line 62
    move-object v4, v9

    .line 63
    move-object/from16 v5, p1

    .line 64
    .line 65
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 66
    .line 67
    .line 68
    new-instance v12, Landroid/content/Intent;

    .line 69
    .line 70
    const-string v0, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 71
    .line 72
    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-wide/16 v14, 0x0

    .line 80
    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/4 v13, 0x0

    .line 84
    invoke-interface/range {v11 .. v16}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 97
    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 116
    .line 117
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 118
    .line 119
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_0
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object v0, v10

    .line 132
    move-object v1, v2

    .line 133
    move-object v2, v7

    .line 134
    move-object v3, v8

    .line 135
    move-object v4, v9

    .line 136
    move-object/from16 v5, p1

    .line 137
    .line 138
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;

    .line 142
    .line 143
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 144
    .line 145
    const/4 v2, 0x1

    .line 146
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    move-object v0, v10

    .line 150
    move-object v2, v7

    .line 151
    move-object v3, v8

    .line 152
    move-object v4, v9

    .line 153
    move-object/from16 v5, p1

    .line 154
    .line 155
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const-string v11, "PackageManager"

    .line 163
    .line 164
    if-nez v0, :cond_3

    .line 165
    .line 166
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 167
    .line 168
    iget-boolean v1, v0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 169
    .line 170
    if-eqz v1, :cond_3

    .line 171
    .line 172
    const-string v1, "Looking at historical package use"

    .line 173
    .line 174
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda7;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v8, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 191
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v3, "Taking package "

    .line 195
    .line 196
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v3, " as reference in time use"

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    const-wide/16 v3, 0x0

    .line 227
    .line 228
    cmp-long v3, v1, v3

    .line 229
    .line 230
    if-eqz v3, :cond_1

    .line 231
    .line 232
    const-wide v3, 0xa4cb8000L

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    sub-long/2addr v1, v3

    .line 238
    new-instance v3, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;

    .line 239
    .line 240
    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;-><init>(J)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_1
    new-instance v3, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    .line 245
    .line 246
    const/4 v1, 0x3

    .line 247
    invoke-direct {v3, v1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 248
    .line 249
    .line 250
    :goto_2
    iget-boolean v0, v0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 251
    .line 252
    if-nez v0, :cond_2

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_2
    new-instance v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda13;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 261
    .line 262
    .line 263
    :goto_3
    move-object v1, v3

    .line 264
    goto :goto_4

    .line 265
    :cond_3
    new-instance v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    .line 266
    .line 267
    const/4 v1, 0x3

    .line 268
    invoke-direct {v0, v1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 269
    .line 270
    .line 271
    move-object v1, v0

    .line 272
    :goto_4
    move-object v0, v10

    .line 273
    move-object v2, v7

    .line 274
    move-object v3, v8

    .line 275
    move-object v4, v9

    .line 276
    move-object/from16 v5, p1

    .line 277
    .line 278
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    .line 282
    .line 283
    const/4 v1, 0x1

    .line 284
    invoke-direct {v0, v1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 288
    .line 289
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v1, "Packages to be dexopted: "

    .line 293
    .line 294
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v7}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v1, "Packages skipped from dexopt: "

    .line 314
    .line 315
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v8}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    return-object v7
.end method

.method public static hasBcpApexesChanged()Z
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "BOOTCLASSPATH"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v1, "PackageManager"

    .line 18
    .line 19
    const-string v2, "Unable to get BOOTCLASSPATH"

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, ":"

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    array-length v5, v1

    .line 41
    move v6, v3

    .line 42
    :goto_0
    if-ge v6, v5, :cond_2

    .line 43
    .line 44
    aget-object v7, v1, v6

    .line 45
    .line 46
    new-array v8, v3, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v7, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v7}, Ljava/nio/file/Path;->getNameCount()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/4 v9, 0x2

    .line 57
    if-lt v8, v9, :cond_1

    .line 58
    .line 59
    invoke-interface {v7, v3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-string v9, "apex"

    .line 68
    .line 69
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_1

    .line 74
    .line 75
    invoke-interface {v7, v4}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move-object v1, v2

    .line 90
    :goto_1
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 116
    .line 117
    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    iget-boolean v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    .line 126
    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    return v4

    .line 130
    :cond_4
    return v3
.end method

.method public static initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/art/ArtManagerLocal;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/art/ArtManagerLocal;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 14
    .line 15
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;-><init>(Lcom/android/server/pm/DexOptHelper;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v2, v4}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    invoke-direct {v2, v4}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/art/ArtManagerLocal;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->setBatchDexoptStartCallback(Ljava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;)V

    .line 68
    .line 69
    .line 70
    const-class p1, Lcom/android/server/art/ArtManagerLocal;

    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    sput-boolean p1, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    .line 77
    .line 78
    new-instance p1, Lcom/android/server/pm/DexOptHelper$1;

    .line 79
    .line 80
    invoke-direct {p1, v0}, Lcom/android/server/pm/DexOptHelper$1;-><init>(Lcom/android/server/art/ArtManagerLocal;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    .line 84
    .line 85
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static packagesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    move-object v2, p0

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-lez v3, :cond_0

    .line 21
    .line 22
    const-string v3, ", "

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 32
    .line 33
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static performDexOptWithArtService(Lcom/android/server/pm/dex/DexoptOptions;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    invoke-interface {v1, v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, -0x1

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 19
    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 29
    .line 30
    .line 31
    return v3

    .line 32
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->convertToDexOptResult(Lcom/android/server/art/model/DexoptResult;)I

    .line 45
    .line 46
    .line 47
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 49
    .line 50
    .line 51
    return p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    :try_start_3
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    throw p0
.end method

.method public static requestCopyPreoptedFiles()V
    .locals 9

    .line 1
    const-string/jumbo v0, "ro.cp_system_other_odex"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    const-string/jumbo v0, "requested"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "sys.cppreopt"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/32 v4, 0x186a0

    .line 26
    .line 27
    .line 28
    add-long/2addr v4, v2

    .line 29
    move-wide v6, v2

    .line 30
    :cond_0
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v8, "finished"

    .line 35
    .line 36
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v8, "PackageManager"

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-wide/16 v6, 0x64

    .line 45
    .line 46
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    cmp-long v0, v6, v4

    .line 54
    .line 55
    if-lez v0, :cond_0

    .line 56
    .line 57
    const-string/jumbo v0, "timed-out"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "cppreopt did not finish!"

    .line 64
    .line 65
    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "cppreopts took "

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sub-long/2addr v6, v2

    .line 76
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " ms"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method


# virtual methods
.method public final performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p1, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p0, v2, v0}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    invoke-interface {p0, v2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x1

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    iget p0, p1, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 47
    .line 48
    and-int/lit8 p0, p0, 0x8

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    invoke-static {p1, v1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithArtService(Lcom/android/server/pm/dex/DexoptOptions;I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const-wide/16 v2, 0x4000

    .line 58
    .line 59
    const-string p0, "dexopt"

    .line 60
    .line 61
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x4

    .line 65
    :try_start_0
    invoke-static {p1, p0}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithArtService(Lcom/android/server/pm/dex/DexoptOptions;I)I

    .line 66
    .line 67
    .line 68
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    .line 71
    .line 72
    :goto_0
    const/4 p1, -0x1

    .line 73
    if-eq p0, p1, :cond_4

    .line 74
    .line 75
    move v1, v0

    .line 76
    :cond_4
    return v1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method
