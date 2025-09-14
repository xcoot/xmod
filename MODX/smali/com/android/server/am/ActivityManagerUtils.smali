.class public abstract Lcom/android/server/am/ActivityManagerUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sAndroidIdHash:Ljava/lang/Integer;

.field public static final sHashCache:Landroid/util/ArrayMap;

.field public static sInjectedAndroidId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    .line 8
    return-void
.end method

.method public static extractByte(I[B)I
    .locals 0

    .line 1
    aget-byte p1, p1, p0

    .line 3
    and-int/lit16 p1, p1, 0xff

    .line 5
    mul-int/lit8 p0, p0, 0x8

    .line 7
    shl-int p0, p1, p0

    .line 9
    return p0
.end method

.method public static getAndroidIdHash()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    .line 16
    move-result v1

    .line 17
    const-string v2, "android_id"

    .line 19
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    .line 25
    if-eqz v1, :cond_0

    .line 27
    move-object v0, v1

    .line 28
    :cond_0
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 38
    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public static getUnsignedHashCached(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p0

    .line 16
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v0

    .line 36
    return v1

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public static getUnsignedHashUnCached(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "SHA-1"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->unsignedIntFromBytes([B)I

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    throw v0
.end method

.method public static injectAndroidIdForTest(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    .line 3
    const/4 p0, 0x0

    .line 4
    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 6
    return-void
.end method

.method public static shouldSamplePackageForAtom(FLjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-gtz v0, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    cmpl-float v0, p0, v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ltz v0, :cond_1

    .line 15
    return v2

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashCached(Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    .line 23
    move-result v0

    .line 24
    xor-int/2addr p1, v0

    .line 25
    int-to-double v3, p1

    .line 26
    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    .line 31
    div-double/2addr v3, v5

    .line 32
    float-to-double p0, p0

    .line 33
    cmpg-double p0, v3, p0

    .line 35
    if-gtz p0, :cond_2

    .line 37
    move v1, v2

    .line 38
    :cond_2
    return v1
.end method

.method public static unsignedIntFromBytes([B)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte(I[B)I

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1, p0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte(I[B)I

    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {v1, p0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte(I[B)I

    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-static {v1, p0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte(I[B)I

    .line 22
    move-result p0

    .line 23
    or-int/2addr p0, v0

    .line 24
    const v0, 0x7fffffff

    .line 27
    and-int/2addr p0, v0

    .line 28
    return p0
.end method
