.class public final Lcom/android/server/pm/ShortcutService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    const-string v0, "android.app.role.HOME"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2, p0, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Role holders for "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " changed. holders: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", UserId: "

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 72
    .line 73
    invoke-interface {p2}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    const-string p2, "android.app.role.SMS"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {p0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-boolean p1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z

    .line 96
    .line 97
    if-nez p1, :cond_1

    .line 98
    .line 99
    const-string p1, "com.truecaller"

    .line 100
    .line 101
    const/4 p2, 0x0

    .line 102
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->modifyAppState(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    :catch_0
    :cond_1
    return-void
.end method
