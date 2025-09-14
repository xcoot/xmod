.class public final Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public randNum:[B


# virtual methods
.method public final getDataVerification()[B
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    .line 2
    .line 3
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [B

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x5

    .line 11
    add-int/2addr v0, v1

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-byte v2, v1, v2

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/16 v4, 0x76

    .line 21
    .line 22
    aput-byte v4, v1, v3

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    aput-byte v2, v1, v3

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    aput-byte v2, v1, v3

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    const/16 v4, 0x10

    .line 32
    .line 33
    aput-byte v4, v1, v3

    .line 34
    .line 35
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [B

    .line 40
    .line 41
    array-length v3, v1

    .line 42
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    array-length v1, v1

    .line 46
    array-length v3, p0

    .line 47
    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, [B

    .line 55
    .line 56
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, [B

    .line 61
    .line 62
    return-object p0
.end method
