.class public final synthetic Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/uri/UriMetricsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/uri/UriMetricsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/uri/UriMetricsHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/uri/UriMetricsHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/uri/UriMetricsHelper;->mPersistentUriGrantsProvider:Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/uri/UriGrantsManagerService;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_2

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    move v6, v2

    .line 41
    :goto_1
    if-ge v6, v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 48
    .line 49
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_5

    .line 59
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    new-instance p0, Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    move v1, v2

    .line 76
    :goto_3
    if-ge v1, v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 83
    .line 84
    iget v3, v3, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {p0, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {p0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    move v0, v2

    .line 117
    :goto_4
    if-ge v0, p1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    const/16 v4, 0x27a4

    .line 134
    .line 135
    invoke-static {v4, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    return v2

    .line 146
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw p0
.end method
