.class Lcom/att/iqi/lib/metrics/mm/MM05$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/mm/MM05;
    .locals 0

    .line 2
    new-instance p0, Lcom/att/iqi/lib/metrics/mm/MM05;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM05;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM05$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/mm/MM05;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/att/iqi/lib/metrics/mm/MM05;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/att/iqi/lib/metrics/mm/MM05;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM05$1;->newArray(I)[Lcom/att/iqi/lib/metrics/mm/MM05;

    move-result-object p0

    return-object p0
.end method
