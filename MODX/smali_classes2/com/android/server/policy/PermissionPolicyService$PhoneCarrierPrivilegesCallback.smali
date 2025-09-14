.class public final Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final mPhoneId:I

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-string p0, "PermissionPolicyService"

    .line 22
    .line 23
    const-string p1, "Cannot grant default permissions to Carrier Service app. TelephonyManager is null"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget p2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-class v1, Landroid/permission/LegacyPermissionManager;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/permission/LegacyPermissionManager;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    move v2, v1

    .line 64
    :goto_0
    array-length v3, p2

    .line 65
    if-ge v2, v3, :cond_3

    .line 66
    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    aget v4, p2, v2

    .line 72
    .line 73
    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 74
    .line 75
    .line 76
    aget v3, p2, v2

    .line 77
    .line 78
    invoke-virtual {v0, p1, v3}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method
