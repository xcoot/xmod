.class public final Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static -$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "eng"

    .line 9
    .line 10
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/16 v1, 0x3e8

    .line 26
    .line 27
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "Permission denied:"

    .line 37
    .line 38
    const-string v2, " uid="

    .line 39
    .line 40
    const-string v3, ", you need system uid or to be signed with the system certificate."

    .line 41
    .line 42
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    new-instance p0, Ljava/lang/SecurityException;

    .line 50
    .line 51
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "appops"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/app/AppOpsManager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final enforceCallFromPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final enforceCallingPermissionFromHost()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "com.samsung.android.permission.EDGE_LIGHTING_HOST"

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
