.class public final Landroid/hardware/usb/PortRole$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Landroid/hardware/usb/PortRole;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 25
    move-result-object p1

    .line 26
    iput v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 28
    iput-object p1, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string/jumbo p1, "union: unknown tag: "

    .line 36
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 51
    move-result-object p1

    .line 52
    iput v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 54
    iput-object p1, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 64
    move-result-object p1

    .line 65
    iput v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 67
    iput-object p1, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 69
    :goto_0
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/usb/PortRole;

    .line 3
    return-object p0
.end method
