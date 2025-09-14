.class public final Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;
.super Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPm:Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/core/CompatChangeablePackageInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setHasLauncherActivity(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setUid(I)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setHasGameCategory(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    const-string v1, "android.window.PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES"

    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0, v1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsResizeableActivityOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 43
    .line 44
    .line 45
    const-string v1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    .line 46
    .line 47
    filled-new-array {v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsOrientationOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 56
    .line 57
    .line 58
    const-string v1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    .line 59
    .line 60
    const-string v2, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

    .line 61
    .line 62
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsMinAspectRatioOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 71
    .line 72
    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    const-string v1, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"

    .line 76
    .line 77
    filled-new-array {v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsActivityEmbeddingSplitsEnabled(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 86
    .line 87
    .line 88
    invoke-super {p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->build()Lcom/samsung/android/core/CompatChangeablePackageInfo;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method public final varargs equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPm:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v4, v5, v3}, Lcom/samsung/android/core/CompatChangeableApps;->readComponentProperty(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v1
.end method
