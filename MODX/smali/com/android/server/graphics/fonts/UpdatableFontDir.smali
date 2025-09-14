.class public final Lcom/android/server/graphics/fonts/UpdatableFontDir;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mConfigSupplier:Ljava/util/function/Function;

.field public mConfigVersion:I

.field public final mCurrentTimeSupplier:Ljava/util/function/Supplier;

.field public final mFilesDir:Ljava/io/File;

.field public final mFontFileInfoMap:Landroid/util/ArrayMap;

.field public final mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

.field public mLastModifiedMillis:J

.field public final mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/OtfFontFileParser;Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Landroid/util/ArrayMap;

    .line 16
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 21
    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 23
    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    .line 25
    iput-object p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    .line 27
    new-instance p1, Landroid/util/AtomicFile;

    .line 29
    invoke-direct {p1, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 32
    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 34
    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    .line 36
    iput-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    .line 38
    return-void
.end method

.method public static deleteAllFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 1
    const-string v0, "Failed to delete "

    .line 3
    const-string v1, "UpdatableFontDir"

    .line 5
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    .line 7
    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 10
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    goto :goto_1

    .line 33
    :catchall_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_1
    return-void
.end method

.method public static getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    .line 7
    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/text/FontConfig$FontFamily;

    .line 24
    move v4, v1

    .line 25
    :goto_1
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    .line 28
    move-result-object v5

    .line 29
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 32
    move-result v5

    .line 33
    if-ge v4, v5, :cond_1

    .line 35
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Landroid/text/FontConfig$Font;

    .line 45
    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_0

    .line 55
    move-object v0, v5

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v2, v1

    .line 64
    :goto_3
    invoke-virtual {p1}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 71
    move-result v3

    .line 72
    if-ge v2, v3, :cond_6

    .line 74
    invoke-virtual {p1}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/text/FontConfig$NamedFamilyList;

    .line 84
    move v4, v1

    .line 85
    :goto_4
    invoke-virtual {v3}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 92
    move-result v5

    .line 93
    if-ge v4, v5, :cond_5

    .line 95
    invoke-virtual {v3}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    .line 98
    move-result-object v5

    .line 99
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Landroid/text/FontConfig$FontFamily;

    .line 105
    move v6, v1

    .line 106
    :goto_5
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    .line 109
    move-result-object v7

    .line 110
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 113
    move-result v7

    .line 114
    if-ge v6, v7, :cond_4

    .line 116
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    .line 119
    move-result-object v7

    .line 120
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Landroid/text/FontConfig$Font;

    .line 126
    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_3

    .line 136
    move-object v0, v7

    .line 137
    goto :goto_6

    .line 138
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 140
    goto :goto_5

    .line 141
    :cond_4
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    return-object v0
.end method


# virtual methods
.method public final addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 3
    iget-object v1, p1, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    iget-wide v4, p1, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mRevision:J

    .line 15
    if-nez v0, :cond_4

    .line 17
    invoke-static {v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    .line 20
    move-result-object p2

    .line 21
    const-wide/16 v6, -0x1

    .line 23
    if-nez p2, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    .line 29
    move-result-object v8

    .line 30
    if-eqz v8, :cond_1

    .line 32
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    .line 40
    move-result-object p2

    .line 41
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    .line 51
    move-result-wide v8

    .line 52
    cmp-long p2, v8, v6

    .line 54
    if-nez p2, :cond_3

    .line 56
    const-string p2, "UpdatableFontDir"

    .line 58
    const-string v6, "Invalid preinstalled font file"

    .line 60
    invoke-static {p2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3
    move-wide v6, v8

    .line 64
    :goto_1
    cmp-long p2, v6, v4

    .line 66
    if-gtz p2, :cond_5

    .line 68
    :goto_2
    move v2, v3

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    iget-wide v6, v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mRevision:J

    .line 72
    cmp-long p2, v6, v4

    .line 74
    if-gtz p2, :cond_5

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    .line 79
    if-eqz p3, :cond_6

    .line 81
    if-eqz v0, :cond_6

    .line 83
    iget-object p2, v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    .line 85
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 88
    move-result-object p2

    .line 89
    invoke-static {p2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 92
    :cond_6
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 94
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    goto :goto_4

    .line 98
    :cond_7
    if-eqz p3, :cond_8

    .line 100
    iget-object p0, p1, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 109
    :cond_8
    :goto_4
    return v2
.end method

.method public final getFontRevision(Ljava/io/File;)J
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 p1, 0x0

    .line 11
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->getRevision(Ljava/nio/ByteBuffer;I)J

    .line 14
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 18
    return-wide v0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 23
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string p1, "UpdatableFontDir"

    .line 27
    const-string v0, "Failed to read font file"

    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    const-wide/16 p0, -0x1

    .line 34
    return-wide p0
.end method

.method public final getPostScriptMap()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 23
    iget-object v3, v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    .line 25
    iget-object v2, v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    .line 27
    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public final getSystemFontConfig()Landroid/text/FontConfig;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/text/FontConfig;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 19
    new-instance v5, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v3

    .line 35
    add-int/2addr v3, v2

    .line 36
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v3

    .line 51
    if-ge v2, v3, :cond_1

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 59
    invoke-virtual {p0, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Landroid/text/FontConfig;

    .line 73
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    .line 84
    move-result-object v6

    .line 85
    iget-wide v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 87
    iget v9, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 89
    move-object v2, v1

    .line 90
    invoke-direct/range {v2 .. v9}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 93
    return-object v1
.end method

.method public final installFontFile(Ljava/io/FileDescriptor;[B)V
    .locals 8

    .line 1
    const-string v0, "Failed to read PostScript name from font file"

    .line 3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    .line 5
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    .line 7
    iget-object v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 9
    new-instance v4, Ljava/security/SecureRandom;

    .line 11
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 14
    const/16 v5, 0x10

    .line 16
    new-array v5, v5, [B

    .line 18
    :cond_0
    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v7, "~~"

    .line 26
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    const/16 v7, 0xa

    .line 31
    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v6

    .line 42
    new-instance v7, Ljava/io/File;

    .line 44
    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_0

    .line 53
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 56
    move-result v3

    .line 57
    const/4 v4, -0x1

    .line 58
    if-eqz v3, :cond_4

    .line 60
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    const/16 v5, 0x1c9

    .line 66
    invoke-static {v3, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_6

    .line 69
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 71
    const-string/jumbo v5, "font.ttf"

    .line 74
    invoke-direct {v3, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 79
    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 85
    move-result-object v6

    .line 86
    invoke-static {p1, v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 89
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    const/4 p1, -0x3

    .line 103
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-static {v3}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->buildFontFileName(Ljava/io/File;)Ljava/lang/String;

    .line 109
    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    if-eqz v1, :cond_3

    .line 112
    :try_start_7
    new-instance v0, Ljava/io/File;

    .line 114
    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 120
    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 121
    if-eqz v1, :cond_2

    .line 123
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    const/16 v2, 0x1a4

    .line 129
    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 132
    :try_start_9
    new-instance v1, Ljava/io/File;

    .line 134
    const-string/jumbo v2, "font.fsv_sig"

    .line 137
    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 140
    :try_start_a
    new-instance v2, Ljava/io/FileOutputStream;

    .line 142
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 145
    :try_start_b
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 148
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 151
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    const/16 v2, 0x180

    .line 157
    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 160
    :try_start_e
    invoke-virtual {p0, v0, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 163
    move-result-object p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 164
    :try_start_f
    iget-object v0, p2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    .line 166
    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->tryToCreateTypeface(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 169
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 172
    move-result-object p1

    .line 173
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_1

    .line 180
    return-void

    .line 181
    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 183
    const-string p1, "Downgrading font file is forbidden."

    .line 185
    const/4 p2, -0x5

    .line 186
    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 189
    throw p0

    .line 190
    :catchall_0
    move-exception p0

    .line 191
    goto :goto_4

    .line 192
    :catchall_1
    move-exception p0

    .line 193
    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 195
    const-string v0, "Failed to create Typeface from file"

    .line 197
    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    throw p2

    .line 201
    :catch_0
    move-exception p0

    .line 202
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 204
    const-string p2, "Failed to change the signature file mode to 600"

    .line 206
    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 210
    :catch_1
    move-exception p0

    .line 211
    goto :goto_1

    .line 212
    :catchall_2
    move-exception p0

    .line 213
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 216
    goto :goto_0

    .line 217
    :catchall_3
    move-exception p1

    .line 218
    :try_start_12
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 221
    :goto_0
    throw p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 222
    :goto_1
    :try_start_13
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 224
    const-string p2, "Failed to write font signature file to storage."

    .line 226
    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    throw p1

    .line 230
    :catch_2
    move-exception p0

    .line 231
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 233
    const-string p2, "Failed to change font file mode to 644"

    .line 235
    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    throw p1

    .line 239
    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 241
    const-string p1, "Failed to move verified font file."

    .line 243
    invoke-direct {p0, v4, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 246
    throw p0

    .line 247
    :cond_3
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 249
    const/4 p1, -0x4

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 253
    throw p0

    .line 254
    :catch_3
    move-exception p0

    .line 255
    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 257
    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    throw p2

    .line 261
    :catch_4
    move-exception p0

    .line 262
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 264
    const-string p2, "Failed to setup fs-verity."

    .line 266
    const/4 v0, -0x2

    .line 267
    invoke-direct {p1, v0, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 271
    :catch_5
    move-exception p0

    .line 272
    goto :goto_3

    .line 273
    :catchall_4
    move-exception p0

    .line 274
    :try_start_14
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 277
    goto :goto_2

    .line 278
    :catchall_5
    move-exception p1

    .line 279
    :try_start_15
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 282
    :goto_2
    throw p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 283
    :goto_3
    :try_start_16
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 285
    const-string p2, "Failed to write font file to storage."

    .line 287
    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    throw p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 291
    :goto_4
    invoke-static {v7}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 294
    throw p0

    .line 295
    :catch_6
    move-exception p0

    .line 296
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 298
    const-string p2, "Failed to change mode to 711"

    .line 300
    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    throw p1

    .line 304
    :cond_4
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 306
    const-string p1, "Failed to create font directory."

    .line 308
    invoke-direct {p0, v4, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 311
    throw p0
.end method

.method public final loadFontFileMap()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "UpdatableFontDir"

    .line 5
    const-string v0, "Could not read: "

    .line 7
    iget-object v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 12
    const-wide/16 v3, 0x0

    .line 14
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 16
    const/4 v5, 0x1

    .line 17
    iput v5, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 19
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    .line 22
    move-result-object v6

    .line 23
    iget-wide v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 25
    iput-wide v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 27
    iget-object v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 29
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 32
    move-result-object v7

    .line 33
    if-nez v7, :cond_1

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 57
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 59
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 61
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 64
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 70
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 72
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 75
    :cond_0
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_8

    .line 79
    :cond_1
    :try_start_1
    array-length v0, v7

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    move v10, v8

    .line 83
    :goto_0
    if-ge v10, v0, :cond_f

    .line 85
    aget-object v11, v7, v10

    .line 87
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 90
    move-result-object v12

    .line 91
    const-string/jumbo v13, "~~"

    .line 94
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    move-result v12

    .line 98
    if-nez v12, :cond_3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v5, "Unexpected dir found: "

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 122
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 125
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 127
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 129
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 132
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 138
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 140
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 143
    :cond_2
    return-void

    .line 144
    :cond_3
    :try_start_2
    iget-object v12, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    .line 146
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 149
    move-result-object v13

    .line 150
    check-cast v12, Landroid/util/ArraySet;

    .line 152
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 155
    move-result v12

    .line 156
    if-nez v12, :cond_4

    .line 158
    new-instance v12, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v13, "Deleting obsolete dir: "

    .line 165
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v12

    .line 175
    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {v11}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 181
    goto/16 :goto_3

    .line 183
    :cond_4
    new-instance v12, Ljava/io/File;

    .line 185
    const-string/jumbo v13, "font.fsv_sig"

    .line 188
    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 194
    move-result v13

    .line 195
    if-nez v13, :cond_7

    .line 197
    const-string v12, "The signature file is missing."

    .line 199
    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 205
    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    if-eqz v12, :cond_6

    .line 208
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 210
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 213
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 215
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 217
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 220
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_5

    .line 226
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 228
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 231
    :cond_5
    return-void

    .line 232
    :cond_6
    :try_start_3
    invoke-static {v11}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    goto :goto_3

    .line 236
    :cond_7
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 239
    move-result-object v13

    .line 240
    new-array v14, v8, [Ljava/lang/String;

    .line 242
    invoke-static {v13, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 245
    move-result-object v13

    .line 246
    invoke-static {v13}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 249
    move-result-object v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 253
    move-result-object v14

    .line 254
    if-eqz v14, :cond_c

    .line 256
    array-length v15, v14

    .line 257
    const/4 v3, 0x2

    .line 258
    if-eq v15, v3, :cond_8

    .line 260
    goto :goto_4

    .line 261
    :cond_8
    aget-object v3, v14, v8

    .line 263
    invoke-virtual {v3, v12}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_9

    .line 269
    aget-object v3, v14, v5

    .line 271
    goto :goto_1

    .line 272
    :cond_9
    aget-object v3, v14, v8

    .line 274
    :goto_1
    invoke-virtual {v1, v3, v13}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 277
    move-result-object v3

    .line 278
    if-nez v9, :cond_b

    .line 280
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_a

    .line 286
    iget-object v4, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 291
    move-result-object v9

    .line 292
    invoke-interface {v4, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    move-result-object v4

    .line 296
    move-object v9, v4

    .line 297
    check-cast v9, Landroid/text/FontConfig;

    .line 299
    goto :goto_2

    .line 300
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 303
    move-result-object v9

    .line 304
    :cond_b
    :goto_2
    invoke-virtual {v1, v3, v9, v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    .line 307
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 309
    const-wide/16 v3, 0x0

    .line 311
    goto/16 :goto_0

    .line 313
    :cond_c
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const-string v3, "Unexpected files in dir: "

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v0

    .line 330
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 335
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 338
    const-wide/16 v2, 0x0

    .line 340
    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 342
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 344
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 347
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_d

    .line 353
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 355
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 358
    :cond_d
    return-void

    .line 359
    :catch_0
    :try_start_6
    const-string v0, "Failed to read signature file."

    .line 361
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 364
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 366
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 369
    const-wide/16 v2, 0x0

    .line 371
    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 373
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 375
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 378
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_e

    .line 384
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 386
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 389
    :cond_e
    return-void

    .line 390
    :cond_f
    :try_start_7
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_15

    .line 396
    move v0, v8

    .line 397
    :goto_5
    iget-object v3, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 399
    check-cast v3, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 404
    move-result v3

    .line 405
    if-ge v0, v3, :cond_15

    .line 407
    iget-object v3, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 409
    check-cast v3, Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 414
    move-result-object v3

    .line 415
    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 417
    move v4, v8

    .line 418
    :goto_6
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    .line 421
    move-result-object v5

    .line 422
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 425
    move-result v5

    .line 426
    if-ge v4, v5, :cond_14

    .line 428
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    .line 431
    move-result-object v5

    .line 432
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    move-result-object v5

    .line 436
    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 438
    iget-object v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 440
    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    .line 443
    move-result-object v10

    .line 444
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 447
    move-result v7

    .line 448
    if-eqz v7, :cond_10

    .line 450
    goto :goto_7

    .line 451
    :cond_10
    if-nez v9, :cond_11

    .line 453
    iget-object v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    .line 455
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 458
    move-result-object v9

    .line 459
    invoke-interface {v7, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    move-result-object v7

    .line 463
    move-object v9, v7

    .line 464
    check-cast v9, Landroid/text/FontConfig;

    .line 466
    :cond_11
    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    .line 469
    move-result-object v7

    .line 470
    invoke-static {v7, v9}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    .line 473
    move-result-object v7

    .line 474
    if-eqz v7, :cond_12

    .line 476
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 478
    goto :goto_6

    .line 479
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 481
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    const-string v4, "Unknown font that has PostScript name "

    .line 486
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v4, " is requested in FontFamily "

    .line 498
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    .line 504
    move-result-object v3

    .line 505
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    move-result-object v0

    .line 512
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 515
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 517
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 520
    const-wide/16 v2, 0x0

    .line 522
    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 524
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 526
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 529
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_13

    .line 535
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 537
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 540
    :cond_13
    return-void

    .line 541
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 543
    goto/16 :goto_5

    .line 545
    :goto_8
    :try_start_8
    const-string v3, "Failed to load font mappings."

    .line 547
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 550
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 552
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 555
    const-wide/16 v2, 0x0

    .line 557
    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 559
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 561
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 564
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_15

    .line 570
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 572
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 575
    :cond_15
    return-void

    .line 576
    :catchall_1
    move-exception v0

    .line 577
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 579
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 582
    const-wide/16 v2, 0x0

    .line 584
    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 586
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 588
    invoke-static {v2}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 591
    invoke-static {}, Lcom/android/text/flags/Flags;->fixFontUpdateFailure()Z

    .line 594
    move-result v2

    .line 595
    if-eqz v2, :cond_16

    .line 597
    iget-object v1, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 599
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 602
    :cond_16
    throw v0
.end method

.method public final readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    .line 3
    invoke-direct {v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 8
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-static {p0, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    if-eqz p0, :cond_1

    .line 17
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    if-eqz p0, :cond_0

    .line 24
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 32
    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 33
    :catch_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public final resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v4

    .line 20
    if-ge v3, v4, :cond_1

    .line 22
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 28
    move-object/from16 v5, p0

    .line 30
    iget-object v6, v5, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 42
    if-nez v6, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "Failed to lookup font file that has "

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    const-string v1, "UpdatableFontDir"

    .line 64
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 68
    return-object v0

    .line 69
    :cond_0
    new-instance v15, Landroid/text/FontConfig$Font;

    .line 71
    iget-object v7, v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    .line 73
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    .line 80
    move-result v11

    .line 81
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    .line 84
    move-result-object v12

    .line 85
    const/4 v13, 0x0

    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    iget-object v9, v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    .line 90
    move-object v6, v15

    .line 91
    invoke-direct/range {v6 .. v14}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Landroid/text/FontConfig$FontFamily;

    .line 102
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 105
    move-result-object v3

    .line 106
    invoke-direct {v0, v1, v3, v2}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    .line 109
    new-instance v1, Landroid/text/FontConfig$NamedFamilyList;

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-direct {v1, v0, v2}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 122
    return-object v1
.end method

.method public final update(Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 24
    if-eq v3, v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    .line 63
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 65
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    .line 71
    move-result-object v1

    .line 72
    new-instance v3, Ljava/util/HashMap;

    .line 74
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 77
    const/4 v4, 0x0

    .line 78
    :goto_1
    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 80
    check-cast v5, Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v5

    .line 86
    if-ge v4, v5, :cond_3

    .line 88
    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 90
    check-cast v5, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 98
    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 110
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p1

    .line 114
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_6

    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 126
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_5

    .line 132
    if-eq v6, v2, :cond_4

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    goto :goto_2

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    goto/16 :goto_5

    .line 150
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p0, v6, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->installFontFile(Ljava/io/FileDescriptor;[B)V

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object p1

    .line 174
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_8

    .line 180
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_7

    .line 192
    goto :goto_3

    .line 193
    :cond_7
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 195
    const-string v1, "Required fonts are not available"

    .line 197
    const/16 v2, -0x9

    .line 199
    invoke-direct {p1, v2, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 202
    throw p1

    .line 203
    :cond_8
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    .line 205
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Ljava/lang/Long;

    .line 211
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 214
    move-result-wide v6

    .line 215
    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 217
    new-instance p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    .line 219
    invoke-direct {p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 222
    iget-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 224
    iput-wide v6, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 226
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 228
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 231
    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 235
    move-result-object v1

    .line 236
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_9

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 248
    iget-object v7, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    .line 250
    iget-object v6, v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    .line 252
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 259
    move-result-object v6

    .line 260
    check-cast v7, Landroid/util/ArraySet;

    .line 262
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 265
    goto :goto_4

    .line 266
    :cond_9
    iget-object v1, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 268
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 271
    move-result-object v3

    .line 272
    check-cast v1, Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    const/4 v1, 0x0

    .line 278
    :try_start_1
    iget-object v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 280
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 283
    move-result-object v1

    .line 284
    invoke-static {v1, p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 287
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 289
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    iget p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 294
    add-int/2addr p1, v2

    .line 295
    iput p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 297
    return-void

    .line 298
    :catch_0
    move-exception p1

    .line 299
    if-eqz v1, :cond_a

    .line 301
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 303
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 306
    :cond_a
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 308
    const-string v2, "Failed to write config XML."

    .line 310
    const/4 v3, -0x6

    .line 311
    invoke-direct {v1, v3, v2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :goto_5
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 317
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 320
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 322
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 325
    iput-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 327
    throw p1
.end method

.method public final validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "FontManagerService"

    .line 16
    if-eqz v2, :cond_2

    .line 18
    iget-object v0, v1, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;->mDerCertPaths:[Ljava/lang/String;

    .line 20
    array-length v1, v0

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-ge v5, v1, :cond_3

    .line 25
    aget-object v6, v0, v5

    .line 27
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 29
    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :try_start_1
    invoke-static {p2, v2, v7}, Lcom/android/internal/security/VerityUtils;->verifyPkcs7DetachedSignature([B[BLjava/io/InputStream;)Z

    .line 35
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    if-eqz v8, :cond_1

    .line 38
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    :try_start_3
    iget-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    .line 49
    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 50
    :try_start_4
    invoke-static {p2, v4}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    .line 53
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    :try_start_5
    invoke-static {p2}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    .line 60
    move-result-wide v1

    .line 61
    const-wide/16 v3, -0x1

    .line 63
    cmp-long p0, v1, v3

    .line 65
    if-eqz p0, :cond_0

    .line 67
    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 69
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 72
    return-object p0

    .line 73
    :cond_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 75
    const-string p2, "Font validation failed. Could not read font revision: "

    .line 77
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    const/4 p2, -0x3

    .line 82
    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_6
    invoke-static {p2}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 90
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 91
    :catch_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 93
    const-string p2, "Font validation failed. Could not read PostScript name name: "

    .line 95
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    const/4 p2, -0x4

    .line 100
    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 103
    throw p0

    .line 104
    :cond_1
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v8

    .line 109
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 112
    goto :goto_1

    .line 113
    :catchall_2
    move-exception v7

    .line 114
    :try_start_9
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 117
    :goto_1
    throw v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 118
    :catch_1
    const-string v7, "Failed to read certificate file: "

    .line 120
    invoke-static {v7, v6, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    const-string p0, "Failed to get fs-verity digest for "

    .line 128
    invoke-static {p0, v0, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_3
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 133
    const-string p2, "Font validation failed. Fs-verity is not enabled: "

    .line 135
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    const/4 p2, -0x2

    .line 140
    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 143
    throw p0
.end method
