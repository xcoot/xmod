.class public final Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final OWN_PROCESS_ID:I


# instance fields
.field public final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field public mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mNonA11yCategoryServices:Landroid/util/ArraySet;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

.field public mSendNonA11yToolNotificationEnabled:Z

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 11
    const/16 v0, -0x2710

    .line 13
    iput v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 18
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 20
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object p3

    .line 26
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 30
    const-string/jumbo p3, "user"

    .line 33
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Landroid/os/UserManager;

    .line 39
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    .line 41
    const-string p3, "appops"

    .line 43
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/app/AppOpsManager;

    .line 49
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 51
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 53
    return-void
.end method

.method public static canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 4
    move-result p0

    .line 5
    and-int/lit8 p0, p0, 0x10

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static isCallerInteractingAcrossUsers(I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 12
    move-result v2

    .line 13
    if-eq v1, v2, :cond_1

    .line 15
    const/16 v1, 0x7d0

    .line 17
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v0, -0x2

    .line 20
    if-eq p0, v0, :cond_1

    .line 22
    const/4 v0, -0x3

    .line 23
    if-ne p0, v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method


# virtual methods
.method public final canEnableDisableInputMethod(Ljava/lang/String;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)I
    .locals 7

    .line 1
    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 3
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v0

    .line 11
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 38
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v3, v2

    .line 50
    :goto_0
    if-eqz v3, :cond_c

    .line 52
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_c

    .line 62
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    .line 70
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 76
    const/4 v1, 0x1

    .line 77
    if-nez p2, :cond_2

    .line 79
    goto/16 :goto_5

    .line 81
    :cond_2
    const/16 v3, -0x2710

    .line 83
    if-ne v0, v3, :cond_3

    .line 85
    move-object v4, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 90
    move-result-object v4

    .line 91
    :goto_1
    invoke-static {p0, v4}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_4

    .line 97
    iget-object v5, v4, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 99
    invoke-virtual {p2, v5, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 102
    move-result v5

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    move v5, v1

    .line 105
    :goto_2
    invoke-static {p0, v0}, Lcom/android/server/accessibility/RestrictedLockUtilsInternal;->getManagedProfileId(Landroid/content/Context;I)I

    .line 108
    move-result v0

    .line 109
    if-eq v0, v3, :cond_7

    .line 111
    if-ne v0, v3, :cond_5

    .line 113
    move-object v3, v2

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 118
    move-result-object v3

    .line 119
    :goto_3
    invoke-static {p0, v3}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_6

    .line 125
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_6

    .line 131
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p2, p0}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    .line 142
    move-result-object p0

    .line 143
    iget-object p2, v3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 145
    invoke-virtual {p0, p2, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 148
    move-result p0

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    move p0, v1

    .line 151
    goto :goto_4

    .line 152
    :cond_7
    move p0, v1

    .line 153
    move-object v3, v2

    .line 154
    :goto_4
    if-nez v5, :cond_8

    .line 156
    if-nez p0, :cond_8

    .line 158
    sget-object v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 160
    goto :goto_5

    .line 161
    :cond_8
    if-nez v5, :cond_9

    .line 163
    move-object v2, v4

    .line 164
    goto :goto_5

    .line 165
    :cond_9
    if-nez p0, :cond_a

    .line 167
    move-object v2, v3

    .line 168
    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    .line 170
    return v1

    .line 171
    :cond_b
    const/4 p0, 0x0

    .line 172
    return p0

    .line 173
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    .line 175
    const-string p1, "The input method is in a different package with the accessibility service"

    .line 177
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 180
    throw p0
.end method

.method public final canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    and-int/2addr p2, v0

    .line 7
    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 14
    move-result-object v0

    .line 15
    const/4 v7, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 18
    return v7

    .line 19
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 21
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 28
    move-result v0

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v8

    .line 33
    iget-object v5, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    .line 35
    :try_start_0
    sget p1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    .line 37
    const/4 v10, 0x0

    .line 38
    if-ne p1, v0, :cond_2

    .line 40
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 42
    const-string v2, "android:access_accessibility"

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-nez p0, :cond_1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v7, v10

    .line 53
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    return v7

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 61
    const-string v2, "android:access_accessibility"

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-nez p0, :cond_3

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v7, v10

    .line 72
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    return v7

    .line 76
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw p0
.end method

.method public final checkForAccessibilityPermissionOrRole()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 22
    const-class v4, Landroid/app/role/RoleManager;

    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/app/role/RoleManager;

    .line 30
    if-eqz v3, :cond_2

    .line 32
    const-string v4, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    .line 34
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 41
    move-result-object v3

    .line 42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 50
    array-length v0, p0

    .line 51
    const/4 v4, 0x0

    .line 52
    :goto_0
    if-ge v4, v0, :cond_2

    .line 54
    aget-object v5, p0, v4

    .line 56
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 59
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v5, :cond_1

    .line 62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    return-void

    .line 66
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 73
    const-string v0, "Cannot register a proxy for a device without the android.app.role.COMPANION_DEVICE_APP_STREAMING role or the MANAGE_ACCESSIBILITY permission."

    .line 75
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw p0
.end method

.method public final computeValidReportedPackages(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 11
    return-object p0

    .line 12
    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    .line 18
    if-eqz p0, :cond_2

    .line 20
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 32
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x1

    .line 37
    add-int/2addr p1, v0

    .line 38
    new-array p1, p1, [Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 47
    move-result p2

    .line 48
    :goto_0
    if-ge v1, p2, :cond_1

    .line 50
    add-int v2, v0, v1

    .line 52
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 58
    aput-object v1, p1, v2

    .line 60
    move v1, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object p1

    .line 63
    :cond_2
    return-object p2
.end method

.method public final isRetrievalAllowingWindowLocked(II)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x3e8

    .line 8
    if-ne v0, v2, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 18
    move-result v0

    .line 19
    if-ne v0, v2, :cond_1

    .line 21
    return v1

    .line 22
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    move-result v0

    .line 26
    const/16 v2, 0x7d0

    .line 28
    const/4 v3, 0x0

    .line 29
    if-ne v0, v2, :cond_5

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    move-result-wide v4

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    .line 40
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v0, :cond_2

    .line 43
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    move v0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 50
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_3

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v7, "token="

    .line 61
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 71
    const-string/jumbo v7, "getWindowOwnerUserId"

    .line 74
    invoke-virtual {v2, v7, v6}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 79
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    .line 82
    move-result v0

    .line 83
    const/16 v2, -0x2710

    .line 85
    if-ne v0, v2, :cond_4

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    .line 90
    const-string/jumbo v6, "no_debugging_features"

    .line 93
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v2, v6, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 100
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    xor-int/2addr v0, v1

    .line 102
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    :goto_1
    if-nez v0, :cond_5

    .line 107
    return v3

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    throw p0

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 115
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    .line 118
    move-result v0

    .line 119
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 121
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    .line 124
    move-result p1

    .line 125
    if-ne v0, p1, :cond_6

    .line 127
    return v1

    .line 128
    :cond_6
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_7

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    move v1, v3

    .line 138
    :goto_2
    return v1
.end method

.method public final onSwitchUserLocked(ILjava/util/Set;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 8
    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 11
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-direct {v1, v2, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p2, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 32
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 38
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 41
    move-result v2

    .line 42
    if-ge v0, v2, :cond_1

    .line 44
    iget v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    .line 46
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 48
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/content/ComponentName;

    .line 54
    new-instance v4, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-direct {v4, v5, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v2

    .line 64
    invoke-static {v4, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 76
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 79
    iput p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    .line 81
    return-void
.end method

.method public final resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 7
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 11
    const/4 v2, -0x3

    .line 12
    const/4 v3, -0x2

    .line 13
    if-eqz v0, :cond_8

    .line 15
    const/16 v4, 0x3e8

    .line 17
    if-eq v0, v4, :cond_8

    .line 19
    const/16 v4, 0x7d0

    .line 21
    if-ne v0, v4, :cond_0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v0

    .line 28
    if-ne v0, p1, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    .line 38
    move-result v4

    .line 39
    if-ne v4, v1, :cond_3

    .line 41
    if-eq p1, v3, :cond_2

    .line 43
    if-ne p1, v2, :cond_3

    .line 45
    :cond_2
    return v1

    .line 46
    :cond_3
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 48
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    .line 50
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_4

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 59
    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 61
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_7

    .line 67
    :goto_0
    if-eq p1, v3, :cond_6

    .line 69
    if-ne p1, v2, :cond_5

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :cond_6
    :goto_1
    return v1

    .line 78
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    const-string v1, "Call from user "

    .line 82
    const-string v2, " as user "

    .line 84
    const-string v3, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    .line 86
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0

    .line 94
    :cond_8
    :goto_2
    if-eq p1, v3, :cond_a

    .line 96
    if-ne p1, v2, :cond_9

    .line 98
    goto :goto_3

    .line 99
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :cond_a
    :goto_3
    return v1
.end method

.method public final resolveProfileParentLocked(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 3
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 7
    if-eq p1, v0, :cond_1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_1
    return p1
.end method

.method public final resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/16 v1, 0x3e8

    .line 7
    if-ne p2, v1, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    move-result-object v7

    .line 18
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 21
    move-result p2

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v8

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    move-result v3

    .line 32
    const-wide/32 v4, 0x400000

    .line 35
    move v2, p2

    .line 36
    move-object v6, v7

    .line 37
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    .line 40
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    if-eqz p3, :cond_2

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    .line 53
    if-eqz p3, :cond_3

    .line 55
    invoke-virtual {p3, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    .line 58
    move-result-object p3

    .line 59
    invoke-static {p3, v7}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_3

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_3
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 72
    const-string v1, "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY"

    .line 74
    invoke-virtual {p3, v1, p4, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 77
    move-result p3

    .line 78
    if-nez p3, :cond_4

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_5

    .line 97
    return-object v0

    .line 98
    :cond_5
    const/4 p1, 0x0

    .line 99
    aget-object p0, p0, p1

    .line 101
    return-object p0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw p0
.end method

.method public final setSendingNonA11yToolNotificationLocked(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 26
    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 29
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    if-eqz p1, :cond_1

    .line 34
    const/4 p1, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 40
    move-result v1

    .line 41
    if-ge p1, v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 45
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/content/ComponentName;

    .line 51
    iget v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    .line 53
    new-instance v4, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-direct {v4, v5, v0}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v3

    .line 63
    invoke-static {v4, v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    add-int/lit8 p1, p1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method
