.class public abstract Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/hardware/common/NativeHandle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/hardware/common/NativeHandle;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroid/os/NativeHandle;->getInts()[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, [I

    .line 23
    .line 24
    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->ints:[I

    .line 25
    .line 26
    array-length p0, v1

    .line 27
    new-array p0, p0, [Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    :goto_0
    array-length v2, v1

    .line 33
    if-ge p0, v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    .line 36
    .line 37
    aget-object v3, v1, p0

    .line 38
    .line 39
    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v2, p0

    .line 44
    .line 45
    add-int/lit8 p0, p0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method
