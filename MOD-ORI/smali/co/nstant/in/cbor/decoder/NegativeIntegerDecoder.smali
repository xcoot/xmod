.class public final Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MINUS_ONE:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->MINUS_ONE:Ljava/math/BigInteger;

    .line 8
    .line 9
    return-void
.end method
