.class public final Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string p0, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iput-object p0, p1, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget p2, p1, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 50
    .line 51
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 p0, 0x0

    .line 68
    :goto_0
    iput-object p0, p1, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void
.end method
