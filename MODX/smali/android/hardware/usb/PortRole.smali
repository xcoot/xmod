.class public final Landroid/hardware/usb/PortRole;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/usb/PortRole$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 7
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public static _tagString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 9
    const-string/jumbo p0, "mode"

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    const-string/jumbo v1, "unknown field: "

    .line 18
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0

    .line 26
    :cond_1
    const-string/jumbo p0, "dataRole"

    .line 29
    return-object p0

    .line 30
    :cond_2
    const-string/jumbo p0, "powerRole"

    .line 33
    return-object p0
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "bad access: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Landroid/hardware/usb/PortRole;->_tagString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, ", "

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget p0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 29
    invoke-static {p0}, Landroid/hardware/usb/PortRole;->_tagString(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, " is available."

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 8
    if-eqz p2, :cond_2

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_1

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 20
    iget-object p0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 22
    check-cast p0, Ljava/lang/Byte;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 35
    iget-object p0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 37
    check-cast p0, Ljava/lang/Byte;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p2}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 51
    iget-object p0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 53
    check-cast p0, Ljava/lang/Byte;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 58
    move-result p0

    .line 59
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    :goto_0
    return-void
.end method
