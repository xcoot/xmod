.class public abstract synthetic Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static m(Ljava/lang/String;)Landroid/os/HwParcel;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;Landroid/os/NativeHandle;Ljava/util/ArrayList;)Landroid/os/HwParcel;
    .locals 1

    .line 4
    new-instance v0, Landroid/os/HwParcel;

    .line 5
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    return-object v0
.end method
