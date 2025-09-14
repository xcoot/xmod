.class public final Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public mIdentifier:Ljava/lang/Object;

.field public mLanguageTag:Ljava/lang/String;

.field public mLayoutType:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string/jumbo v0, "identifier must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "descriptor must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLanguageTag:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLayoutType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->$r8$classId:I

    .line 2
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InputDevice;->getKeyboardLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/view/InputDevice;->getKeyboardLayoutType()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .locals 6

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ltz v1, :cond_2

    .line 9
    .line 10
    add-int/lit8 v3, v1, 0x1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v4, v1, 0x2

    .line 24
    .line 25
    if-lt v0, v4, :cond_2

    .line 26
    .line 27
    add-int/lit8 v4, v0, 0x1

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-ne v4, v5, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLanguageTag:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLayoutType:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iput-object p0, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 59
    .line 60
    :cond_2
    :goto_0
    return-object v2
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v1, "vendor:"

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ",product:"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLanguageTag:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_1

    .line 82
    .line 83
    const-string v2, ",languageTag:"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLayoutType:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    const-string v1, ",layoutType:"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    :goto_0
    return-object p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
