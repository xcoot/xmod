.class public final Landroid/net/ResolverHostsParcel$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroid/net/ResolverHostsParcel;

    .line 3
    invoke-direct {p0}, Landroid/net/ResolverHostsParcel;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Landroid/net/ResolverHostsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 9
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/net/ResolverHostsParcel;

    .line 3
    return-object p0
.end method
