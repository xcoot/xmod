.class public final Lcom/android/internal/util/jobs/BitUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static bitAt(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 3
    shl-long/2addr v0, p0

    .line 4
    return-wide v0
.end method

.method public static bytesToBEInt([B)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    .line 4
    invoke-static {v0}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    .line 7
    move-result v0

    .line 8
    shl-int/lit8 v0, v0, 0x18

    .line 10
    const/4 v1, 0x1

    .line 11
    aget-byte v1, p0, v1

    .line 13
    invoke-static {v1}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    .line 16
    move-result v1

    .line 17
    shl-int/lit8 v1, v1, 0x10

    .line 19
    add-int/2addr v0, v1

    .line 20
    const/4 v1, 0x2

    .line 21
    aget-byte v1, p0, v1

    .line 23
    invoke-static {v1}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    .line 26
    move-result v1

    .line 27
    shl-int/lit8 v1, v1, 0x8

    .line 29
    add-int/2addr v0, v1

    .line 30
    const/4 v1, 0x3

    .line 31
    aget-byte p0, p0, v1

    .line 33
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    .line 36
    move-result p0

    .line 37
    add-int/2addr p0, v0

    .line 38
    return p0
.end method

.method public static bytesToLEInt([B)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->bytesToBEInt([B)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-eqz p0, :cond_1

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    shl-int v2, v3, v2

    .line 16
    not-int v3, v2

    .line 17
    and-int/2addr p0, v3

    .line 18
    if-lez v1, :cond_0

    .line 20
    const-string v3, ", "

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p0, "["

    .line 39
    const-string p1, "]"

    .line 41
    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static flagsUpTo(I)I
    .locals 1

    .line 1
    if-gtz p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    shr-int/lit8 v0, p0, 0x1

    .line 7
    invoke-static {v0}, Lcom/android/internal/util/jobs/BitUtils;->flagsUpTo(I)I

    .line 10
    move-result v0

    .line 11
    or-int/2addr p0, v0

    .line 12
    :goto_0
    return p0
.end method

.method public static flagsWithin(II)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/jobs/BitUtils;->flagsUpTo(I)I

    .line 4
    move-result p1

    .line 5
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->flagsUpTo(I)I

    .line 8
    move-result v0

    .line 9
    not-int v0, v0

    .line 10
    and-int/2addr p1, v0

    .line 11
    or-int/2addr p0, p1

    .line 12
    return p0
.end method

.method public static getUint16(Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint16(S)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getUint32(Ljava/nio/ByteBuffer;I)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint32(I)J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static getUint8(Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/android/internal/util/jobs/BitUtils;->uint8(B)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static isBitSet(JI)Z
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/android/internal/util/jobs/BitUtils;->bitAt(I)J

    .line 4
    move-result-wide v0

    .line 5
    and-long/2addr p0, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    cmp-long p0, p0, v0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static maskedEquals(BBB)Z
    .locals 0

    .line 1
    and-int/2addr p0, p2

    and-int/2addr p1, p2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maskedEquals(JJJ)Z
    .locals 0

    .line 2
    and-long/2addr p0, p4

    and-long/2addr p2, p4

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 7

    if-nez p2, :cond_0

    .line 8
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 10
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/jobs/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 13
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/jobs/BitUtils;->maskedEquals(JJJ)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maskedEquals([B[B[B)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const-string v3, "Inputs must be of same size"

    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p2, :cond_2

    .line 4
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 5
    :cond_2
    array-length v2, p0

    array-length v3, p2

    if-ne v2, v3, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    const-string v3, "Mask must be of same size as inputs"

    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v2, v0

    .line 6
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 7
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/jobs/BitUtils;->maskedEquals(BBB)Z

    move-result v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    :goto_3
    if-ne p0, p1, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method public static packBits([I)J
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v3, v0, :cond_0

    .line 7
    aget v4, p0, v3

    .line 9
    const-wide/16 v5, 0x1

    .line 11
    shl-long v4, v5, v4

    .line 13
    or-long/2addr v1, v4

    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-wide v1
.end method

.method public static put(Ljava/nio/ByteBuffer;I[B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    return-void
.end method

.method public static toBytes(J)[B
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static uint16(BB)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static uint16(S)I
    .locals 1

    .line 2
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static uint32(I)J
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide v2, 0xffffffffL

    .line 7
    and-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public static uint8(B)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 3
    return p0
.end method

.method public static unpackBits(J)[I
    .locals 7

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const-wide/16 v3, 0x0

    .line 11
    cmp-long v3, p0, v3

    .line 13
    if-eqz v3, :cond_1

    .line 15
    const-wide/16 v3, 0x1

    .line 17
    and-long v5, p0, v3

    .line 19
    cmp-long v3, v5, v3

    .line 21
    if-nez v3, :cond_0

    .line 23
    add-int/lit8 v3, v1, 0x1

    .line 25
    aput v2, v0, v1

    .line 27
    move v1, v3

    .line 28
    :cond_0
    const/4 v3, 0x1

    .line 29
    ushr-long/2addr p0, v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method
