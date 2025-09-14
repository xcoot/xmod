.class public final Lorg/tukaani/xz/LZMA2Options;
.super Lorg/tukaani/xz/FilterOptions;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final presetToDictSize:[I


# instance fields
.field public dictSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/tukaani/xz/LZMA2Options;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/tukaani/xz/LZMA2Options;->presetToDictSize:[I

    .line 11
    .line 12
    return-void

    .line 13
    :array_0
    .array-data 4
        0x40000
        0x100000
        0x200000
        0x400000
        0x400000
        0x800000
        0x800000
        0x1000000
        0x2000000
        0x4000000
    .end array-data
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lorg/tukaani/xz/LZMA2InputStream;

    .line 2
    .line 3
    iget p0, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    .line 4
    .line 5
    invoke-direct {v0, p1, p0, p2}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
