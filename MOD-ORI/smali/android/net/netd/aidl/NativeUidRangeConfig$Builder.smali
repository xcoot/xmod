.class public final Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private netId:I

.field private subPriority:I

.field private uidRanges:[Landroid/net/UidRangeParcel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    .line 6
    .line 7
    iput v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 2
    .line 3
    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    .line 4
    .line 5
    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 6
    .line 7
    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Landroid/net/netd/aidl/NativeUidRangeConfig;-><init>(I[Landroid/net/UidRangeParcel;I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public setNetId(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSubPriority(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setUidRanges([Landroid/net/UidRangeParcel;)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 2
    .line 3
    return-object p0
.end method
