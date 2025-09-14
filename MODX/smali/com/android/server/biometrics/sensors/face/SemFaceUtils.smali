.class public abstract Lcom/android/server/biometrics/sensors/face/SemFaceUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mBundle:Landroid/os/Bundle;

.field public static mFidoRequestData:[B

.field public static mFidoResultData:[B

.field public static mNeedtoAuthenticateExt:Z

.field public static mSurface:Landroid/view/Surface;


# direct methods
.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    aget-byte v3, p0, v2

    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    const-string v4, "%02x"

    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-static {v4, v3, v0, v2, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 31
    move-result v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static copyOptions(ILandroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/face/FaceAuthenticateOptions;
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 3
    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 32
    const-string v0, ""

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getDisplayState()I

    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setDisplayState(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->build()Landroid/hardware/face/FaceAuthenticateOptions;

    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static getFidoRequestDataAsArrayList()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 8
    if-eqz v1, :cond_0

    .line 10
    array-length v2, v1

    .line 11
    if-lez v2, :cond_0

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_0

    .line 17
    aget-byte v4, v1, v3

    .line 19
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 32
    return-object v0
.end method

.method public static getSecurityMode(Landroid/content/Context;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "face_open_eyes"

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, -0x2

    .line 10
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v1, v0, :cond_0

    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object p0

    .line 24
    const-string/jumbo v4, "face_recognize_mask"

    .line 27
    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 30
    move-result p0

    .line 31
    if-ne v1, p0, :cond_1

    .line 33
    invoke-static {}, Landroid/hardware/face/FaceManager;->semIsSupportOnMask()Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 39
    or-int/lit8 v0, v0, 0x10

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v1, "mode=0x"

    .line 46
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    const-string v1, "SemFace"

    .line 62
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v0
.end method

.method public static setFidoRequestData([B)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    const-string v0, "SemFace"

    .line 7
    if-nez p0, :cond_0

    .line 9
    const-string/jumbo v1, "fidoRequestData is null"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v2, "fidoRequestData("

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    array-length v2, p0

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, ") = "

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    :goto_0
    sput-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 49
    return-void
.end method

.method public static setFidoResultData([B)V
    .locals 1

    .line 1
    sput-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 3
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 5
    if-eqz p0, :cond_0

    .line 7
    sget-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 9
    array-length p0, p0

    .line 10
    const/16 v0, 0x80

    .line 12
    if-ge p0, v0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v0, "fidoResultData("

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 24
    array-length v0, v0

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, ") = "

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    const-string v0, "SemFace"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method
