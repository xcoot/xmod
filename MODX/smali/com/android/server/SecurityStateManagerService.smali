.class public final Lcom/android/server/SecurityStateManagerService;
.super Landroid/os/ISecurityStateManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KERNEL_RELEASE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\d+\\.\\d+\\.\\d+)(.*)"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/SecurityStateManagerService;->KERNEL_RELEASE_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ISecurityStateManager$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SecurityStateManagerService;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/SecurityStateManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    return-void
.end method


# virtual methods
.method public final getGlobalSecurityState()Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string/jumbo v1, "system_spl"

    .line 9
    sget-object v2, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v1, "ro.vendor.build.security_patch"

    .line 17
    const-string v2, ""

    .line 19
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const-string/jumbo v3, "vendor_spl"

    .line 26
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/android/server/SecurityStateManagerService;->mContext:Landroid/content/Context;

    .line 31
    const v3, 0x1040320

    .line 34
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/SecurityStateManagerService;->getSpl(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    sget-object v1, Lcom/android/server/SecurityStateManagerService;->KERNEL_RELEASE_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    invoke-static {}, Landroid/os/VintfRuntimeInfo;->getKernelVersion()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    :cond_1
    const-string/jumbo v1, "kernel_version"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    .line 81
    move-result-object v1

    .line 82
    array-length v2, v1

    .line 83
    const/4 v3, 0x0

    .line 84
    move v4, v3

    .line 85
    :goto_0
    if-ge v4, v2, :cond_2

    .line 87
    aget-object v5, v1, v4

    .line 89
    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v5}, Lcom/android/server/SecurityStateManagerService;->getSpl(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/server/SecurityStateManagerService;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v1

    .line 107
    const v2, 0x107015d

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    array-length v2, v1

    .line 115
    :goto_1
    if-ge v3, v2, :cond_3

    .line 117
    aget-object v4, v1, v3

    .line 119
    invoke-virtual {p0, v4}, Lcom/android/server/SecurityStateManagerService;->getSpl(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    return-object v0
.end method

.method public final getSpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SecurityStateManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v0, "Failed to get SPL for package %s."

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "SecurityStateManagerService"

    .line 30
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_0
    const-string p0, ""

    .line 35
    return-object p0
.end method
