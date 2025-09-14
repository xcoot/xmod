.class public final Lcom/android/server/knox/SeamLessSwitchHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static packageExtraForSALog:Ljava/lang/String;


# instance fields
.field public final LAUNCHSF_HOME_LIST:Ljava/util/List;

.field public final SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

.field public final am:Landroid/app/ActivityManager;

.field public final c:Landroid/content/Context;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public final mUserManager:Landroid/os/UserManager;

.field public final personaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public final pm:Landroid/content/pm/PackageManager;

.field public final semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final statusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/SeamLessSwitchHandler;->DEBUG:Z

    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    const-string v1, "android"

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    iput-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    const-string/jumbo v1, "com.android.settings"

    .line 26
    filled-new-array {v1}, [Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    iput-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->LAUNCHSF_HOME_LIST:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    .line 47
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 49
    const-string p2, "activity"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/app/ActivityManager;

    .line 57
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 59
    const-string/jumbo p2, "persona"

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 68
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 70
    const-string/jumbo p2, "user"

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/os/UserManager;

    .line 79
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mUserManager:Landroid/os/UserManager;

    .line 81
    const-class p2, Landroid/app/SemStatusBarManager;

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Landroid/app/SemStatusBarManager;

    .line 89
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    .line 91
    const-string/jumbo p2, "keyguard"

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroid/app/KeyguardManager;

    .line 100
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 102
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 104
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Landroid/app/ActivityManagerInternal;

    .line 110
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 115
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    const-class p1, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 119
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 125
    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 127
    return-void
.end method

.method public static isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "service.camera.running"

    .line 4
    const-string v1, "0"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "1"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string/jumbo v0, "com.sec.android.app.voicenote"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 48
    :goto_1
    return p0
.end method


# virtual methods
.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.category.INFO"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v4

    .line 29
    if-gtz v4, :cond_1

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.category.LAUNCHER"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    .line 44
    invoke-virtual {p0, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 47
    move-result-object v2

    .line 48
    :cond_1
    if-eqz v2, :cond_3

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    move-result p0

    .line 54
    if-gtz p0, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p0, Landroid/content/Intent;

    .line 59
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 62
    const/high16 p1, 0x10000000

    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 73
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 75
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 77
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 83
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 85
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    return-object p0

    .line 91
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method public final getLaunchUserId(I)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v4

    .line 31
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 37
    move v3, v0

    .line 38
    move v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-nez p1, :cond_2

    .line 42
    move v1, v2

    .line 43
    :cond_2
    if-eqz v3, :cond_3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 v1, -0x1

    .line 47
    :goto_1
    return v1
.end method

.method public final isPackageEnabled(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string/jumbo v3, "com.samsung.knox.securefolder"

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v3, :cond_0

    .line 15
    if-nez p2, :cond_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    return v2

    .line 21
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->LAUNCHSF_HOME_LIST:Ljava/util/List;

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return v2

    .line 35
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 38
    move-result-object p0

    .line 39
    const-wide/32 v3, 0xc0000

    .line 42
    invoke-interface {p0, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_2

    .line 48
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    if-eqz p0, :cond_2

    .line 54
    const/4 v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    return v2

    .line 64
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return v2

    .line 71
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    throw p0
.end method

.method public final isSecureFolderHidden()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "hide_secure_folder_flag"

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p0, v0, :cond_0

    .line 18
    move v1, v0

    .line 19
    :cond_0
    return v1
.end method

.method public final isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const-string/jumbo p0, "com.android.settings"

    .line 21
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 31
    const-string p0, "activity_task"

    .line 33
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 41
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->isQuickSwitchExceptionalCase(I)Z

    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 49
    const-string p0, "SeamLessSwitchHandler"

    .line 51
    const-string p1, "Exceptional case quick switch! securefolder keyguard"

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final launchFolderContainerOrHome(I)V
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 11
    move-result v1

    .line 12
    const/high16 v2, 0x10000

    .line 14
    const/high16 v3, 0x10000000

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const-string/jumbo v1, "com.samsung.knox.launcher.home.view.HomeActivity"

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo v1, "com.samsung.knox.securefolder.presentation.switcher.view.SecureFolderShortcutActivity"

    .line 33
    :goto_0
    const-string/jumbo v6, "com.samsung.knox.securefolder"

    .line 36
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "userId"

    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 47
    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 53
    const-string/jumbo v1, "quick_switch"

    .line 56
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const v1, 0xc000

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 73
    new-instance v2, Landroid/os/UserHandle;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 81
    move v4, p1

    .line 82
    :cond_2
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 85
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    new-instance v1, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;

    .line 99
    invoke-direct {v1, p0, p1}, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/SeamLessSwitchHandler;I)V

    .line 102
    const-wide/16 p0, 0x1f4

    .line 104
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    sput-object v6, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const-string p1, "android.intent.category.HOME"

    .line 112
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v0, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 127
    move-result-object p1

    .line 128
    if-nez p1, :cond_4

    .line 130
    return-void

    .line 131
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    .line 133
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 135
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 137
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 139
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    .line 147
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 152
    new-instance v1, Landroid/os/UserHandle;

    .line 154
    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 157
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 160
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 162
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 164
    sput-object p0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 166
    :goto_1
    return-void
.end method
