.class public final Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final encode(Lco/nstant/in/cbor/model/UnicodeString;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 3
    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 5
    iget-object p1, p1, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    .line 12
    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 16
    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encode(Lco/nstant/in/cbor/model/UnicodeString;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 25
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    .line 27
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 29
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    move-result-object p1

    .line 39
    array-length v0, p1

    .line 40
    int-to-long v2, v0

    .line 41
    invoke-virtual {p0, v1, v2, v3}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 44
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method
