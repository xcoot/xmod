.class public abstract Lcom/android/server/location/LocationPermissions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static asAppOp(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p0, v1, :cond_0

    .line 7
    return v0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 13
    throw p0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v1

    .line 9
    const-string v2, "android.permission.LOCATION_BYPASS"

    .line 11
    invoke-virtual {p0, v2, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo v1, "uid"

    .line 23
    const-string v2, " does not have android.permission.LOCATION_BYPASS."

    .line 25
    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static enforceLocationPermission(III)V
    .locals 1

    .line 1
    if-lt p1, p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x1

    .line 5
    const-string/jumbo v0, "uid "

    .line 8
    if-eq p2, p1, :cond_2

    .line 10
    const/4 p1, 0x2

    .line 11
    if-eq p2, p1, :cond_1

    .line 13
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 16
    const-string p2, " does not have android.permission.ACCESS_FINE_LOCATION."

    .line 18
    invoke-static {p0, v0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 28
    const-string p2, " does not have android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION."

    .line 30
    invoke-static {p0, v0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public static getPermissionLevel(Landroid/content/Context;II)I
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 p0, 0x2

    .line 10
    return p0

    .line 11
    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 13
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method
