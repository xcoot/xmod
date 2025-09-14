.class public final Lcom/android/server/pm/FrozenPackageInterceptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/pm/FrozenPackageInterceptor$1;

.field public final mContext:Landroid/content/Context;

.field public final mPMInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/FrozenPackageInterceptor$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/pm/FrozenPackageInterceptor$1;-><init>(Lcom/android/server/pm/FrozenPackageInterceptor;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mActivityInterceptorCallback:Lcom/android/server/pm/FrozenPackageInterceptor$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mPMInternal:Landroid/content/pm/PackageManagerInternal;

    .line 22
    .line 23
    return-void
.end method
