.class public Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mId:I

.field private final mPayload:[B


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->-$$Nest$smconvertToByteArray(Ljava/nio/ByteBuffer;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 15
    .line 16
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/InformationElementParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    .line 6
    .line 7
    iget v1, p0, Landroid/net/InformationElementParcelable;->id:I

    .line 8
    .line 9
    iget-object p0, p0, Landroid/net/InformationElementParcelable;->payload:[B

    .line 10
    .line 11
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, [B

    .line 16
    .line 17
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, v1, p0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;-><init>(ILjava/nio/ByteBuffer;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    .line 12
    .line 13
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 14
    .line 15
    iget v3, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 20
    .line 21
    iget-object p1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 22
    .line 23
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_0
    return v0
.end method

.method public getId()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 2
    .line 3
    return p0
.end method

.method public getPayload()Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 8
    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public toStableParcelable()Landroid/net/InformationElementParcelable;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/InformationElementParcelable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/InformationElementParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 7
    .line 8
    iput v1, v0, Landroid/net/InformationElementParcelable;->id:I

    .line 9
    .line 10
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, [B

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    iput-object p0, v0, Landroid/net/InformationElementParcelable;->payload:[B

    .line 23
    .line 24
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ID: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 19
    .line 20
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
