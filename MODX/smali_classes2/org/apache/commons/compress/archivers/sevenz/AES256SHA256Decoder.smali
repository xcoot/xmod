.class public final Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;

    .line 2
    .line 3
    invoke-direct {p0, p5, p1, p6, p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLjava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
