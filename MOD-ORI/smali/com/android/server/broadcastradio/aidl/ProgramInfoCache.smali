.class public final Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;
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

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-void
.end method

.method public varargs constructor <init>(Landroid/hardware/radio/ProgramList$Filter;Z[Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 7
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 8
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    const/4 p1, 0x0

    .line 9
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 10
    aget-object p2, p3, p1

    invoke-virtual {p0, p2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

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

    .line 3
    .line 4
    move-object p4, v0

    .line 5
    :cond_0
    move-object v1, p2

    .line 6
    check-cast v1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p4, :cond_1

    .line 21
    .line 22
    move-object v1, p4

    .line 23
    check-cast v1, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1, p5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    .line 30
    .line 31
    .line 32
    move-result p5

    .line 33
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    :cond_1
    if-nez p3, :cond_2

    .line 38
    .line 39
    new-instance p0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    check-cast p2, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 48
    .line 49
    .line 50
    move-result p5

    .line 51
    invoke-static {p5, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz p4, :cond_3

    .line 61
    .line 62
    check-cast p4, Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
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

    .line 80
    .line 81
    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    move v3, v1

    .line 85
    :goto_1
    if-ge v3, p3, :cond_8

    .line 86
    .line 87
    new-instance v4, Landroid/util/ArraySet;

    .line 88
    .line 89
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v5, Landroid/util/ArraySet;

    .line 93
    .line 94
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    move v6, v1

    .line 100
    :goto_2
    if-ge v6, p5, :cond_4

    .line 101
    .line 102
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_4

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 113
    .line 114
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v6, v6, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    if-eqz p4, :cond_5

    .line 121
    .line 122
    move v6, v1

    .line 123
    :goto_3
    if-ge v6, v0, :cond_5

    .line 124
    .line 125
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_5

    .line 130
    .line 131
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 136
    .line 137
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    new-instance v6, Landroid/hardware/radio/ProgramList$Chunk;

    .line 144
    .line 145
    const/4 v7, 0x1

    .line 146
    if-eqz p0, :cond_6

    .line 147
    .line 148
    if-nez v3, :cond_6

    .line 149
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

    .line 154
    .line 155
    add-int/lit8 v9, p3, -0x1

    .line 156
    .line 157
    if-ne v3, v9, :cond_7

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_7
    move v7, v1

    .line 161
    :goto_5
    invoke-direct {v6, v8, v7, v4, v5}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 168
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

    .line 2
    .line 3
    rem-int/2addr p0, p1

    .line 4
    if-lez p0, :cond_0

    .line 5
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
.method public filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/ProgramListChunk;II)Ljava/util/List;
    .locals 7

    .line 1
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    .line 18
    .line 19
    array-length v4, v2

    .line 20
    const-string v5, "BcRadioAidlSrv.cache"

    .line 21
    .line 22
    if-ge v1, v4, :cond_4

    .line 23
    .line 24
    aget-object v2, v2, v1

    .line 25
    .line 26
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    .line 33
    .line 34
    aget-object v2, v2, v1

    .line 35
    .line 36
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v4, "Program info %s in program list chunk is not valid"

    .line 41
    .line 42
    invoke-static {v5, v4, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p0, v4}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    new-instance v6, Landroid/util/ArraySet;

    .line 77
    .line 78
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    :goto_2
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 86
    .line 87
    array-length v2, v1

    .line 88
    if-ge v0, v2, :cond_7

    .line 89
    .line 90
    aget-object v1, v1, v0

    .line 91
    .line 92
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    .line 99
    .line 100
    aget-object v1, v1, v0

    .line 101
    .line 102
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "Removed identifier %s in program list chunk is not valid"

    .line 107
    .line 108
    invoke-static {v5, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Landroid/util/ArrayMap;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 156
    .line 157
    iget-boolean v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    .line 158
    .line 159
    if-ne v0, v1, :cond_8

    .line 160
    .line 161
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    .line 162
    .line 163
    if-nez v0, :cond_8

    .line 164
    .line 165
    const/4 p0, 0x0

    .line 166
    return-object p0

    .line 167
    :cond_8
    iget-boolean v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    .line 168
    .line 169
    iput-boolean v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 170
    .line 171
    iget-boolean v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    .line 172
    .line 173
    move v4, p2

    .line 174
    move-object v5, v6

    .line 175
    move v6, p3

    .line 176
    invoke-static/range {v1 .. v6}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0
.end method

.method public filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;ZII)Ljava/util/List;
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    :cond_1
    move v0, p2

    .line 18
    new-instance v2, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    move v1, p2

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v1, v3, :cond_2

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v1, p2

    .line 57
    :goto_1
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ge v1, v3, :cond_6

    .line 64
    .line 65
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/util/ArrayMap;

    .line 87
    .line 88
    move v5, p2

    .line 89
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-ge v5, v6, :cond_5

    .line 94
    .line 95
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 107
    .line 108
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    :goto_5
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-ge p2, v1, :cond_9

    .line 132
    .line 133
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 144
    .line 145
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-nez v5, :cond_7

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_7
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 153
    .line 154
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Landroid/util/ArrayMap;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_9
    iget-boolean v1, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 186
    .line 187
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 188
    .line 189
    move v3, p3

    .line 190
    move v5, p4

    .line 191
    invoke-static/range {v0 .. v5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0
.end method

.method public final passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->isCategoryType()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move v1, v2

    .line 80
    :cond_4
    :goto_0
    return v1
.end method

.method public final putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 18
    .line 19
    new-instance v2, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/util/ArrayMap;

    .line 34
    .line 35
    new-instance v0, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 39
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

    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
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

    .line 2
    .line 3
    const-string v1, "ProgramInfoCache(mComplete = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mFilter = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mProgramInfoMap = ["

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/util/ArrayMap;

    .line 45
    .line 46
    move v4, v1

    .line 47
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ge v4, v5, :cond_0

    .line 52
    .line 53
    const-string v5, ", "

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string p0, "])"

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public updateFromHalProgramListChunk(Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    if-ge v1, v3, :cond_2

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    .line 26
    .line 27
    aget-object v2, v2, v1

    .line 28
    .line 29
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "BcRadioAidlSrv.cache"

    .line 34
    .line 35
    const-string v4, "Program info in program info %s in chunk is not valid"

    .line 36
    .line 37
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    :goto_2
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 52
    .line 53
    array-length v2, v1

    .line 54
    if-ge v0, v2, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 57
    .line 58
    aget-object v1, v1, v0

    .line 59
    .line 60
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-boolean p1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 73
    .line 74
    return-void
.end method
