.class public final Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;
.super Landroid/content/IIntentSender$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageArchiver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageArchiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p3, "android.content.pm.extra.UNARCHIVE_STATUS"

    .line 6
    .line 7
    const/4 p4, -0x1

    .line 8
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p1, "android.intent.extra.INTENT"

    .line 16
    .line 17
    const-class p3, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/content/Intent;

    .line 24
    .line 25
    const-string p3, "android.intent.extra.USER"

    .line 26
    .line 27
    const-class p4, Landroid/os/UserHandle;

    .line 28
    .line 29
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/os/UserHandle;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iget-object p3, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    .line 40
    .line 41
    iget-object p4, p3, Lcom/android/server/pm/PackageArchiver;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 44
    .line 45
    .line 46
    move-result p5

    .line 47
    iget-object p3, p3, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-interface {p3, p5}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p3, 0x0

    .line 65
    :goto_0
    iget-object p4, p4, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    const-class p5, Landroid/app/ActivityManager;

    .line 68
    .line 69
    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    check-cast p4, Landroid/app/ActivityManager;

    .line 74
    .line 75
    invoke-virtual {p4, p3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    const/16 p4, 0x64

    .line 80
    .line 81
    if-gt p3, p4, :cond_2

    .line 82
    .line 83
    const/high16 p3, 0x10000000

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method
