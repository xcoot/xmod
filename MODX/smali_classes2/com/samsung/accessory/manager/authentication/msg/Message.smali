.class public final Lcom/samsung/accessory/manager/authentication/msg/Message;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final apdu:[B

.field public final data:[B

.field public final inf:[B


# direct methods
.method public constructor <init>(BBBB)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 9
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    .line 10
    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 11
    aput-byte p1, v0, v2

    const/4 p1, 0x1

    .line 12
    aput-byte p2, v0, p1

    const/4 p1, 0x2

    .line 13
    aput-byte p3, v0, p1

    const/4 p1, 0x3

    .line 14
    aput-byte v2, v0, p1

    const/4 p1, 0x4

    .line 15
    aput-byte p4, v0, p1

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    .line 17
    array-length p1, v0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    if-eqz p0, :cond_0

    .line 19
    array-length p1, v0

    array-length p2, p0

    invoke-static {p0, v2, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    const/4 v2, 0x0

    .line 3
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    add-int/lit8 v0, v0, -0x2

    .line 4
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    .line 5
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x3

    .line 6
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    .line 7
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getApdu()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

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
    return-object p0
.end method

.method public final getData()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

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
    return-object p0
.end method
