.class public final Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mComplete:Z

.field public final mFilter:Landroid/hardware/radio/ProgramList$Filter;

.field public final mProgramInfoMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-void
.end method

.method public varargs constructor <init>(Landroid/hardware/radio/ProgramList$Filter;Z[Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 7
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 8
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    const/4 p1, 0x0

    .line 9
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 10
    aget-object p2, p3, p1

    invoke-virtual {p0, p2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 4
    move-object p4, v0

    .line 5
    :cond_0
    move-object v1, p2

    .line 6
    check-cast v1, Landroid/util/ArraySet;

    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 11
    move-result v1

    .line 12
    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    .line 15
    move-result p3

    .line 16
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    .line 19
    move-result p3

    .line 20
    if-eqz p4, :cond_1

    .line 22
    move-object v1, p4

    .line 23
    check-cast v1, Landroid/util/ArraySet;

    .line 25
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 28
    move-result v1

    .line 29
    invoke-static {v1, p5}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    .line 32
    move-result p5

    .line 33
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result p3

    .line 37
    :cond_1
    if-nez p3, :cond_2

    .line 39
    new-instance p0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    return-object p0

    .line 45
    :cond_2
    check-cast p2, Landroid/util/ArraySet;

    .line 47
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 50
    move-result p5

    .line 51
    invoke-static {p5, p3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    .line 54
    move-result p5

    .line 55
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p2

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz p4, :cond_3

    .line 62
    check-cast p4, Landroid/util/ArraySet;

    .line 64
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    .line 67
    move-result v0

    .line 68
    invoke-static {v0, p3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    .line 71
    move-result v0

    .line 72
    invoke-virtual {p4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p4

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move-object p4, v0

    .line 78
    move v0, v1

    .line 79
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    move v3, v1

    .line 85
    :goto_1
    if-ge v3, p3, :cond_8

    .line 87
    new-instance v4, Landroid/util/ArraySet;

    .line 89
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 92
    new-instance v5, Landroid/util/ArraySet;

    .line 94
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 97
    if-eqz p2, :cond_4

    .line 99
    move v6, v1

    .line 100
    :goto_2
    if-ge v6, p5, :cond_4

    .line 102
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_4

    .line 108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 114
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v6, v6, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    if-eqz p4, :cond_5

    .line 122
    move v6, v1

    .line 123
    :goto_3
    if-ge v6, v0, :cond_5

    .line 125
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_5

    .line 131
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 137
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    new-instance v6, Landroid/hardware/radio/ProgramList$Chunk;

    .line 145
    const/4 v7, 0x1

    .line 146
    if-eqz p0, :cond_6

    .line 148
    if-nez v3, :cond_6

    .line 150
    move v8, v7

    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move v8, v1

    .line 153
    :goto_4
    if-eqz p1, :cond_7

    .line 155
    add-int/lit8 v9, p3, -0x1

    .line 157
    if-ne v3, v9, :cond_7

    .line 159
    goto :goto_5

    .line 160
    :cond_7
    move v7, v1

    .line 161
    :goto_5
    invoke-direct {v6, v8, v7, v4, v5}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 164
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 169
    goto :goto_1

    .line 170
    :cond_8
    return-object v2
.end method

.method public static roundUpFraction(II)I
    .locals 1

    .line 1
    div-int v0, p0, p1

    .line 3
    rem-int/2addr p0, p1

    .line 4
    if-lez p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    add-int/2addr v0, p0

    .line 10
    return v0
.end method


# virtual methods
.method public filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;II)Ljava/util/List;
    .locals 7

    .line 1
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 10
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 15
    iget-object v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 33
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 61
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    new-instance v5, Landroid/util/ArraySet;

    .line 67
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 70
    iget-object v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v0

    .line 76
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 88
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_5

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 97
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 103
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 105
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/util/ArrayMap;

    .line 111
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 120
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    goto :goto_1

    .line 124
    :cond_6
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_7

    .line 130
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_7

    .line 136
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 138
    iget-boolean v1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 140
    if-ne v0, v1, :cond_7

    .line 142
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 144
    if-nez v0, :cond_7

    .line 146
    const/4 p0, 0x0

    .line 147
    return-object p0

    .line 148
    :cond_7
    iget-boolean v2, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 152
    iget-boolean v1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 154
    move v4, p2

    .line 155
    move v6, p3

    .line 156
    invoke-static/range {v1 .. v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    .line 159
    move-result-object p0

    .line 160
    return-object p0
.end method

.method public filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;ZII)Ljava/util/List;
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const/4 p2, 0x1

    .line 17
    :cond_1
    move v0, p2

    .line 18
    new-instance v2, Landroid/util/ArraySet;

    .line 20
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 23
    new-instance v4, Landroid/util/ArraySet;

    .line 25
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 28
    const/4 p2, 0x0

    .line 29
    move v1, p2

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 35
    move-result v3

    .line 36
    if-ge v1, v3, :cond_2

    .line 38
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v1, p2

    .line 57
    :goto_1
    iget-object v3, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 59
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 62
    move-result v3

    .line 63
    if-ge v1, v3, :cond_6

    .line 65
    iget-object v3, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 73
    invoke-virtual {p0, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_3

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    iget-object v3, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 82
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/util/ArrayMap;

    .line 88
    move v5, p2

    .line 89
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 92
    move-result v6

    .line 93
    if-ge v5, v6, :cond_5

    .line 95
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 108
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_4

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 118
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    :goto_5
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 130
    move-result v1

    .line 131
    if-ge p2, v1, :cond_9

    .line 133
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 139
    invoke-virtual {v1}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 142
    move-result-object v3

    .line 143
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 145
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 148
    move-result v5

    .line 149
    if-nez v5, :cond_7

    .line 151
    goto :goto_6

    .line 152
    :cond_7
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 154
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Landroid/util/ArrayMap;

    .line 160
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 165
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Landroid/util/ArrayMap;

    .line 171
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_8

    .line 177
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 179
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 184
    goto :goto_5

    .line 185
    :cond_9
    iget-boolean v1, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 189
    move v3, p3

    .line 190
    move v5, p4

    .line 191
    invoke-static/range {v0 .. v5}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    .line 194
    move-result-object p0

    .line 195
    return-object p0
.end method

.method public final passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 20
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    return v2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 41
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 53
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 63
    return v2

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 66
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->isCategoryType()Z

    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_3

    .line 78
    return v2

    .line 79
    :cond_3
    return v1
.end method

.method public final putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 19
    new-instance v2, Landroid/util/ArrayMap;

    .line 21
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/util/ArrayMap;

    .line 35
    new-instance v0, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 37
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 44
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public final shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 19
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 26
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 28
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    const/4 v1, 0x1

    .line 43
    if-nez v0, :cond_1

    .line 45
    return v1

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 48
    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 56
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p0

    .line 62
    xor-int/2addr p0, v1

    .line 63
    return p0
.end method

.method public toProgramInfoList()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/util/ArrayMap;

    .line 23
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ProgramInfoCache(mComplete = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mFilter = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mProgramInfoMap = ["

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/util/ArrayMap;

    .line 46
    move v4, v1

    .line 47
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 50
    move-result v5

    .line 51
    if-ge v4, v5, :cond_0

    .line 53
    const-string v5, ", "

    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string p0, "]"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
