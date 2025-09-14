.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public data:Ljava/util/ArrayList;

.field public type:I

.field public uuid:Landroid/hardware/audio/common/V2_0/Uuid;

.field public vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 7
    new-instance v0, Landroid/hardware/audio/common/V2_0/Uuid;

    .line 9
    invoke-direct {v0}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    .line 12
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 14
    new-instance v0, Landroid/hardware/audio/common/V2_0/Uuid;

    .line 16
    invoke-direct {v0}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    .line 19
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 28
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
    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 20
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 22
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 29
    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 31
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_4

    .line 37
    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 40
    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 42
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_5

    .line 48
    return v1

    .line 49
    :cond_5
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 51
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 53
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_6

    .line 59
    return v1

    .line 60
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 9
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 19
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 29
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.type = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 11
    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/SoundModelType;->toString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", .uuid = "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", .vendorUuid = "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", .data = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo p0, "}"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 8
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 10
    const-wide/16 v1, 0x4

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/audio/common/V2_0/Uuid;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 15
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 17
    const-wide/16 v1, 0x14

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/audio/common/V2_0/Uuid;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 22
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v0

    .line 28
    const-wide/16 v1, 0x30

    .line 30
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 33
    const-wide/16 v1, 0x34

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 39
    new-instance v1, Landroid/os/HwBlob;

    .line 41
    invoke-direct {v1, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 44
    :goto_0
    if-ge v3, v0, :cond_0

    .line 46
    int-to-long v4, v3

    .line 47
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Byte;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 58
    move-result v2

    .line 59
    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-wide/16 v2, 0x28

    .line 67
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 70
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 3
    const/16 v1, 0x38

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    return-void
.end method
