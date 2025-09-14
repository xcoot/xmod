.class public final Lcom/android/server/autofill/ui/SaveUi$1;
.super Landroid/view/ContextThemeWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 3
    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0x800

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    const/high16 v1, 0x800000

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    new-instance v1, Landroid/content/ComponentName;

    .line 27
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 31
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 33
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    const-string v0, "SaveUi"

    .line 40
    if-nez v1, :cond_3

    .line 42
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 44
    if-eqz p0, :cond_2

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "Can not startActivity for save UI with intent="

    .line 50
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    const-string v1, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 81
    move-result-object v6

    .line 82
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 84
    const/4 v3, 0x0

    .line 85
    const/high16 v5, 0x3000000

    .line 87
    move-object v2, p0

    .line 88
    move-object v4, p1

    .line 89
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 92
    move-result-object v1

    .line 93
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 95
    if-eqz v2, :cond_4

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v3, "startActivity add save UI restored with intent="

    .line 102
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_4
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 117
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 120
    return-void
.end method
