.class public final Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# instance fields
.field public final mAuthority:Ljava/lang/String;

.field public final mPaths:Landroid/util/ArraySet;

.field public final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field public final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 16
    .line 17
    return-void
.end method

.method public static isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v1, v0, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    move v1, v2

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    aget-object v3, p1, v1

    .line 11
    .line 12
    aget-object v4, p0, v1

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p0, 0x1

    .line 25
    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-class v1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    check-cast p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq v0, v2, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-direct {v3, v4}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-direct {v3, v4}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority$$ExternalSyntheticLambda0;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 74
    .line 75
    .line 76
    move v3, v1

    .line 77
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ge v3, v4, :cond_6

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, [Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, [Ljava/lang/String;

    .line 94
    .line 95
    array-length v6, v4

    .line 96
    array-length v7, v5

    .line 97
    if-eq v6, v7, :cond_3

    .line 98
    .line 99
    return v1

    .line 100
    :cond_3
    move v6, v1

    .line 101
    :goto_2
    array-length v7, v4

    .line 102
    if-ge v6, v7, :cond_5

    .line 103
    .line 104
    aget-object v7, v4, v6

    .line 105
    .line 106
    aget-object v8, v5, v6

    .line 107
    .line 108
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_4

    .line 113
    .line 114
    return v1

    .line 115
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v2, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 134
    .line 135
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_7

    .line 140
    .line 141
    const/4 v1, 0x1

    .line 142
    :cond_7
    return v1
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final declared-synchronized readFrom(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v1, v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    const-string/jumbo v1, "path"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "/"

    .line 42
    .line 43
    const/4 v4, -0x1

    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_1
    array-length v4, v2

    .line 50
    if-ge v3, v4, :cond_0

    .line 51
    .line 52
    aget-object v4, v2, v3

    .line 53
    .line 54
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    aput-object v4, v2, v3

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_3
    monitor-exit p0

    .line 76
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v2, v3}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Iterable;

    .line 32
    .line 33
    const-string v2, ", "

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "("

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 47
    .line 48
    const-string v4, ": "

    .line 49
    .line 50
    invoke-static {v3, p0, v2, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-static {v3, v1, p0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, [Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    const-string/jumbo v4, "path"

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    array-length v4, v3

    .line 30
    new-array v4, v4, [Ljava/lang/String;

    .line 31
    .line 32
    move v6, v1

    .line 33
    :goto_1
    array-length v7, v3

    .line 34
    if-ge v6, v7, :cond_0

    .line 35
    .line 36
    aget-object v7, v3, v6

    .line 37
    .line 38
    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    aput-object v7, v4, v6

    .line 43
    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const-string v3, "/"

    .line 48
    .line 49
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    const-string/jumbo v3, "path"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :goto_3
    monitor-exit p0

    .line 71
    throw p1
.end method
