.class public final Lco/nstant/in/cbor/encoder/ByteStringEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final encode(Lco/nstant/in/cbor/model/ByteString;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lco/nstant/in/cbor/model/ByteString;->bytes:[B

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    iget-boolean p1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 8
    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    .line 15
    if-eqz v0, :cond_3

    .line 17
    new-instance p1, Lco/nstant/in/cbor/model/ByteString;

    .line 19
    invoke-direct {p1, v0}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 22
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;->encode(Lco/nstant/in/cbor/model/ByteString;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 28
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    .line 30
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 32
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    array-length p1, v0

    .line 37
    int-to-long v2, p1

    .line 38
    invoke-virtual {p0, v1, v2, v3}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 41
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    .line 44
    :cond_3
    :goto_0
    return-void
.end method
