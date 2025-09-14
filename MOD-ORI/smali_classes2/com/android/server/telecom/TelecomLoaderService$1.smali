.class public final Lcom/android/server/telecom/TelecomLoaderService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    array-length p2, p1

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-ge v0, p2, :cond_0

    .line 24
    .line 25
    aget v1, p1, v0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
