.class public final Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public data:Ljava/lang/Object;

.field public header:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v1, "{.header = "

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 16
    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", .data = "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 28
    check-cast p0, Landroid/os/HidlMemory;

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo p0, "}"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, "{.common = "

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 54
    check-cast v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .phrases = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 66
    check-cast p0, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo p0, "}"

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, "{.header = "

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 92
    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .data = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 104
    check-cast p0, Landroid/os/HidlMemory;

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo p0, "}"

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/HwParcel;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 3
    const/16 v1, 0x70

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 8
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 10
    check-cast v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 12
    iget-object v2, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 14
    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 16
    invoke-virtual {v2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;)V

    .line 19
    const-wide/16 v2, 0x38

    .line 21
    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 23
    check-cast v1, Landroid/os/HidlMemory;

    .line 25
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putHidlMemory(JLandroid/os/HidlMemory;)V

    .line 28
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 30
    check-cast v1, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v1

    .line 36
    const-wide/16 v2, 0x68

    .line 38
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 41
    const-wide/16 v2, 0x6c

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 47
    new-instance v2, Landroid/os/HwBlob;

    .line 49
    mul-int/lit8 v3, v1, 0x38

    .line 51
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 54
    :goto_0
    if-ge v4, v1, :cond_0

    .line 56
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 58
    check-cast v3, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    .line 66
    mul-int/lit8 v5, v4, 0x38

    .line 68
    int-to-long v5, v5

    .line 69
    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-wide/16 v3, 0x60

    .line 77
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 83
    return-void
.end method
