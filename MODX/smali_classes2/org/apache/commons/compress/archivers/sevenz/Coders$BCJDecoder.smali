.class public final Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final opts:Lorg/tukaani/xz/FilterOptions;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/BCJOptions;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;->opts:Lorg/tukaani/xz/FilterOptions;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;->opts:Lorg/tukaani/xz/FilterOptions;

    .line 2
    .line 3
    sget-object p3, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lorg/tukaani/xz/FilterOptions;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p2, Ljava/io/IOException;

    .line 12
    .line 13
    const-string p3, "BCJ filter used in "

    .line 14
    .line 15
    const-string p4, " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z"

    .line 16
    .line 17
    invoke-static {p3, p1, p4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p2
.end method
