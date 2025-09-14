.class public final Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final adjustedBrightness:I

.field public final modifier:I

.field public final synthetic this$0:Lcom/android/server/display/brightness/BrightnessReason;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/BrightnessReason;IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->this$0:Lcom/android/server/display/brightness/BrightnessReason;

    .line 6
    iput p2, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->modifier:I

    .line 8
    invoke-static {p3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->adjustedBrightness:I

    .line 14
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->this$0:Lcom/android/server/display/brightness/BrightnessReason;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 7
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->modifier:I

    .line 9
    if-eq v1, v0, :cond_1

    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq v1, v0, :cond_0

    .line 14
    sparse-switch v1, :sswitch_data_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "0x"

    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {v0, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :sswitch_0
    const-string/jumbo v0, "hdr_limit"

    .line 32
    goto :goto_0

    .line 33
    :sswitch_1
    const-string/jumbo v0, "freezing_brightness_mode"

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string/jumbo v0, "screen_curtain"

    .line 40
    goto :goto_0

    .line 41
    :sswitch_3
    const-string/jumbo v0, "cover_display_demo"

    .line 44
    goto :goto_0

    .line 45
    :sswitch_4
    const-string/jumbo v0, "restore_manual"

    .line 48
    goto :goto_0

    .line 49
    :sswitch_5
    const-string/jumbo v0, "force_dim"

    .line 52
    goto :goto_0

    .line 53
    :sswitch_6
    const-string/jumbo v0, "doze_maximum"

    .line 56
    goto :goto_0

    .line 57
    :sswitch_7
    const-string/jumbo v0, "curtain"

    .line 60
    goto :goto_0

    .line 61
    :sswitch_8
    const-string/jumbo v0, "outdoor"

    .line 64
    goto :goto_0

    .line 65
    :sswitch_9
    const-string/jumbo v0, "hbm_block"

    .line 68
    goto :goto_0

    .line 69
    :sswitch_a
    const-string/jumbo v0, "cover_limit"

    .line 72
    goto :goto_0

    .line 73
    :sswitch_b
    const-string v0, "ab_limit"

    .line 75
    goto :goto_0

    .line 76
    :sswitch_c
    const-string/jumbo v0, "mb_limit"

    .line 79
    goto :goto_0

    .line 80
    :sswitch_d
    const-string/jumbo v0, "scale_factor"

    .line 83
    goto :goto_0

    .line 84
    :sswitch_e
    const-string/jumbo v0, "throttled"

    .line 87
    goto :goto_0

    .line 88
    :sswitch_f
    const-string/jumbo v0, "hdr"

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const-string/jumbo v0, "low_pwr"

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const-string/jumbo v0, "dim"

    .line 99
    :goto_0
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->adjustedBrightness:I

    .line 101
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object p0

    .line 105
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 108
    move-result-object p0

    .line 109
    const-string v0, " -> %s[%d]"

    .line 111
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    nop

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_f
        0x8 -> :sswitch_e
        0x10 -> :sswitch_d
        0x20 -> :sswitch_c
        0x40 -> :sswitch_b
        0x80 -> :sswitch_a
        0x100 -> :sswitch_9
        0x200 -> :sswitch_8
        0x400 -> :sswitch_7
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_3
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch
.end method
