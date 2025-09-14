.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Looper;Landroid/telephony/SubscriptionManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 5
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userId:I

    .line 7
    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    .line 18
    move-result-object v2

    .line 19
    array-length v4, v2

    .line 20
    :goto_0
    if-ge v3, v4, :cond_2

    .line 22
    aget v5, v2, v3

    .line 24
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 26
    invoke-virtual {v6, v5}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    .line 29
    move-result-object v6

    .line 30
    if-eqz v6, :cond_0

    .line 32
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 35
    move-result v6

    .line 36
    iget v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userId:I

    .line 38
    if-eq v6, v7, :cond_1

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v2

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 45
    iget v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userId:I

    .line 47
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v6, v5, v7}, Landroid/telephony/SubscriptionManager;->setSubscriptionUserHandle(ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 59
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    return-void

    .line 68
    :goto_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 70
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    throw v2
.end method
