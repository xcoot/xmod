.class Lcom/att/iqi/lib/Metric$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/Metric;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-class v1, Lcom/att/iqi/lib/Metric;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    invoke-static {v0, p1}, Lcom/att/iqi/lib/Metric;->-$$Nest$smmaybeLoadAndInstantiate(Ljava/lang/String;Landroid/os/Parcel;)Lcom/att/iqi/lib/Metric;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid or null package name found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API 1 not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/Metric$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/Metric;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/att/iqi/lib/Metric;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/att/iqi/lib/Metric;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/Metric$1;->newArray(I)[Lcom/att/iqi/lib/Metric;

    move-result-object p0

    return-object p0
.end method
