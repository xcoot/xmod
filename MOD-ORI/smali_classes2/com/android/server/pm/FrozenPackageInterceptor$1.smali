.class public final Lcom/android/server/pm/FrozenPackageInterceptor$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityInterceptorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/FrozenPackageInterceptor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/FrozenPackageInterceptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mPMInternal:Landroid/content/pm/PackageManagerInternal;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getUserId()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(IILjava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getUserId()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-static {p0, v0}, Lcom/android/internal/app/FrozenAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_2
    return-object v1
.end method
