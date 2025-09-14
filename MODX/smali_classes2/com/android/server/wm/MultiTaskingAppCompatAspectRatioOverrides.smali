.class public final Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSystemMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

.field public mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mSystemMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    .line 24
    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-interface {v0, p1, p0}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const-string v1, "Exception thrown retrieving aspect ratio user override. packageName="

    .line 12
    .line 13
    const-string v2, ", userId="

    .line 14
    .line 15
    invoke-static {p0, v1, p1, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "MultiTaskingAppCompat"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->setUserMinAspectRatio(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p2

    .line 15
    const-string v0, "Unable to set user min aspect ratio override. packageName="

    .line 16
    .line 17
    const-string v1, ", userId="

    .line 18
    .line 19
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "MultiTaskingAppCompat"

    .line 24
    .line 25
    invoke-static {p1, p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public final getSystemMinAspectRatio(Ljava/lang/String;)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mSystemMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Float;

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 p1, 0x0

    .line 18
    cmpl-float p1, p0, p1

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    return p0

    .line 23
    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 24
    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public final getUserOrSystemMinAspectRatio(ILjava/lang/String;)F
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    const p1, 0x3fe38e39

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x3

    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    const p1, 0x3faaaaab

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move p1, v0

    .line 26
    :goto_0
    cmpl-float v1, p1, v0

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return p1

    .line 31
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getSystemMinAspectRatio(Ljava/lang/String;)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    cmpl-float p1, p0, v0

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    return p0

    .line 40
    :cond_4
    return v0
.end method
