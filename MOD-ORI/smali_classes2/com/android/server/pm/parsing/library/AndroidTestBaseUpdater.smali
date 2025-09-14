.class public Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "platform_compat"

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :try_start_0
    move-object p2, p1

    .line 15
    check-cast p2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 16
    .line 17
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-wide/32 v0, 0x7f379d2

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0, v1, p2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p2, "AndroidTestBaseUpdater"

    .line 31
    .line 32
    const-string p3, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    .line 33
    .line 34
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/16 p2, 0x1d

    .line 42
    .line 43
    if-le p0, p2, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    :goto_0
    const-string p2, "android.test.base"

    .line 49
    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixImplicitDependency(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method
