.class public final Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    .line 3
    iget-object p1, p1, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mUserManager:Landroid/os/UserManager;

    .line 5
    const-string/jumbo p2, "com.android.settings"

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->sendBroadcastAsUserInternal(Ljava/lang/String;I)V

    .line 26
    :cond_0
    return-void
.end method
