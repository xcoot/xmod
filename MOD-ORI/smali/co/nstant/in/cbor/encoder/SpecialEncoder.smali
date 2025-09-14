.class public final Lco/nstant/in/cbor/encoder/SpecialEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

.field public final halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

.field public final singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    .line 10
    .line 11
    new-instance v0, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    .line 17
    .line 18
    new-instance v0, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    .line 24
    .line 25
    return-void
.end method
