.class public final Lcom/android/server/net/watchlist/WatchlistSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;


# instance fields
.field public final mPrivacySecretKey:[B

.field public final mXmlFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 8
    move-result-object v2

    .line 9
    const-string/jumbo v3, "watchlist_settings.xml"

    .line 12
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>(Ljava/io/File;)V

    .line 18
    sput-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 7
    new-instance v1, Landroid/util/AtomicFile;

    .line 9
    const-string/jumbo v2, "net-watchlist"

    .line 12
    invoke-direct {v1, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    iput-object v1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    .line 17
    const-string p1, "Failed parsing xml"

    .line 19
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x30

    .line 25
    const-string/jumbo v4, "network-watchlist-settings"

    .line 28
    const-string v5, "WatchlistSettings"

    .line 30
    const-string/jumbo v6, "secret-key"

    .line 33
    if-nez v2, :cond_0

    .line 35
    goto :goto_5

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 39
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 47
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 50
    move-result v7

    .line 51
    :cond_1
    :goto_0
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_4

    .line 57
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_1

    .line 67
    const/4 v8, 0x2

    .line 68
    invoke-interface {v2, v8, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 74
    move-result-object v8

    .line 75
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 78
    move-result-object v8

    .line 79
    const/4 v9, 0x3

    .line 80
    invoke-interface {v2, v9, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz v8, :cond_2

    .line 85
    array-length v9, v8

    .line 86
    if-eq v9, v3, :cond_3

    .line 88
    :cond_2
    const-string v8, "Unable to parse secret key"

    .line 90
    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-object v8, v0

    .line 94
    :cond_3
    iput-object v8, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v2

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const-string v2, "Reload watchlist settings done"

    .line 101
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v1, :cond_6

    .line 106
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    goto :goto_5

    .line 110
    :catch_0
    move-exception v1

    .line 111
    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    .line 113
    goto :goto_4

    .line 114
    :goto_1
    if-eqz v1, :cond_5

    .line 116
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception v1

    .line 121
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 124
    :cond_5
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 125
    :goto_3
    invoke-static {v5, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    goto :goto_5

    .line 129
    :goto_4
    invoke-static {v5, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 134
    if-nez p1, :cond_7

    .line 136
    new-array p1, v3, [B

    .line 138
    new-instance v1, Ljava/security/SecureRandom;

    .line 140
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 143
    invoke-virtual {v1, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 146
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 148
    :try_start_5
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    .line 150
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 153
    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 154
    :try_start_6
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 157
    move-result-object v1

    .line 158
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 160
    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 163
    invoke-interface {v1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    invoke-interface {v1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 171
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    invoke-interface {v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    invoke-interface {v1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    invoke-interface {v1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 187
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    .line 189
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 192
    goto :goto_6

    .line 193
    :catch_2
    move-exception v0

    .line 194
    const-string v1, "Failed to write display settings, restoring backup."

    .line 196
    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    .line 201
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 204
    goto :goto_6

    .line 205
    :catch_3
    move-exception p0

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    .line 208
    const-string v0, "Failed to write display settings: "

    .line 210
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object p0

    .line 220
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_7
    :goto_6
    return-void
.end method
