.class public final Landroid/hardware/usb/AltModeData;
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
    .locals 2

    .line 1
    new-instance v0, Landroid/hardware/usb/AltModeData$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/hardware/usb/AltModeData$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/hardware/usb/AltModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/AltModeData;->getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 7
    .line 8
    .line 9
    :goto_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroid/hardware/usb/AltModeData;->_value:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    iget p0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const-string p0, "bad access: displayPortAltModeData, displayPortAltModeData is available."

    .line 17
    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string/jumbo v1, "unknown field: "

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
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
    iget v0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/AltModeData;->getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
