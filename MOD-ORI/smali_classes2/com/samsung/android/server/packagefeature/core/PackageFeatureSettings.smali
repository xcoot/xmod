.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;


# instance fields
.field public final mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "package_policy_disabled"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string/jumbo p3, "package_policy_disabled"

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne p2, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v0

    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 p3, -0x1

    .line 43
    invoke-virtual {p1, p2, v0, p0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    .line 13
    .line 14
    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 15
    .line 16
    const-string/jumbo p1, "onSettingsChanged, mAllFeaturesDisabled="

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string/jumbo v0, "package_policy_disabled"

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v0, 0x1

    .line 36
    if-ne p2, v0, :cond_1

    .line 37
    .line 38
    move v1, v0

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p2

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 43
    .line 44
    iget-boolean v2, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    .line 45
    .line 46
    if-ne v2, v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-boolean v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    .line 50
    .line 51
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 57
    .line 58
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    invoke-direct {v3, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x3

    .line 88
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    monitor-exit p2

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_3
    :goto_1
    return-void
.end method
