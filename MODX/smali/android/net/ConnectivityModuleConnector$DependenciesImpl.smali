.class public final Landroid/net/ConnectivityModuleConnector$DependenciesImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$Dependencies;


# virtual methods
.method public final getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 3
    if-eqz p4, :cond_0

    .line 5
    const-string v0, ".InProcess"

    .line 7
    invoke-static {p2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    :cond_0
    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 33
    move-result p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-eqz p4, :cond_2

    .line 36
    const/16 v1, 0x3e8

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v1, 0x431

    .line 41
    :goto_0
    if-ne p2, v1, :cond_4

    .line 43
    if-nez p4, :cond_3

    .line 45
    invoke-static {p1, v0, p3}, Landroid/net/ConnectivityModuleConnector;->-$$Nest$smcheckModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 48
    :cond_3
    return-object p0

    .line 49
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 51
    const-string p1, "Invalid network stack UID: "

    .line 53
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/SecurityException;

    .line 64
    const-string p2, "Could not check network stack UID; package not found."

    .line 66
    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    throw p1
.end method
