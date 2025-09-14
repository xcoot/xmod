.class public abstract Lcom/android/server/integrity/parser/BinaryFileOperations;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-char p1, p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_1
    add-int/lit8 v1, p1, -0x1

    .line 34
    .line 35
    if-lez p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    and-int/lit16 p1, p1, 0xff

    .line 42
    .line 43
    int-to-byte p1, p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move p1, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
