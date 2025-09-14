.class public final Lcom/android/server/net/watchlist/WatchlistConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;


# instance fields
.field public volatile mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field public volatile mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field public mIsSecureConfig:Z

.field public mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    const-string v2, "/data/misc/network_watchlist/network_watchlist.xml"

    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v1}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>(Ljava/io/File;)V

    .line 13
    sput-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 12
    return-void
.end method

.method public static parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x3

    .line 11
    if-ne v2, v0, :cond_0

    .line 13
    const-string/jumbo v2, "hash"

    .line 16
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 26
    move-result-object v4

    .line 27
    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    move-object v2, p2

    .line 31
    check-cast v2, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {p0, v3, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final getWatchlistConfigHash()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 13
    invoke-static {p0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "WatchlistConfig"

    .line 21
    const-string v2, "Unable to get watchlist config hash"

    .line 23
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    return-object v1
.end method

.method public final reloadConfig()V
    .locals 14

    .line 1
    const-string/jumbo v0, "watchlist-config"

    .line 4
    const-string v1, "WatchlistConfig"

    .line 6
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 17
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 19
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v6, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 45
    move-result-object v7

    .line 46
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 51
    move-result-object v8

    .line 52
    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 55
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x2

    .line 60
    invoke-interface {v7, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 66
    move-result v10

    .line 67
    const/4 v11, 0x3

    .line 68
    if-ne v10, v9, :cond_6

    .line 70
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 77
    move-result v12

    .line 78
    const/4 v13, 0x1

    .line 79
    sparse-switch v12, :sswitch_data_0

    .line 82
    goto :goto_1

    .line 83
    :sswitch_0
    const-string/jumbo v12, "crc32-ip"

    .line 86
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_1

    .line 92
    move v12, v13

    .line 93
    goto :goto_2

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto/16 :goto_3

    .line 97
    :sswitch_1
    const-string/jumbo v12, "sha256-ip"

    .line 100
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v12

    .line 104
    if-eqz v12, :cond_1

    .line 106
    move v12, v11

    .line 107
    goto :goto_2

    .line 108
    :sswitch_2
    const-string/jumbo v12, "sha256-domain"

    .line 111
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v12

    .line 115
    if-eqz v12, :cond_1

    .line 117
    move v12, v9

    .line 118
    goto :goto_2

    .line 119
    :sswitch_3
    const-string/jumbo v12, "crc32-domain"

    .line 122
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_1

    .line 128
    const/4 v12, 0x0

    .line 129
    goto :goto_2

    .line 130
    :cond_1
    :goto_1
    const/4 v12, -0x1

    .line 131
    :goto_2
    if-eqz v12, :cond_5

    .line 133
    if-eq v12, v13, :cond_4

    .line 135
    if-eq v12, v9, :cond_3

    .line 137
    if-eq v12, v11, :cond_2

    .line 139
    new-instance v10, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v11, "Unknown element: "

    .line 146
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v10

    .line 160
    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 166
    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v7, v10, v6}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 170
    goto :goto_0

    .line 171
    :cond_3
    invoke-static {v7, v10, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 174
    goto :goto_0

    .line 175
    :cond_4
    invoke-static {v7, v10, v5}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 178
    goto :goto_0

    .line 179
    :cond_5
    invoke-static {v7, v10, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 182
    goto :goto_0

    .line 183
    :cond_6
    invoke-interface {v7, v11, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 188
    new-instance v7, Lcom/android/server/net/watchlist/HarmfulCrcs;

    .line 190
    invoke-direct {v7, v3}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    .line 193
    new-instance v3, Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 195
    invoke-direct {v3, v4}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    .line 198
    invoke-direct {v0, v7, v3}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    .line 201
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 203
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 205
    new-instance v3, Lcom/android/server/net/watchlist/HarmfulCrcs;

    .line 207
    invoke-direct {v3, v5}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    .line 210
    new-instance v4, Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 212
    invoke-direct {v4, v6}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    .line 215
    invoke-direct {v0, v3, v4}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    .line 218
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 220
    const-string p0, "Reload watchlist done"

    .line 222
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    goto :goto_6

    .line 229
    :catch_0
    move-exception p0

    .line 230
    goto :goto_5

    .line 231
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    goto :goto_4

    .line 235
    :catchall_1
    move-exception v0

    .line 236
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 239
    :goto_4
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 240
    :goto_5
    const-string v0, "Failed parsing xml"

    .line 242
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :goto_6
    return-void

    .line 246
    nop

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x6f059362 -> :sswitch_3
        -0xe260d6 -> :sswitch_2
        0x31cafa8d -> :sswitch_1
        0x6670a201 -> :sswitch_0
    .end sparse-switch
.end method
