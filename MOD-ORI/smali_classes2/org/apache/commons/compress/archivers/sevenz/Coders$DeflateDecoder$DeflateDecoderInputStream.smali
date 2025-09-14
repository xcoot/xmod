.class public final Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;
.super Ljava/io/InputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public inflater:Ljava/util/zip/Inflater;

.field public inflaterInputStream:Ljava/util/zip/InflaterInputStream;


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final read()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p0

    return p0
.end method
