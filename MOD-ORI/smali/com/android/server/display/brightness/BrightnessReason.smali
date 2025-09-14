.class public final Lcom/android/server/display/brightness/BrightnessReason;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final changes:Ljava/util/List;

.field public mModifier:I

.field public mReason:I

.field public startBrightness:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string/jumbo p0, "last_target"

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_1
    const-string/jumbo p0, "doze_initial"

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string/jumbo p0, "doze_manual"

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_3
    const-string/jumbo p0, "offload"

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_4
    const-string/jumbo p0, "follower"

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_5
    const-string/jumbo p0, "screen_off_brightness_sensor"

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_6
    const-string/jumbo p0, "boost"

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_7
    const-string/jumbo p0, "temporary"

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_8
    const-string/jumbo p0, "override"

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_9
    const-string/jumbo p0, "screen_off"

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_a
    const-string p0, "automatic"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_b
    const-string/jumbo p0, "doze_default"

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_c
    const-string/jumbo p0, "doze"

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_d
    const-string/jumbo p0, "manual"

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addModifier(FI)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 2
    .line 3
    or-int/2addr v0, p2

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;

    .line 10
    .line 11
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;-><init>(Lcom/android/server/display/brightness/BrightnessReason;IF)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final changesToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "[%d]"

    .line 26
    .line 27
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    .line 35
    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    .line 45
    .line 46
    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/BrightnessReason$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 49
    .line 50
    .line 51
    check-cast p0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/BrightnessReason;

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 18
    .line 19
    if-ne p1, p0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method public final getReason()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 2
    .line 3
    return p0
.end method

.method public final hasModifier(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final isStartBrightnessChanged(Lcom/android/server/display/brightness/BrightnessReason;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    .line 4
    .line 5
    if-eq p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final set(Lcom/android/server/display/brightness/BrightnessReason;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 7
    .line 8
    :goto_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    move v2, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget v2, p1, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    .line 13
    .line 14
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(II)V

    .line 15
    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 21
    .line 22
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setModifier(I)V
    .locals 1

    .line 1
    const/high16 v0, -0x40000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v0, "brightness modifier out of bounds: 0x"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "BrightnessReason"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setReason(FI)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(II)V

    return-void
.end method

.method public final setReason(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xe

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 3
    iput p2, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    .line 4
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 5
    :cond_1
    :goto_0
    const-string/jumbo p0, "brightness reason out of bounds: "

    const-string p2, "BrightnessReason"

    .line 6
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 5
    const-string v1, " temp_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 6
    const-string p1, " auto_adj"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 8
    const-string p1, " low_pwr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 10
    const-string p1, " dim"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    .line 12
    const-string p1, " hdr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    .line 14
    const-string p1, " throttled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_5
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_6

    .line 16
    const-string p1, " lux_lower_bound"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_6
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_7

    .line 18
    const-string p0, " user_min_pref"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_8

    add-int/lit8 p0, p0, -0x2

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 22
    :cond_8
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
