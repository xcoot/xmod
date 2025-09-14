.class public final Lcom/android/server/enterprise/email/EmailPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/EmailPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/EmailPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string p1, "android.intent.extra.user_handle"

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v0, "onUserRemoved() userId = "

    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string p2, "EmailPolicyService"

    .line 42
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 47
    const-string/jumbo p1, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    .line 50
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 57
    :cond_0
    return-void
.end method
