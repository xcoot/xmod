.class public final Lcom/android/server/pm/ShortcutLauncher;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOwnerUserId:I

.field public final mPinnedShortcuts:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/pm/ShortcutPackageInfo;

    .line 2
    .line 3
    new-instance v5, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p4, p3, v6}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 26
    .line 27
    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    .line 28
    .line 29
    return-void
.end method

.method public static loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .locals 9

    .line 1
    const-string v0, "ShortcutService"

    .line 2
    .line 3
    const-string v1, "Not found "

    .line 4
    .line 5
    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 32
    .line 33
    .line 34
    return-object v3

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v1

    .line 38
    move-object v3, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :try_start_2
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v5, v3

    .line 45
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/4 v7, 0x1

    .line 50
    if-eq v6, v7, :cond_3

    .line 51
    .line 52
    const/4 v8, 0x2

    .line 53
    if-eq v6, v8, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-ne v5, v7, :cond_2

    .line 65
    .line 66
    const-string v7, "launcher-pins"

    .line 67
    .line 68
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 84
    .line 85
    .line 86
    return-object v5

    .line 87
    :catch_1
    move-exception v1

    .line 88
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v5, "Failed to read file "

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v5, v2, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v0, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    .line 114
    .line 115
    .line 116
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catchall_1
    move-exception p1

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    throw p0
.end method

.method public static loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string/jumbo v2, "package-name"

    .line 4
    .line 5
    .line 6
    sget-boolean v3, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    move v4, p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v4, "launcher-user"

    .line 18
    .line 19
    int-to-long v5, p2

    .line 20
    invoke-static {p0, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    long-to-int v4, v4

    .line 25
    :goto_0
    new-instance v5, Lcom/android/server/pm/ShortcutLauncher;

    .line 26
    .line 27
    invoke-direct {v5, p1, p2, v2, v4}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    move-object v2, v3

    .line 35
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eq v4, v1, :cond_a

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    if-ne v4, v6, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-le v6, p1, :cond_a

    .line 49
    .line 50
    :cond_1
    if-eq v4, v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    add-int/lit8 v7, p1, 0x1

    .line 62
    .line 63
    if-ne v4, v7, :cond_6

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string/jumbo v7, "package-info"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_5

    .line 76
    .line 77
    const-string/jumbo v7, "package"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    const-string/jumbo v2, "package-name"

    .line 88
    .line 89
    .line 90
    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz p3, :cond_4

    .line 95
    .line 96
    move v4, p2

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const-string/jumbo v4, "package-user"

    .line 99
    .line 100
    .line 101
    int-to-long v6, p2

    .line 102
    invoke-static {p0, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    long-to-int v4, v6

    .line 107
    :goto_2
    new-instance v6, Landroid/util/ArraySet;

    .line 108
    .line 109
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v7, v5, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 113
    .line 114
    monitor-enter v7

    .line 115
    :try_start_0
    iget-object v8, v5, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-static {v4, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v8, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    monitor-exit v7

    .line 125
    move-object v2, v6

    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p0

    .line 130
    :cond_5
    iget-object v4, v5, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 131
    .line 132
    invoke-virtual {v4, p0, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    :goto_3
    add-int/lit8 v7, p1, 0x2

    .line 137
    .line 138
    if-ne v4, v7, :cond_9

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const-string/jumbo v7, "pin"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-nez v7, :cond_7

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    if-nez v2, :cond_8

    .line 154
    .line 155
    const-string v4, "ShortcutService"

    .line 156
    .line 157
    const-string/jumbo v6, "pin in invalid place"

    .line 158
    .line 159
    .line 160
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_8
    const-string/jumbo v4, "value"

    .line 165
    .line 166
    .line 167
    invoke-interface {p0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_9
    :goto_4
    invoke-static {v4, v6}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_a
    return-object v5
.end method


# virtual methods
.method public final addPinnedShortcut(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/util/ArraySet;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    add-int/2addr v4, v2

    .line 26
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;ZLjava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final ensurePackageInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Package not found: "

    .line 17
    .line 18
    const-string v0, "ShortcutService"

    .line 19
    .line 20
    invoke-static {p0, v2, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 34
    .line 35
    iget-wide v1, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 38
    .line 39
    sget-boolean v1, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 40
    .line 41
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 44
    .line 45
    const v1, 0x8000

    .line 46
    .line 47
    .line 48
    and-int/2addr v0, v1

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move v0, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 55
    .line 56
    iput-boolean v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 57
    .line 58
    return-void
.end method

.method public final getOwnerUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPinnedShortcutIds(ILjava/lang/String;)Landroid/util/ArraySet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/util/ArraySet;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 23
    .line 24
    .line 25
    move-object p0, p1

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getShortcutPackageItemFile()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 6
    .line 7
    iget v1, v1, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "launchers"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 29
    .line 30
    const-string v2, ".xml"

    .line 31
    .line 32
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method public final hasPinned(Landroid/content/pm/ShortcutInfo;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/util/ArraySet;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    monitor-exit v0

    .line 42
    return p0

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onRestored(I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 20
    .line 21
    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 38
    .line 39
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_1
    return-void
.end method

.method public final pinShortcuts(ILjava/lang/String;ZLjava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v2, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    if-ge v3, p2, :cond_5

    .line 46
    .line 47
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_4

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_4

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_4

    .line 77
    .line 78
    if-eqz p3, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    :goto_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter p2

    .line 94
    :try_start_1
    iget-object p3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Landroid/util/ArraySet;

    .line 101
    .line 102
    if-eqz p3, :cond_7

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    :cond_6
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_5
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    throw p0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const-string v2, "launcher-pins"

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v2, "package-name"

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1, v2, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    const-string v2, "launcher-user"

    .line 55
    .line 56
    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 57
    .line 58
    int-to-long v4, v4

    .line 59
    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 65
    .line 66
    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 67
    .line 68
    invoke-virtual {v2, v4, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    move v4, v2

    .line 73
    :goto_0
    if-ge v4, v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroid/content/pm/UserPackage;

    .line 80
    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    iget v6, v5, Landroid/content/pm/UserPackage;->userId:I

    .line 84
    .line 85
    iget v7, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    .line 86
    .line 87
    if-eq v6, v7, :cond_2

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_2
    const-string/jumbo v6, "package"

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .line 95
    .line 96
    const-string/jumbo v6, "package-name"

    .line 97
    .line 98
    .line 99
    iget-object v7, v5, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v6, "package-user"

    .line 105
    .line 106
    .line 107
    iget v5, v5, Landroid/content/pm/UserPackage;->userId:I

    .line 108
    .line 109
    int-to-long v7, v5

    .line 110
    invoke-static {p1, v6, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Landroid/util/ArraySet;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    move v7, v2

    .line 124
    :goto_1
    if-ge v7, v6, :cond_4

    .line 125
    .line 126
    const-string/jumbo v8, "pin"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-eqz v10, :cond_3

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    invoke-interface {p1, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    .line 144
    .line 145
    const-string/jumbo v10, "value"

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v3, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    .line 153
    .line 154
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    const-string/jumbo v5, "package"

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    .line 162
    .line 163
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    const-string p0, "launcher-pins"

    .line 167
    .line 168
    invoke-interface {p1, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catchall_0
    move-exception p0

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    throw p0
.end method
