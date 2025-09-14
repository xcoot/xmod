.class public final Lcom/android/server/pm/parsing/PackageParserUtils$1;
.super Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageParserUtils$1;->val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
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
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParserUtils$1;->val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "PackageParsing"

    .line 10
    .line 11
    const-string p2, "IPlatformCompat query failed"

    .line 12
    .line 13
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
.end method
