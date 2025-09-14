.class public final Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    return-void
.end method


# virtual methods
.method public final getAccessibilityServices()Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "accessibility"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    .line 14
    move-result-object v0

    .line 15
    :goto_0
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    .line 17
    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 22
    move-result v2

    .line 23
    invoke-direct {v1, p0, v0, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    .line 26
    const/4 p0, -0x1

    .line 27
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 55
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-object v0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 78
    throw p0
.end method

.method public final getInputMethodPackages()Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 10
    move-result p0

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 36
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method

.method public final getPersonalAppsForSuspension()[Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    const/high16 v1, 0xc0000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    new-instance v2, Landroid/util/ArraySet;

    .line 11
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 30
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 32
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 38
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 44
    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 46
    new-instance v5, Landroid/content/Intent;

    .line 48
    const-string v6, "android.intent.action.MAIN"

    .line 50
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v6, "android.intent.category.LAUNCHER"

    .line 55
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v4, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_0

    .line 69
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_0

    .line 75
    :cond_2
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 77
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v0

    .line 87
    const v3, 0x107013d

    .line 90
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSystemLauncherPackages()Ljava/util/List;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getAccessibilityServices()Ljava/util/List;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getInputMethodPackages()Ljava/util/List;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 122
    invoke-static {}, Landroid/app/admin/flags/Flags;->defaultSmsPersonalAppSuspensionFixEnabled()Z

    .line 125
    move-result v0

    .line 126
    const/4 v3, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 135
    move-result-object v5

    .line 136
    invoke-static {v0, v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    move-object v0, v3

    .line 148
    goto :goto_1

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    :goto_1
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Landroid/content/Intent;

    .line 160
    const-string v5, "android.settings.SETTINGS"

    .line 162
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v5, "android.intent.category.DEFAULT"

    .line 167
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v5, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 172
    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_6

    .line 178
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 180
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 182
    :cond_6
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 187
    new-array v0, v4, [Ljava/lang/String;

    .line 189
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 192
    move-result-object v0

    .line 193
    check-cast v0, [Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 198
    move-result-object p0

    .line 199
    array-length v0, p0

    .line 200
    move v1, v4

    .line 201
    :goto_2
    if-ge v1, v0, :cond_7

    .line 203
    aget-object v3, p0, v1

    .line 205
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    .line 210
    goto :goto_2

    .line 211
    :cond_7
    new-array p0, v4, [Ljava/lang/String;

    .line 213
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 216
    move-result-object p0

    .line 217
    check-cast p0, [Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public final getSystemLauncherPackages()Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "android.intent.action.MAIN"

    .line 8
    const-string v2, "android.intent.category.HOME"

    .line 10
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    const/high16 v3, 0xc0000

    .line 18
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 38
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 40
    const-string v5, "DevicePolicyManager"

    .line 42
    if-eqz v4, :cond_3

    .line 44
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 55
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_2

    .line 69
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_0

    .line 75
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    const-string v4, "Could not find application info for launcher app: %s"

    .line 81
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    invoke-static {v5, v4, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_1
    const-string v4, "Could not find package name for launcher app %s"

    .line 91
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    invoke-static {v5, v4, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    return-object v0
.end method
