.class public final Lcom/android/server/appfunctions/ServiceHelperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appfunctions/ServiceHelper;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Landroid/content/Context;

    .line 10
    iput-object p1, p0, Lcom/android/server/appfunctions/ServiceHelperImpl;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public final resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 2

    .line 1
    const-string v0, "android.app.appfunctions.AppFunctionService"

    .line 3
    invoke-static {v0, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/server/appfunctions/ServiceHelperImpl;->mContext:Landroid/content/Context;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 21
    move-result-object p0

    .line 22
    const/4 p2, 0x0

    .line 23
    if-eqz p0, :cond_2

    .line 25
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 27
    if-nez p0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 32
    const-string v1, "android.permission.BIND_APP_FUNCTION_SERVICE"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 40
    return-object p2

    .line 41
    :cond_1
    new-instance p2, Landroid/content/ComponentName;

    .line 43
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 45
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 47
    invoke-direct {p2, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    return-object p1

    .line 54
    :cond_2
    :goto_0
    return-object p2
.end method
