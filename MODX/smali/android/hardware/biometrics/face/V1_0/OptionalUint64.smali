.class public final Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public status:I

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 20
    iget v2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 22
    iget v3, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget-wide v2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 29
    iget-wide p0, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 31
    cmp-long p0, v2, p0

    .line 33
    if-eqz p0, :cond_4

    .line 35
    return v1

    .line 36
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p0

    .line 21
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x10

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 6
    move-result-object p1

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 15
    const-wide/16 v0, 0x8

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 23
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.status = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 11
    invoke-static {v1}, Landroid/hardware/biometrics/face/V1_0/Status;->toString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", .value = "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-wide v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 25
    const-string/jumbo p0, "}"

    .line 28
    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 3
    const/16 v1, 0x10

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 8
    iget v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 15
    const-wide/16 v1, 0x8

    .line 17
    iget-wide v3, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 25
    return-void
.end method
