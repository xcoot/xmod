.class public final Landroid/frameworks/vibrator/VibrationParam$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Landroid/frameworks/vibrator/VibrationParam;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    sget-object v1, Landroid/frameworks/vibrator/ScaleParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/frameworks/vibrator/ScaleParam;

    .line 20
    iput v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 22
    iput-object p1, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string/jumbo p1, "union: unknown tag: "

    .line 30
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/frameworks/vibrator/VibrationParam;

    .line 3
    return-object p0
.end method
