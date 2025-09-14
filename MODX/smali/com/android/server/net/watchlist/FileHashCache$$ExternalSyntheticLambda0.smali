.class public final synthetic Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/net/watchlist/FileHashCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/watchlist/FileHashCache;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/watchlist/FileHashCache;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/watchlist/FileHashCache;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string v0, ","

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    .line 19
    new-instance v3, Ljava/io/FileWriter;

    .line 21
    sget-object v4, Lcom/android/server/net/watchlist/FileHashCache;->sPersistFileName:Ljava/lang/String;

    .line 23
    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 31
    check-cast p0, Ljava/util/HashMap;

    .line 33
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    .line 74
    iget-wide v4, v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    .line 76
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    .line 88
    iget-object v1, v1, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B

    .line 90
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "\n"

    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    move-object v1, v2

    .line 112
    goto :goto_3

    .line 113
    :catch_0
    move-exception p0

    .line 114
    move-object v1, v2

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    invoke-static {v2}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    goto :goto_3

    .line 122
    :catch_1
    move-exception p0

    .line 123
    :goto_1
    :try_start_2
    const-string v0, "FileHashCache"

    .line 125
    const-string v2, "Failed to save."

    .line 127
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    :goto_2
    return-void

    .line 134
    :goto_3
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 137
    throw p0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 140
    check-cast v0, Ljava/util/HashMap;

    .line 142
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 148
    new-instance v0, Ljava/io/File;

    .line 150
    sget-object v1, Lcom/android/server/net/watchlist/FileHashCache;->sPersistFileName:Ljava/lang/String;

    .line 152
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_1

    .line 161
    goto :goto_5

    .line 162
    :cond_1
    const/4 v1, 0x0

    .line 163
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    .line 165
    new-instance v3, Ljava/io/FileReader;

    .line 167
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 170
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UncheckedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 173
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    .line 176
    move-result-object v0

    .line 177
    new-instance v1, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;

    .line 179
    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/watchlist/FileHashCache;)V

    .line 182
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 185
    invoke-static {v2}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    goto :goto_5

    .line 189
    :catchall_2
    move-exception p0

    .line 190
    move-object v1, v2

    .line 191
    goto :goto_6

    .line 192
    :catch_2
    move-exception p0

    .line 193
    move-object v1, v2

    .line 194
    goto :goto_4

    .line 195
    :catchall_3
    move-exception p0

    .line 196
    goto :goto_6

    .line 197
    :catch_3
    move-exception p0

    .line 198
    :goto_4
    :try_start_5
    const-string v0, "FileHashCache"

    .line 200
    const-string v2, "Failed to read storage file"

    .line 202
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 205
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    :goto_5
    return-void

    .line 209
    :goto_6
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    throw p0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
