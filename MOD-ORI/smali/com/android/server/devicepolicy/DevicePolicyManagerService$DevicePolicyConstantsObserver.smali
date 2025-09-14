.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConstantsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "device_policy_constants"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;->mConstantsUri:Landroid/net/Uri;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo p3, "device_policy_constants"

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 19
    .line 20
    invoke-direct {p3, p2}, Lcom/android/server/devicepolicy/DevicePolicyConstants;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 24
    .line 25
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->invalidateBinderCaches()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 31
    .line 32
    new-instance p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;

    .line 33
    .line 34
    const/16 p3, 0xe

    .line 35
    .line 36
    invoke-direct {p2, p3, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
