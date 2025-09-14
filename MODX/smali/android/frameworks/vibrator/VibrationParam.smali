.class public final Landroid/frameworks/vibrator/VibrationParam;
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
    new-instance v0, Landroid/frameworks/vibrator/VibrationParam$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    .line 9
    :goto_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final getScale()Landroid/frameworks/vibrator/ScaleParam;
    .locals 2

    .line 1
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    .line 7
    check-cast p0, Landroid/frameworks/vibrator/ScaleParam;

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    iget p0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 14
    if-nez p0, :cond_1

    .line 16
    const-string p0, "bad access: scale, scale is available."

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    const-string/jumbo v1, "unknown field: "

    .line 27
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 18
    :goto_0
    return-void
.end method
