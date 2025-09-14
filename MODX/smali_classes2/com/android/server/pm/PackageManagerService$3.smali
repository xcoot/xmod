.class public final Lcom/android/server/pm/PackageManagerService$3;
.super Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$platformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getHiddenApiWhitelistedApps()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getInstallConstraintsAllowlist()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mInstallConstraintsAllowlist:Ljava/util/Set;

    .line 6
    .line 7
    return-object p0
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
