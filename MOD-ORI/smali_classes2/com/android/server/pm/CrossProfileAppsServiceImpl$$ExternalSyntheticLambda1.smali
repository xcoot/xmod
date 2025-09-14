.class public final synthetic Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;->f$1:I

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-class v1, Landroid/os/UserManager;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/os/UserManager;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
