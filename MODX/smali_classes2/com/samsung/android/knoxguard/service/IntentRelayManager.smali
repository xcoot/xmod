.class public final Lcom/samsung/android/knoxguard/service/IntentRelayManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOG:Z = false

.field public static final TAG:Ljava/lang/String; = "KG.IntentRelayManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "com.samsung.android.kgclient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    :cond_0
    const/16 p2, 0x20

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 18
    .line 19
    const-string v1, "com.samsung.android.knoxguard.STATUS"

    .line 20
    .line 21
    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo p2, "sends to KG "

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
