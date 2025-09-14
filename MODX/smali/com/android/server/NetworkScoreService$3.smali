.class public final Lcom/android/server/NetworkScoreService$3;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkScoreService$ServiceHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$3;->this$0:Lcom/android/server/NetworkScoreService;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 7

    .line 1
    const-string/jumbo p1, "use_open_wifi_package"

    .line 4
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$3;->this$0:Lcom/android/server/NetworkScoreService;

    .line 16
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 32
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 34
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 40
    iget-object p1, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 42
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    const-string p2, "Granting permissions to default Use Open WiFi app for user:"

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    const-string p2, "DefaultPermGrantPolicy"

    .line 63
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 p1, 0x1

    .line 67
    new-array v6, p1, [Ljava/util/Set;

    .line 69
    sget-object p1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 71
    const/4 p2, 0x0

    .line 72
    aput-object p1, v6, p2

    .line 74
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 76
    invoke-virtual {v1, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 79
    move-result-object v2

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x1

    .line 82
    move v3, p3

    .line 83
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZ[Ljava/util/Set;)V

    .line 86
    :cond_0
    return-void
.end method
