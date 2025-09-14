.class public final Landroid/hardware/usb/V1_0/PortRole;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public role:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 7
    iput v0, p0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 9
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
    const-class v3, Landroid/hardware/usb/V1_0/PortRole;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/usb/V1_0/PortRole;

    .line 20
    iget v2, p0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 22
    iget v3, p1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget p0, p0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 29
    iget p1, p1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 31
    if-eq p0, p1, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 9
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.type = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v1, "DATA_ROLE"

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    const-string v1, "POWER_ROLE"

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_2

    .line 25
    const-string v1, "MODE"

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    const-string v3, "0x"

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .role = "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget p0, p0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 49
    const-string/jumbo v1, "}"

    .line 52
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 8
    iget v1, p0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 15
    const-wide/16 v1, 0x4

    .line 17
    iget p0, p0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 19
    invoke-virtual {v0, v1, v2, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 25
    return-void
.end method
