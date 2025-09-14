.class public final Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public cableStatus:I

.field public hpd:Z

.field public linkTrainingStatus:I

.field public partnerSinkStatus:I

.field public pinAssignment:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/hardware/usb/AltModeData$1;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/hardware/usb/AltModeData$1;-><init>(I)V

    .line 7
    sput-object v0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method


# virtual methods
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
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->partnerSinkStatus:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->cableStatus:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->pinAssignment:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-boolean v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->hpd:Z

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29
    iget p0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->linkTrainingStatus:I

    .line 31
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 34
    move-result p0

    .line 35
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 38
    return-void
.end method
