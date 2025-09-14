.class public abstract synthetic Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static m(Landroid/os/Parcel;II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 3
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return p1
.end method

.method public static m(IILandroid/os/Parcel;I)V
    .locals 0

    sub-int/2addr p0, p1

    .line 4
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
