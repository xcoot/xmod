.class public final Lco/nstant/in/cbor/decoder/SpecialDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

.field public final halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

.field public final singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    .line 10
    .line 11
    new-instance v0, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    .line 17
    .line 18
    new-instance v0, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    .line 24
    .line 25
    return-void
.end method
