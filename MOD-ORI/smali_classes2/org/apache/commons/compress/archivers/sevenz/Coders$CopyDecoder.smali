.class public final Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ONE_ZERO_BYTE:[B


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;->ONE_ZERO_BYTE:[B

    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    new-instance p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    new-instance p0, Ljava/util/zip/Inflater;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    .line 25
    .line 26
    new-instance p3, Ljava/io/SequenceInputStream;

    .line 27
    .line 28
    new-instance p4, Ljava/io/ByteArrayInputStream;

    .line 29
    .line 30
    sget-object p5, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;->ONE_ZERO_BYTE:[B

    .line 31
    .line 32
    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p3, p2, p4}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p3, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/io/InputStream;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p2, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    .line 47
    .line 48
    iput-object p0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 49
    .line 50
    :pswitch_2
    return-object p2

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
