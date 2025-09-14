.class public final Lcom/android/server/broadcastradio/aidl/RadioModule$2;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/broadcastradio/IAnnouncementListener;


# instance fields
.field public final synthetic val$listener:Landroid/hardware/radio/IAnnouncementListener;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 9
    sget-object p1, Landroid/hardware/broadcastradio/IAnnouncementListener;->DESCRIPTOR:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/broadcastradio/IAnnouncementListener;->DESCRIPTOR:Ljava/lang/String;

    .line 3
    const v1, 0xffffff

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 9
    if-gt p1, v1, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 17
    if-ne p1, v3, :cond_1

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    const/4 p0, 0x2

    .line 29
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return v2

    .line 33
    :cond_2
    const v0, 0xfffffe

    .line 36
    if-ne p1, v0, :cond_3

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    const-string p0, "bff68a8bc8b7cc191ab62bee10f7df8e79494467"

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    .line 47
    :cond_3
    if-eq p1, v2, :cond_4

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_4
    sget-object p1, Landroid/hardware/broadcastradio/Announcement;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, [Landroid/hardware/broadcastradio/Announcement;

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    .line 67
    array-length p3, p1

    .line 68
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    const/4 p3, 0x0

    .line 72
    :goto_0
    array-length p4, p1

    .line 73
    if-ge p3, p4, :cond_5

    .line 75
    aget-object p4, p1, p3

    .line 77
    new-instance v0, Landroid/hardware/radio/Announcement;

    .line 79
    iget-object v1, p4, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 81
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    .line 84
    move-result-object v1

    .line 85
    const-string v3, "Program selector can not be null"

    .line 87
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget-byte v3, p4, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 92
    iget-object p4, p4, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 94
    invoke-static {p4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    .line 97
    move-result-object p4

    .line 98
    invoke-direct {v0, v1, v3, p4}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    .line 101
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 p3, p3, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    .line 109
    invoke-interface {p0, p2}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V

    .line 112
    return v2
.end method
