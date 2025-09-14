.class public final Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_5

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 24
    const-string p1, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p2

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz p2, :cond_3

    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-static {p1, p2, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 46
    move-result-object p1

    .line 47
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 49
    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    :cond_2
    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string p1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_5

    .line 66
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 68
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    .line 76
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    :cond_4
    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 91
    :cond_5
    :goto_0
    return-void
.end method
