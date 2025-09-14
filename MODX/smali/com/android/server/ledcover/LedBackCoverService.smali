.class public final Lcom/android/server/ledcover/LedBackCoverService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    new-instance p0, Landroid/content/IntentFilter;

    .line 6
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    const-string/jumbo v0, "package"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "com.samsung.android.app.ledbackcover"

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 22
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const/16 v0, 0x3e8

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 37
    new-instance v0, Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;

    .line 39
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    invoke-static {p1}, Lcom/android/server/ledcover/LedBackCoverService;->backgroundWhitelist(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static backgroundWhitelist(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "com.samsung.android.app.ledbackcover"

    .line 4
    const-string v1, "LedBackCoverService"

    .line 6
    const-string v2, "backgroundWhitelist: bad uid: "

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const/16 v4, 0x3e8

    .line 25
    if-lt v0, v4, :cond_2

    .line 27
    if-nez v3, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/android/server/ledcover/LedBackCoverService;->hasValidSignature(Landroid/content/Context;)Z

    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V

    .line 44
    const-string p0, "backgroundWhitelist successfully called"

    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, ", uidString: "

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 76
    :goto_1
    const-string v0, "backgroundWhitelist exception "

    .line 78
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_2
    return-void
.end method

.method public static hasValidSignature(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "com.samsung.android.app.ledbackcover"

    .line 4
    const-string v1, "LedBackCoverService"

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object p0

    .line 11
    const/16 v3, 0x40

    .line 13
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    move-result-object v0

    .line 17
    const-string v4, "android"

    .line 19
    invoke-virtual {p0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 25
    aget-object p0, p0, v2

    .line 27
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 29
    aget-object v0, v0, v2

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 37
    const-string/jumbo p0, "hasValidSignature, VALID : com.samsung.android.app.ledbackcover"

    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v3, "hasValidSignature, exception "

    .line 51
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return v2
.end method
