.class public abstract Lcom/android/server/net/watchlist/ReportEncoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "ReportEncoder"

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string p0, "No watchlist hash"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v0

    .line 16
    :cond_0
    array-length v2, p0

    .line 17
    const/16 v3, 0x20

    .line 19
    if-eq v2, v3, :cond_1

    .line 21
    const-string p0, "Unexpected hash length"

    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 29
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 34
    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    const-wide v2, 0x10500000001L

    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 46
    const-wide v2, 0x10900000002L

    .line 51
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 58
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p0

    .line 66
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 87
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    move-result p1

    .line 97
    const-wide v3, 0x20b00000003L

    .line 102
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 105
    move-result-wide v3

    .line 106
    const-wide v5, 0x10900000001L

    .line 111
    invoke-virtual {v1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 114
    const-wide v5, 0x10800000002L

    .line 119
    invoke-virtual {v1, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 122
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 129
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method
