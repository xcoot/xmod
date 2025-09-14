.class public final Lcom/android/server/slice/SliceClientPermissions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# instance fields
.field public final mAuths:Landroid/util/ArrayMap;

.field public mHasFullAccess:Z

.field public final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field public final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 14
    .line 15
    return-void
.end method

.method public static createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;
    .locals 10

    .line 1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_6

    .line 8
    .line 9
    const-string v0, "client"

    .line 10
    .line 11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-instance v3, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const-string/jumbo v5, "pkg"

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-direct {v3, v6}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Lcom/android/server/slice/SliceClientPermissions;

    .line 41
    .line 42
    invoke-direct {v6, v3, p1}, Lcom/android/server/slice/SliceClientPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "fullAccess"

    .line 46
    .line 47
    invoke-interface {p0, v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    const-string p1, "0"

    .line 54
    .line 55
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    move p1, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    :goto_1
    iput-boolean p1, v6, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 65
    .line 66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 67
    .line 68
    .line 69
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-le p1, v0, :cond_5

    .line 74
    .line 75
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ne p1, v2, :cond_3

    .line 80
    .line 81
    return-object v6

    .line 82
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v1, :cond_4

    .line 87
    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v3, "authority"

    .line 93
    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    :try_start_0
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 101
    .line 102
    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-direct {p1, v7}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v7, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 110
    .line 111
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-direct {v7, v3, p1, v6}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, p0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->readFrom(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v6, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 122
    .line 123
    new-instance v8, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 124
    .line 125
    iget-object v9, v7, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 126
    .line 127
    iget p1, p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    .line 128
    .line 129
    invoke-direct {v8, v9, p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catch_0
    move-exception p1

    .line 137
    const-string v3, "SliceClientPermissions"

    .line 138
    .line 139
    const-string v7, "Couldn\'t read PkgUser"

    .line 140
    .line 141
    invoke-static {v3, v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    return-object v6

    .line 149
    :cond_6
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eq v0, v2, :cond_7

    .line 154
    .line 155
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 161
    .line 162
    const-string p1, "Can\'t find client tag in xml"

    .line 163
    .line 164
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0
.end method


# virtual methods
.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "client_"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final declared-synchronized getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v1, p2, p0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceClientPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    throw p1
.end method

.method public final onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "client"

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "pkg"

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    const-string v0, "fullAccess"

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v2, "1"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const-string v2, "0"

    .line 32
    .line 33
    :goto_0
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-ge v2, v0, :cond_1

    .line 44
    .line 45
    const-string v3, "authority"

    .line 46
    .line 47
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    const-string v3, "authority"

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v3, "pkg"

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 75
    .line 76
    iget-object v4, v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 94
    .line 95
    .line 96
    const-string v3, "authority"

    .line 97
    .line 98
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    const-string v0, "client"

    .line 105
    .line 106
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :goto_2
    monitor-exit p0

    .line 112
    throw p1
.end method
