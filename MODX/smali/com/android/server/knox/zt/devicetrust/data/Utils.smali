.class public final Lcom/android/server/knox/zt/devicetrust/data/Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field public mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/Utils;->mPm:Landroid/content/pm/IPackageManager;

    .line 10
    return-void
.end method

.method public static getInstance()Lcom/android/server/knox/zt/devicetrust/data/Utils;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;

    .line 3
    return-object v0
.end method

.method public static millisToNanos(J)J
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 4
    mul-long/2addr p0, v0

    .line 5
    return-wide p0
.end method

.method public static nullSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string p0, ""

    .line 6
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 1
    const-string/jumbo p0, "package"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/Utils;->mPm:Landroid/content/pm/IPackageManager;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const-string p0, ""

    .line 16
    :goto_1
    return-object p0
.end method

.method public final getProcessNameForPid(I)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmServerUtils;->getProcessNameForPid(I)Ljava/lang/String;

    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    if-eqz p0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string p0, ""

    .line 12
    :goto_1
    return-object p0
.end method

.method public final getSecurityContextForPid(I)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/os/SELinux;->getPidContext(I)Ljava/lang/String;

    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    if-eqz p0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string p0, ""

    .line 12
    :goto_1
    return-object p0
.end method
