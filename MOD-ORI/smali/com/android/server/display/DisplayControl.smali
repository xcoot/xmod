.class public abstract Lcom/android/server/display/DisplayControl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static createVirtualDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2

    .line 1
    const-string/jumbo v0, "name must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/display/DisplayControl;->nativeCreateVirtualDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static createVirtualDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;
    .locals 1

    .line 3
    const-string/jumbo v0, "name must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    const-string/jumbo v0, "uniqueId must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayControl;->nativeCreateVirtualDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static destroyVirtualDisplay(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/display/DisplayControl;->nativeDestroyVirtualDisplay(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string/jumbo v0, "displayToken must not be null"

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static getHdrOutputConversionSupport()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputConversionSupport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getHdrOutputTypesWithLatency()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputTypesWithLatency()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getPhysicalDisplayIds()[J
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayIds()[J

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getSupportedHdrOutputTypes()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetSupportedHdrOutputTypes()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static native nativeCreateVirtualDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;
.end method

.method private static native nativeDestroyVirtualDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetHdrOutputConversionSupport()Z
.end method

.method private static native nativeGetHdrOutputTypesWithLatency()[I
.end method

.method private static native nativeGetPhysicalDisplayIds()[J
.end method

.method private static native nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetSupportedHdrOutputTypes()[I
.end method

.method private static native nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V
.end method

.method private static native nativeSetHdrConversionMode(II[II)I
.end method

.method public static overrideHdrTypes(Landroid/os/IBinder;[I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setHdrConversionMode([III)I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {p1, p2, p0, v0}, Lcom/android/server/display/DisplayControl;->nativeSetHdrConversionMode(II[II)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
