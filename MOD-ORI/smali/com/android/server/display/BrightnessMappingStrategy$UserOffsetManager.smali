.class public final Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sDebugLogging:Z


# instance fields
.field public mCurve:Landroid/util/Pair;

.field public mLastAddedLux:F

.field public mUserPoints:Ljava/util/ArrayList;


# direct methods
.method public static convertFloatArrayListToArray(Ljava/util/ArrayList;)[F
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Float;

    .line 23
    .line 24
    add-int/lit8 v3, v1, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 34
    .line 35
    :goto_1
    aput v2, v0, v1

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final addPoint(FFF)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 3
    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;-><init>(FFF)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance p3, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {p3, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mLastAddedLux:F

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :goto_0
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ge p1, p2, :cond_0

    .line 32
    .line 33
    const-string p2, "BrightnessMappingStrategy"

    .line 34
    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "addUserDataPoint: ["

    .line 41
    .line 42
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "] "

    .line 49
    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->updateCurve()V

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p1
.end method

.method public final clear()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 7
    .line 8
    const-string/jumbo v1, "clear user offset curve"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "offset curve"

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 18
    .line 19
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, [F

    .line 22
    .line 23
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, [F

    .line 26
    .line 27
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/display/utils/Plog$SystemPlog;->logCurve(Ljava/lang/String;[F[F)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "UserOffsetManager:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "  "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 19
    .line 20
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, [F

    .line 23
    .line 24
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, [F

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v5, "curve: ["

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    array-length v5, v3

    .line 37
    array-length v6, v2

    .line 38
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    move v6, v1

    .line 43
    :goto_0
    if-ge v6, v5, :cond_0

    .line 44
    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v8, "("

    .line 48
    .line 49
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    aget v8, v3, v6

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v8, ","

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    aget v8, v2, v6

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v8, "),"

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string v2, "]"

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-ge v1, v0, :cond_2

    .line 108
    .line 109
    const-string v0, "  mUserPoints["

    .line 110
    .line 111
    const-string v2, "] "

    .line 112
    .line 113
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 137
    .line 138
    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "  sDebugLogging: "

    .line 142
    .line 143
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget-boolean v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    .line 147
    .line 148
    invoke-static {p0, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final getCurve()Landroid/util/Pair;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, [F

    .line 10
    .line 11
    check-cast v0, [F

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 19
    .line 20
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, [F

    .line 24
    .line 25
    check-cast v1, [F

    .line 26
    .line 27
    array-length v1, v1

    .line 28
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    monitor-exit p0

    .line 41
    return-object v0

    .line 42
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method public final hasUserDataPoints()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v0
.end method

.method public final updateCurve()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    if-lez v4, :cond_0

    .line 40
    .line 41
    add-int/lit8 v7, v4, -0x1

    .line 42
    .line 43
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 48
    .line 49
    iget v8, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 50
    .line 51
    invoke-virtual {v7, v8}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(F)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 59
    .line 60
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :goto_1
    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 75
    .line 76
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    .line 84
    .line 85
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v7, v3, -0x1

    .line 93
    .line 94
    if-ge v4, v7, :cond_1

    .line 95
    .line 96
    add-int/lit8 v7, v4, 0x1

    .line 97
    .line 98
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 103
    .line 104
    iget v8, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 105
    .line 106
    invoke-virtual {v7, v8}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(F)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    iget v5, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 114
    .line 115
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->convertFloatArrayListToArray(Ljava/util/ArrayList;)[F

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->convertFloatArrayListToArray(Ljava/util/ArrayList;)[F

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 145
    .line 146
    sget-boolean p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    .line 147
    .line 148
    if-eqz p0, :cond_3

    .line 149
    .line 150
    sget-object p0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 151
    .line 152
    const-string/jumbo v2, "offset curve"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/utils/Plog$SystemPlog;->logCurve(Ljava/lang/String;[F[F)V

    .line 156
    .line 157
    .line 158
    :cond_3
    return-void
.end method
