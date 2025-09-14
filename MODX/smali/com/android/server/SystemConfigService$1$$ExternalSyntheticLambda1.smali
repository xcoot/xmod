.class public final synthetic Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageManagerInternal;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageManagerInternal;

    .line 3
    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method
