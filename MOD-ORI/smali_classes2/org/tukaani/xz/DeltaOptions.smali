.class public final Lorg/tukaani/xz/DeltaOptions;
.super Lorg/tukaani/xz/FilterOptions;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public distance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/tukaani/xz/DeltaOptions;

    .line 2
    .line 3
    return-void
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
    .locals 0

    .line 1
    new-instance p2, Lorg/tukaani/xz/DeltaInputStream;

    .line 2
    .line 3
    iget p0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 4
    .line 5
    invoke-direct {p2, p1, p0}, Lorg/tukaani/xz/DeltaInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method
