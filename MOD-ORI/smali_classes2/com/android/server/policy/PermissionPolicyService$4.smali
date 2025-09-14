.class public final Lcom/android/server/policy/PermissionPolicyService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$4;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$4;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 15
    .line 16
    iget-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 27
    .line 28
    :cond_1
    iget-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 p2, 0x0

    .line 34
    :goto_0
    iget-object v0, p1, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ge p2, v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-object p1, p1, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    :goto_1
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$4;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
