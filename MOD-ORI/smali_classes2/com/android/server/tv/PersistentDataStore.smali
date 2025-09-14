.class public final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public final mBlockedRatings:Ljava/util/List;

.field public mBlockedRatingsChanged:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mLoaded:Z

.field public mParentalControlsEnabled:Z

.field public mParentalControlsEnabledChanged:Z

.field public final mSaveRunnable:Lcom/android/server/tv/PersistentDataStore$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/tv/PersistentDataStore$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Lcom/android/server/tv/PersistentDataStore$1;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "User dir cannot be created: "

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_0
    new-instance p2, Landroid/util/AtomicFile;

    .line 61
    .line 62
    new-instance v0, Ljava/io/File;

    .line 63
    .line 64
    const-string/jumbo v1, "tv-input-manager-state.xml"

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo p1, "tv-input-state"

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "tv-input-manager-state"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "blocked-ratings"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :cond_1
    :goto_1
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string/jumbo v4, "rating"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    const-string/jumbo v3, "string"

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {v3}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 77
    .line 78
    const-string p1, "Missing string attribute on rating"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string/jumbo v3, "parental-controls"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    const-string v1, "enabled"

    .line 98
    .line 99
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    return-void
.end method

.method public final loadIfNeeded()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, v2}, Lcom/android/server/tv/PersistentDataStore;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v2

    .line 33
    :try_start_2
    const-string v3, "TvInputManagerService"

    .line 34
    .line 35
    const-string v4, "Failed to load tv input manager persistent store data."

    .line 36
    .line 37
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :catch_1
    :goto_2
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "tv-input-manager-state"

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    const-string v0, "blocked-ratings"

    .line 20
    .line 21
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/media/tv/TvContentRating;

    .line 44
    .line 45
    const-string/jumbo v4, "rating"

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v4, "string"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v3, "rating"

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const-string v0, "blocked-ratings"

    .line 72
    .line 73
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v0, "parental-controls"

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    .line 81
    .line 82
    const-string v0, "enabled"

    .line 83
    .line 84
    iget-boolean p0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 85
    .line 86
    invoke-interface {p1, v1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    .line 88
    .line 89
    const-string/jumbo p0, "parental-controls"

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    const-string/jumbo p0, "tv-input-manager-state"

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0
.end method
